; Urien By RajaaBoy

;---------------------------------------------------------------------------
;Super Portrait
[Statedef 6969]
type     = A
movetype = I
physics  = N
velset = 11,0
ctrl     = 0
anim  = 6969
sprpriority = -1 

;This helps make the portrait stay in the same height no matter if the camera is scrolling up or not.
[State 2000, Stationary] 
type = PosSet
trigger1 = 1
y = 0-ceil(screenpos y - pos y)+-20

[State 6000]
type = VelAdd
trigger1 = Time >= 5 && Time <= 30
x = -.5

[State 6000]
type = VelAdd
trigger1 = Time >= 30
x = 3

[State 6000]
type = DestroySelf
trigger1 = Time = 50

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;=========================================================================
; Parry - Detect
;=========================================================================
[Statedef 915]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 915, Human Parry Type]
type = null
triggerall = !time && !root,ailevel
trigger1 = var(0) := -1
trigger1 = cond(root,command = "fwd" && root,statetype != A, 1 + 0 * (var(0) := 0), 1)
trigger1 = cond(root,command = "down" && root,statetype != A, 1 + 0 * (var(0) := 1), 1)
trigger1 = cond(root,command = "fwd" && root,statetype = A, 1 + 0 * (var(0) := 2), 1)

[state 915, AI Parry Type]
type = null
triggerall = !time && root,ailevel
trigger1 = var(0) := -1
trigger1 = cond(root,statetype != A, 1 + 0 * (var(0) := 0), 1)
trigger1 = cond(root,statetype != A && p2statetype = C, 1 + 0 * (var(0) := 1), 1)
trigger1 = cond(root,statetype = A, 1 + 0 * (var(0) := 2), 1)

[state 915, Fail-safe Parry Type]
type = null
trigger1 = 0 ; var(0) = 0 || var(0) = 1
trigger1 = var(0) := cond((root,stateno = [10, 11]), 1, 0)

[state 915, Fail-safe Parry Type]
type = null
trigger1 = var(0) = 0 || var(0) = 2
trigger1 = var(0) := cond(root,statetype = A, 2, 0)

;[state 915, Deactivate Parry]
;type = varset
;trigger1 = time >= cond(numhelper(4000), helper(4000),var(1), 8)
;trigger2 = facing != root,facing
;trigger3 = root,stateno != [160, 165]
;trigger3 = root,stateno != [910, 912]
;trigger3 = root,movetype != I || !root,ctrl
;var(1) = 1
;
;[state 915, Deactivate Parry]
;type = varset
;triggerall = !root,ailevel
;trigger1 = root,command = "back" || root,command = "holdback"
;trigger2 = time <= 3 && root,command = "holdfwd" && root,command = "holddown"
;trigger3 = time > 3 && (root,command = "holdfwd" || root,command = "holddown")
;trigger4 = time && (var(0) = 0 || var(0) = 2) && root,command = "fwd"
;trigger5 = time && var(0) = 1 && root,command = "down"
;var(1) = 1

[state 915, Change Animation]
type = changeanim
trigger1 = anim != stateno
value = stateno
;
;[state 915, Change Animation]
;type = changeanim
;trigger1 = var(1)
;value = 9999

[state 915, Root Bind]
type = bindtoroot
trigger1 = var(0) = 0
pos = const(size.ground.front) * 0.5 * root,const(size.xscale), -32 * root,const(size.yscale)

[state 915, Root Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = const(size.ground.front) * 0.5 * root,const(size.xscale), -32 * root,const(size.yscale)

[state 915, Root Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = const(size.ground.front) * 0.5 * root,const(size.xscale), -52 * root,const(size.yscale)
[state 915, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 915, Attack Distance]
type = attackdist
trigger1 = 1
value = 0

[state 915, Reversal]
type = reversaldef
trigger1 = !var(1)
trigger1 = var(0) = 0 || var(0) = 2
reversal.attr = SCA,AA
pausetime = 0, 16
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1stateno = 916

[state 915, Reversal]
type = reversaldef
trigger1 = !var(1)
trigger1 = var(0) = 1
reversal.attr = SC,AA
pausetime = 0, 16
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1stateno = 916

[state 915, Miss]
type = reversaldef
trigger1 = var(0) < 0 || var(1)
; trigger2 = root,stateno = [160, 165]
trigger2 = root,var(54) != [1, 2]
reversal.attr = 
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0

[state 915, Destroy Helper]
type = destroyself
trigger1 = time > cond(numhelper(4000), helper(4000),var(1) + 10, 18)
trigger2 = root,stateno != [160, 165]
trigger2 = root,stateno != [910, 912]
trigger2 = root,movetype != I || !root,ctrl
trigger3 = root,time <= 1 && root,stateno = [910, 912]

;=========================================================================
; Parry - Activated
;=========================================================================
[Statedef 916]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 916, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999
ignorehitpause = 1

[state 916, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0
ignorehitpause = 1

[state 916, Miss]
type = reversaldef
trigger1 = 1
reversal.attr = 
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0
ignorehitpause = 1

[state 916, Destroy Helper]
type = destroyself
trigger1 = root,stateno = [910, 912]
trigger2 = time > 1
ignorehitpause = 1

;=========================================================================
; Parry - Skill
;=========================================================================
[Statedef 917]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 917, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 917, Set State Type]
type = statetypeset
trigger1 = !time && root,statetype = S
statetype = S

[state 917, Set State Type]
type = statetypeset
trigger1 = !time && root,statetype = C
statetype = C

[state 917, Set State Type]
type = statetypeset
trigger1 = !time && root,statetype = A
statetype = A

[state 917, Parry Skill]
type = null
trigger1 = !time
trigger1 = var(0) := 32
trigger2 = var(0)
trigger2 = var(0) := var(0) - 1

[state 917, Destroy Helper]
type = destroyself
trigger1 = !var(0)
trigger2 = time
trigger2 = root,numhelper(917) > 1
trigger3 = root,stateno != [910, 913]
trigger3 = !root,ctrl

;=========================================================================
; SF3 Dust - No Bind
;=========================================================================
[Statedef 6000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6000, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7000
anim = 7000

[state 6000, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6000, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6000, Effect]
type = explod
trigger1 = time <= 12 && time % 3 = 0
ID = 0 + (time / 3)
anim = 6000 + ishelper(6001)
postype = left
pos = ceil(parent,screenpos x), ceil(parent,screenpos y)
random = 16, 8
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6000, Modify Effect]
type = modifyexplod
trigger1 = numexplod(0)
trigger1 = var(0) := var(0) + 1
trans = addalpha
alpha = 256 * (var(0) % 2 = 0), 256 - 256 * (var(0) % 2 = 0)
ID = 0

[state 6000, Modify Effect]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = var(1) := var(1) + 1
trans = addalpha
alpha = 256 * (var(1) % 2 = 0), 256 - 256 * (var(1) % 2 = 0)
ID = 1

[state 6000, Modify Effect]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = var(2) := var(2) + 1
trans = addalpha
alpha = 256 * (var(2) % 2 = 0), 256 - 256 * (var(2) % 2 = 0)
ID = 2

[state 6000, Modify Effect]
type = modifyexplod
trigger1 = numexplod(3)
trigger1 = var(3) := var(3) + 1
trans = addalpha
alpha = 256 * (var(3) % 2 = 0), 256 - 256 * (var(3) % 2 = 0)
ID = 3

[state 6000, Modify Effect]
type = modifyexplod
trigger1 = numexplod(4)
trigger1 = var(4) := var(4) + 1
trans = addalpha
alpha = 256 * (var(4) % 2 = 0), 256 - 256 * (var(4) % 2 = 0)
ID = 4

[state 6000, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Dust - Bind
;=========================================================================
[Statedef 6001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 7001, Parent Bind]
type = varset
trigger1 = !time
fvar(0) = parentdist x + 0 * (fvar(1) := parentdist y)

[state 6001, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7001
anim = 9999

[state 6001, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6001, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = -fvar(0), fvar(1)

[state 6001, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6001, Effect]
type = explod
trigger1 = time <= 12 && time % 3 = 0
ID = 0 + (time / 3)
anim = 6000 + ishelper(6001)
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
random = 16, 8
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
ownpal = 0
scale = 1.0, 1.0
sprpriority = cond(random < 496, 4, -4)

[state 6001, Modify Effect]
type = modifyexplod
trigger1 = numexplod(0)
trigger1 = var(0) := var(0) + 1
trans = addalpha
alpha = 256 * (var(0) % 2 = 0), 256 - 256 * (var(0) % 2 = 0)
ID = 0

[state 6001, Modify Effect]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = var(1) := var(1) + 1
trans = addalpha
alpha = 256 * (var(1) % 2 = 0), 256 - 256 * (var(1) % 2 = 0)
ID = 1

[state 6001, Modify Effect]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = var(2) := var(2) + 1
trans = addalpha
alpha = 256 * (var(2) % 2 = 0), 256 - 256 * (var(2) % 2 = 0)
ID = 2

[state 6001, Modify Effect]
type = modifyexplod
trigger1 = numexplod(3)
trigger1 = var(3) := var(3) + 1
trans = addalpha
alpha = 256 * (var(3) % 2 = 0), 256 - 256 * (var(3) % 2 = 0)
ID = 3

[state 6001, Modify Effect]
type = modifyexplod
trigger1 = numexplod(4)
trigger1 = var(4) := var(4) + 1
trans = addalpha
alpha = 256 * (var(4) % 2 = 0), 256 - 256 * (var(4) % 2 = 0)
ID = 4

[state 6001, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Spreading Dust
;=========================================================================
[Statedef 6010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6010, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7010
anim = 9999

[state 6010, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6010, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6010, Effect]
type = explod
trigger1 = !time
ID = 0
anim = 6010
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6010, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Spreading Dust 2
;=========================================================================
[Statedef 6011]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6011, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7010
anim = 9999

[state 6011, Root State]
type = null
triggerall = !time
; Magnetic Storm
trigger1 = parent,stateno = 3000
trigger1 = var(0) := -72 || var(1) := 72

[state 6011, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6011, Parent Bind]
type = bindtoparent
triggerall = root,var(59)
; Magnetic Storm
trigger1 = parent,stateno = 3000
trigger1 = parent,animelemtime(15) < 0 || parent,anim = 3005
pos = 0, 8

[state 6011, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6011, Destroy Explod]
type = removeexplod
triggerall = root,var(59)
; Magnetic Storm
trigger1 = parent,stateno = 3000
trigger1 = parent,animelemtime(15) < 0 || parent,anim = 3005
trigger1 = time % 6 = 0

[state 6011, Effect]
type = explod
triggerall = root,var(59)
triggerall = !numexplod(0)
; Magnetic Storm
trigger1 = parent,stateno = 3000
trigger1 = parent,animelemtime(15) < 0 || parent,anim = 3005
ID = 0
anim = 6011
postype = p1
pos = var(0), 0
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6011, Effect]
type = explod
triggerall = root,var(59)
triggerall = !numexplod(1)
; Magnetic Storm
trigger1 = parent,stateno = 3000
trigger1 = parent,animelemtime(15) < 0 || parent,anim = 3005
ID = 1
anim = 6011
postype = p1
pos = var(1), 0
bindtime = -1
facing = -1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6011, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Dash Dust
;=========================================================================
[Statedef 6015]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6015, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7015
anim = 9999

[state 6015, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6015, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6015, Effect]
type = explod
trigger1 = !time
ID = 0
anim = 6015
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6015, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Dash Dust 2
;=========================================================================
[Statedef 6016]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6016, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7015
anim = 9999

[state 6016, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6016, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6016, Effect]
type = explod
trigger1 = !time
ID = 0
anim = 6016
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
ownpal = 0
scale = 1.0, 1.0
sprpriority = -1

[state 6016, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Dash Dust 3
;=========================================================================
[Statedef 6017]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6017, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7015
anim = 9999

[state 6017, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6017, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6017, Effect]
type = explod
trigger1 = !time
ID = 0
anim = 6017
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6017, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Dash Dust 4 (loop)
;=========================================================================
[Statedef 6018]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6018, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7015
anim = 9999

[state 6018, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6018, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6018, Effect]
type = explod
trigger1 = parent,stateno = -1
trigger1 = !time
ID = 0
anim = 6018
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
removetime = 32 ; change accordingly
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6018, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Ground Pressure
;=========================================================================
[Statedef 6020]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6020, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7010
anim = 9999

[state 6020, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6020, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6020, Effect]
type = explod
trigger1 = !time
ID = 0
anim = 6020 + ishelper(6021)
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6020, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Pressure Wave
;=========================================================================
[Statedef 6025]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6025, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7010
anim = 9999

[state 6025, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6025, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6025, Left Pressure Wave]
type = explod
trigger1 = !time
trigger1 = ishelper(6025) || ishelper(6026)
ID = 0
anim = 6025
postype = left
pos = ceil((screenpos x - 8 * facing) * root,const(size.xscale)), ceil((screenpos y - 4) * root,const(size.yscale))
bindtime = 1
facing = facing
ownpal = 0
scale = 0.8, 0.8
sprpriority = 4
supermovetime = -1
pausemovetime = -1

[state 6025, Right Pressure Wave]
type = explod
trigger1 = !time
trigger1 = ishelper(6025) || ishelper(6027)
ID = 0
anim = 6026
postype = left
pos = ceil((screenpos x - 8 * facing) * root,const(size.xscale)), ceil((screenpos y - 4) * root,const(size.yscale))
bindtime = 1
facing = facing
ownpal = 0
scale = 0.8, 0.8
sprpriority = 4
supermovetime = -1
pausemovetime = -1

[state 6025, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Smoke Puff
;=========================================================================
[Statedef 6030]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6030, Change to Custom Effect]
type = null ; changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7010
anim = 9999

[state 6030, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6030, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6030, Effect]
type = explod
trigger1 = !time
ID = 0
anim = 6030
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
bindtime = 1
facing = facing
ownpal = 0
scale = 1.0, 1.0
sprpriority = 4

[state 6030, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; SF3 Gravel
;=========================================================================
[Statedef 6035]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4 - 8 * (random % 2)

[state 6035, Change Animation]
type = changeanim
trigger1 = !time
value = 6035 + 5 * (random % 3)

[state 6035, Set Velocity]
type = changeanim
trigger1 = pos y + vel y > random % 4
value = anim + 1

[state 6035, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) + random % 32, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) + random % 40, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) + random % 40, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) + random % 40, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) - random % 40, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) - random % 40, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Gravel]
type = helper
trigger1 = !time && ishelper(6035)
name = "Gravel"
ID = 6045
stateno = 6035
postype = left
pos = floor(screenpos x) - random % 40, 0
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 6035, Set Velocity]
type = velset
trigger1 = !time
x = cond(rootdist x < 0, random % 128 / 64.0, random % 128 / -64.0)
y = -4.0 - random % 12 * 0.25

[state 6035, Increment Velocity]
type = veladd
trigger1 = time && anim % 5 = 0
y = 0.5859375

[state 6035, Set Position]
type = posset
trigger1 = anim % 5 = 1
y = 0.0

[state 6035, Set Velocity]
type = velset
trigger1 = anim % 5 = 1
x = 0.0
y = 0.0

[state 6035, Destroy]
type = destroyself
trigger1 = anim % 5 = 1 && !animtime

;=========================================================================
; SF3 Slam Pressure
;=========================================================================
[Statedef 6065]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6065, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7065
anim = 7065

[state 6065, Change Animation]
type = changeanim
trigger1 = !time
value = 6065

[state 6065, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6065, Angle]
type = angledraw
trigger1 = ishelper(6065)
value = 90

[state 6065, Transparency]
type = trans
trigger1 = 0
trans = addalpha
alpha = 256, 256

[state 6065, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; SF3 Hitspark
;=========================================================================
[Statedef 6100]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; Var(5)'s values:
; 00 - 03 - Misc. Hit || 100 - 103 = Reversed
; 10 - 19 - Normal Hit || 110 - 119 = Reversed
; 20 - 28 - Special Hit || 120 - 128 = Reversed
; 30 - 38 - Super Hit || 130 - 138 = Reversed
; 40 - Circle Hit
; 41 - Pressure Hit
; 42 - Twist Hit
; 43 - 44 - Taunt Hit || 143 - 144 = Reversed
; 45 - Pulse Hit

[state 6100, Spark Type]
type = varset
trigger1 = !time
trigger1 = !ishelper(6143)
var(5) = parent,var(5)

[state 6100, Spark Type]
type = varset
trigger1 = ishelper(6143)
var(5) = 43 + random % 2

[state 6100, Destroy Helper]
type = destroyself
trigger1 = var(5) < 0

[state 6100, Change to Custom Effect]
type = changestate
trigger1 = !ishelper(6143) && var(5) % 100 != [43, 44]
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7100
anim = 7100

[state 6100, Change Animation]
type = changeanim
trigger1 = !time
value = 6100 + var(5) - 100 * (var(5) >= 100)

[state 6100, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6100, Turn]
type = turn
trigger1 = !time && var(5) >= 100

[state 6100, Angle]
type = angledraw
trigger1 = var(5) % 100 = [43, 44]
value = cond(!var(0), var(0) := 15 * random % 24, var(0))

[state 6100, Angle]
type = angledraw
trigger1 = 0 ; trigger for zoom-in code
scale = 2.0, 2.0

[state 6100, Transparency]
type = trans
trigger1 = 0 ; no need for transparency for SF3 hitsparks
trans = addalpha
alpha = 256, 256

[state 6100, Set Velocity]
type = velset
trigger1 = !time
trigger1 = var(5) % 100 = [43, 44]
x = 0.5 + 0.5 * (random % 4)
y = -0.5 - 0.5 * (random % 4)

[state 6100, Saliva]
type = helper
triggerall = !time
triggerall = !ishelper(6143)
trigger1 = var(5) % 100 = [43, 44]
name = "Saliva"
stateno = 6100
ID = 6143
postype = p1
pos = cond(random < 496, 4 + random % 4, -4 - random % 4), cond(random < 496, 4 + random % 4, -4 - random % 4)
ownpal = 0
keyctrl = 0

[state 6100, Saliva]
type = helper
triggerall = !time
triggerall = !ishelper(6143)
trigger1 = var(5) % 100 = [43, 44]
name = "Saliva"
stateno = 6100
ID = 6143
postype = p1
pos = cond(random < 496, 4 + random % 4, -4 - random % 4), cond(random < 496, 4 + random % 4, -4 - random % 4)
ownpal = 0
keyctrl = 0

[state 6100, Destroy Helper]
type = destroyself
trigger1 = !animtime || numhelper(6100) > 32

;=========================================================================
; SF3 Guardspark
;=========================================================================
[Statedef 6105]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; Var(6)'s values:
; 0 - Normal Hit
; 1 - Special Hit
; 2 - Super Hit

[state 6105, Spark Type]
type = varset
trigger1 = !time
var(6) = cond(parent,var(6) = 2, 1, parent,var(6))

[state 6105, Destroy Helper]
type = destroyself
trigger1 = var(6) < 0

[state 6105, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7105
anim = 7150

[state 6105, Change Animation]
type = changeanim
trigger1 = !time
value = 6150 + 5 * var(6)

[state 6105, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6105, Angle]
type = angledraw
trigger1 = 0 ; trigger for zoom-in code
scale = 2.0, 2.0

[state 6105, Transparency]
type = trans
trigger1 = 0 ; no need for transparency for SF3 hitsparks
trans = addalpha
alpha = 256, 256

[state 6105, Destroy Helper]
type = destroyself
trigger1 = !animtime || numhelper(6100) > 32

;=========================================================================
; SF3 Burnsparks
;=========================================================================
[Statedef 6165]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6165, Bind to Player]
type = varset
trigger1 = !time
var(58) = parent,var(58)

[state 6165, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7165
anim = 9999

[state 6165, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6165, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6165, Flame 1]
type = explod
trigger1 = random < 496
trigger1 = !time && playeridexist(var(58))
ID = 0
anim = 6165
postype = left
; pos = ceil(playerid(var(58)),screenpos x - playerid(var(58)),const(size.ground.back) * playerid(var(58)),facing), ceil(playerid(var(58)),screenpos y + playerid(var(58)),const(size.head.pos.y) * 0.75)
pos = ceil(playerid(var(58)),screenpos x + (fvar(0) := playerid(var(58)),const(size.ground.front) * cos(random))), ceil(playerid(var(58)),screenpos y + (fvar(1) := playerid(var(58)),const(size.head.pos.y) * 0.75 + 16.0 * cos(random)))
bindtime = -1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6165, Modify Flame 1]
type = modifyexplod
trigger1 = numexplod(0)
postype = left
pos = ceil(playerid(var(58)),screenpos x + fvar(0)), ceil(playerid(var(58)),screenpos y + fvar(1))
trans = addalpha
alpha = 256 - 256 * (time % 3 = 0), 256 ; 0 + 256 * (time % 2 = 0)
ID = 0

[state 6165, Flame 2]
type = explod
trigger1 = !time && playeridexist(var(58))
ID = 1
anim = 6170
postype = left
; pos = ceil(playerid(var(58)),screenpos x + playerid(var(58)),const(size.ground.front) * playerid(var(58)),facing), ceil(playerid(var(58)),screenpos y + playerid(var(58)),const(size.mid.pos.y) * 0.75)
pos = ceil(playerid(var(58)),screenpos x + (fvar(2) := playerid(var(58)),const(size.ground.front) * cos(random))), ceil(playerid(var(58)),screenpos y + (fvar(3) := playerid(var(58)),const(size.mid.pos.y) * 0.5  + 16.0 * cos(random)))
bindtime = -1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6165, Modify Flame 2]
type = modifyexplod
trigger1 = numexplod(1)
postype = left
pos = ceil(playerid(var(58)),screenpos x + fvar(2)), ceil(playerid(var(58)),screenpos y + fvar(3))
trans = addalpha
alpha = 256 - 256 * (time % 3 = 0), 256 ; 0 + 256 * (time % 2 = 0)
ID = 1

[state 6165, Flame 3]
type = explod
trigger1 = !time && playeridexist(var(58))
ID = 2
anim = 6170
postype = left
; pos = ceil(playerid(var(58)),screenpos x - playerid(var(58)),const(size.ground.back) * playerid(var(58)),facing), ceil(playerid(var(58)),screenpos y + playerid(var(58)),const(size.mid.pos.y) * 0.5)
pos = ceil(playerid(var(58)),screenpos x + (fvar(4) := playerid(var(58)),const(size.ground.front) * cos(random))), ceil(playerid(var(58)),screenpos y + (fvar(5) := playerid(var(58)),const(size.mid.pos.y) * 0.5  + 16.0 * cos(random)))
bindtime = -1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6165, Modify Flame 3]
type = modifyexplod
trigger1 = numexplod(2)
postype = left
pos = ceil(playerid(var(58)),screenpos x + fvar(4)), ceil(playerid(var(58)),screenpos y + fvar(5))
trans = addalpha
alpha = 256 - 256 * (time % 3 = 0), 256 ; 0 + 256 * (time % 2 = 0)
ID = 2

[state 6165, Destroy]
type = removeexplod
trigger1 = !numexplod || time >= 56
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H

[state 6165, Destroy]
type = destroyself
trigger1 = !numexplod || time >= 56
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H

;=========================================================================
; SF3 Electricsparks
;=========================================================================
[Statedef 6175]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6175, Bind to Player]
type = varset
trigger1 = !time
var(58) = parent,var(58)

[state 6175, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7175
anim = 9999

[state 6175, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6175, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6175, Sound]
type = playsnd
trigger1 = time <= 14
trigger1 = time % 7 = 0
value = 3, 3
volumescale = 100
channel = 1

[state 6175, Electricity]
type = explod
trigger1 = !time && playeridexist(var(58))
ID = 0
anim = 6175
postype = left
pos = ceil(playerid(var(58)),screenpos x + playerid(var(58)),const(size.mid.pos.x)), ceil(playerid(var(58)),screenpos y + playerid(var(58)),const(size.mid.pos.y))
bindtime = -1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6175, Modify Electricity]
type = modifyexplod
trigger1 = numexplod(0)
postype = left
pos = ceil(playerid(var(58)),screenpos x + playerid(var(58)),const(size.mid.pos.x)), ceil(playerid(var(58)),screenpos y + playerid(var(58)),const(size.mid.pos.y))
ID = 0

[state 6175, Destroy]
type = removeexplod
trigger1 = !numexplod || time > 32
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H || playerid(var(58)),statetype = L
trigger4 = time && numhelper(6175) > numenemy

[state 6175, Destroy]
type = destroyself
trigger1 = !numexplod || time > 32
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H || playerid(var(58)),statetype = L
trigger4 = time && numhelper(6175) > numenemy

;=========================================================================
; SF3 EX Effect
;=========================================================================
[StateDef 6200]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 6200, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7200
anim = 7200

[state 6200, Change Animation]
type = changeanim
trigger1 = !time
value = 6200

[state 6200, Special Effects]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6200, Angle]
type = angledraw
trigger1 = 1
scale = 1.0, 1.0

[state 6200, Sound]
type = playsnd
trigger1 = !time
value = 6200, 0
volumescale = 100

[state 6200, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; SF3 Super Art Charge
;=========================================================================
[StateDef 6205]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6205, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7205
anim = 7205

[state 6205, Root State]
type = null
triggerall = !time
triggerall = var(0) := parent,stateno || 1
trigger1 = var(0) = 3000
trigger1 = var(1) := 51 || var(2) := 16 || var(3) := -88 || var(4) := 1 || var(5) := 0 ; I
trigger2 = var(0) = 3100
trigger2 = var(1) := 53 || var(2) := 60 || var(3) := -76 || var(4) := 2 || var(5) := 0 ; II
trigger3 = var(0) = 3200
trigger3 = var(1) := 55 || var(2) := 16 || var(3) := -88 || var(4) := 3 || var(5) := 0 ; III

[state 6205, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6205, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = var(2) * root,const(size.xscale), var(3) * root,const(size.yscale)

[state 6205, Background Effect]
type = bgpalfx
trigger1 = time = [1, 50]
time = 1
mul = 128, 128, 128
color = 256

[state 6205, Sound]
type = playsnd
trigger1 = !time
value = 6205, 0
volumescale = 100

[state 6205, Streaks]
type = explod
trigger1 = time = var(5)
anim = 6205
ID = 0
postype = left
pos = ceil(root,screenpos x + var(2) * root,facing), ceil(root,screenpos y + var(3))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
pausemovetime = -1
supermovetime = -1

[state 6205, Modify Streaks]
type = modifyexplod
trigger1 = numexplod(0)
postype = left
pos = ceil(root,screenpos x + var(2) * root,facing), ceil(root,screenpos y + var(3))
ID = 0

[state 6205, Horizontal Lightning]
type = explod
trigger1 = time = var(5) + 32
anim = 6210
ID = 1
postype = left
pos = 160, ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (root,screenpos y + var(3)))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
pausemovetime = -1
supermovetime = -1

[state 6205, Vertical Lightning]
type = explod
trigger1 = time = var(5) + 43
anim = 6215
ID = 2
postype = left
pos = ceil(root,screenpos x), ceil(root,screenpos y - root,pos y)
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0, 1.0
sprpriority = 5
pausemovetime = -1
supermovetime = -1

[state 6205, Destroy Helper]
type = destroyself
trigger1 = !numexplod && time >= var(5) || root,stateno != var(0)
trigger2 = root,movetype = H || !root,var(59) || time && numhelper(6205) > 1

;=========================================================================
; SF3 Normal KO
;=========================================================================
[StateDef 6225]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536


[state 7230, Sound]
type = playsnd
trigger1 = !time
value = 6225, 0
volumescale = 100

[state 6225, Destroy Explod]
type = removeexplod
trigger1 = time && numhelper(6225) > 1

[state 6225, Destroy Helper]
type = destroyself
trigger1 = time && numhelper(6225) > 1

[state 6225, Change to Custom Effect]
type = null ; changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7225
anim = 9999

[state 6225, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6225, Pause]
type = pause
trigger1 = !time
time = 90
movetime = 90

[state 6225, Pause]
type = pause
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256
trigger1 = playerid(root,var(58)),gethitvar(hitshaketime)
time = 1
movetime = 1

[state 6225, Pause]
type = varadd
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256 && time % 9 = 1
trigger1 = playerid(root,var(58)),statetype != L && playerid(root,var(58)),stateno != 5150
var(0) = 1
[state 6225, Pause]
type = pause
trigger1 = var(0)
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256 && time % var(0) = 0
trigger1 = playerid(root,var(58)),statetype != L && playerid(root,var(58)),stateno != 5150
time = 1
movetime = 1

[state 6225, Sound]
type = playsnd
trigger1 = !time && parent,var(3) = [200, 330]
value = 200, parent,var(3) + 6000
volumescale = 100

[state 6225, Sound]
type = playsnd
trigger1 = !time
value = 6225, 0
volumescale = 100

[state 6225, Shake]
type = envshake
trigger1 = !time
time = 1
ampl = 0
freq = 0

[state 6225, KO Message]
type = explod
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(11) != 2, 1)
anim = 6235
ID = 6235
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
bindtime = -1
facing = 1
ownpal = 0
ontop = 1
scale = 0.5, 0.5 * (1.33 * gameheight / gamewidth)
sprpriority = 65536
supermovetime = -1
pausemovetime = -1

[state 6225, Modify KO Message]
type = modifyexplod
trigger1 = numexplod(6235)
trigger1 = time > 90
trans = addalpha
alpha = 256 - 16 * (time - 90), 16 * (time - 90)

[state 6225, Destroy Explod]
type = removeexplod
trigger1 = p2life || time > 106

[state 6225, Destroy Helper]
type = destroyself
trigger1 = p2life

;=========================================================================
; SF3 Super Art KO
;=========================================================================
[StateDef 6230]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 7230, Sound]
type = playsnd
trigger1 = !time
value = 6225, 0
volumescale = 100

[state 7230, Sound]
type = playsnd
trigger1 = !time
value = 7225, 0
volumescale = 100
[state 7230, Sound]
type = playsnd
trigger1 = !time
value = 7225, 0
volumescale = 100

[state 6230, Destroy Explod]
type = removeexplod
trigger1 = time && numhelper(6225) > 1

[state 6230, Destroy Helper]
type = destroyself
trigger1 = time && numhelper(6225) > 1

[state 6230, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 7230
anim = 9999

[state 6230, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6230, Special Effect]
type = assertspecial
trigger1 = time <= 90
flag = nofg

[state 6230, Pause]
type = pause
trigger1 = !time
time = 90
movetime = 90

[state 6230, Pause]
type = pause
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256
trigger1 = playerid(root,var(58)),gethitvar(hitshaketime)
time = 1
movetime = 1

[state 6230, Pause]
type = varadd
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256 && time % 9 = 1
trigger1 = playerid(root,var(58)),statetype != L && playerid(root,var(58)),stateno != 5150
var(0) = 1
[state 6230, Pause]
type = pause
trigger1 = var(0)
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256 && time % var(0) = 0
trigger1 = playerid(root,var(58)),statetype != L && playerid(root,var(58)),stateno != 5150
time = 1
movetime = 1

[state 6230, Sound]
type = playsnd
trigger1 = !time && parent,var(3) = [200, 330]
value = 200, parent,var(3) + 6000
volumescale = 100

[state 6230, Shake]
type = envshake
trigger1 = !time
time = 1
ampl = 0
freq = 0

[state 6230, KO Background]
type = explod
trigger1 = !time
anim = 6225
ID = 0
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 104
facing = 1
ownpal = 0
scale = 1.0, 1.0714285714285714285714285714286 * (1.33 * gameheight / gamewidth)
sprpriority = -65536
pausemovetime = -1
supermovetime = -1

[state 6230, White 1]
type = explod
trigger1 = !time
anim = 6226
ID = 1
postype = left
pos = 0, ceil((1.33 * gameheight / gamewidth) * 0)
bindtime = -1
removetime = 20
facing = 1
ownpal = 0
scale = 1.0, 1.0 * (1.33 * gameheight / gamewidth)
sprpriority = -65535
pausemovetime = -1
supermovetime = -1

[state 6230, Modify White 1]
type = modifyexplod
trigger1 = numexplod(1)
trans = addalpha
alpha = cond(time <= 4 || (time = [10, 14]) || time = 20, 256, 0), cond(time <= 4 || (time = [10, 14]) || time = 20, 0, 256)
ID = 1

[state 6230, Particles]
type = explod
trigger1 = !time || time = 10 || time = 20 || time = 30 || time = 40
anim = 6230
ID = 2
postype = left
pos = 0 + 320 * (time = 10 || time = 30 || time = 40), ceil((1.33 * gameheight / gamewidth) * 240 * (time = 20 || time = 30 || time = 40))
bindtime = -1
removetime = 96 - time
facing = 1 - 2 * (time = 10 || time = 30 || time = 40)
vfacing = 1 - 2 * (time = 20 || time = 30 || time = 40)
ownpal = 0
scale = 0.5, 0.5 * (1.33 * gameheight / gamewidth)
sprpriority = -65534
pausemovetime = -1
supermovetime = -1

[state 6230, Modify Particles]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = time > 64
trans = addalpha
alpha = 256 - 16 * (time - 64), 256
ID = 2

[state 6230, KO Text]
type = explod
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(11) != 2, 1)
anim = 6235
ID = 3
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5, 0.5 * (1.33 * gameheight / gamewidth)
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6230, White 2]
type = explod
trigger1 = time = 32
anim = 6226
ID = 4
postype = left
pos = 0, ceil((1.33 * gameheight / gamewidth) * 0)
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0, 1.0 * (1.33 * gameheight / gamewidth)
sprpriority = -65535
pausemovetime = -1
supermovetime = -1

[state 6230, Modify White 1]
type = modifyexplod
trigger1 = numexplod(4)
trans = addalpha
alpha = 4 * (time - 32), 256 - 4 * (time - 32)
ID = 4

[state 6230, Modify White 1Effects]
type = modifyexplod
trigger1 = time > 104
trans = addalpha
alpha = 256 - 16 * (time - 104), 16 * (time - 104)
ID = -1

[state 6230, Destroy Explod]
type = removeexplod
trigger1 = p2life || time > 120

[state 6230, Destroy Helper]
type = destroyself
trigger1 = p2life

;=========================================================================
; SF3 Score System
;=========================================================================
[Statedef 6300]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6300, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(5), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6300, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(5), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6300, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6300, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -8

;========================< Initialize Score System >========================

[state 6300, Position & Size of Score System Numbers]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(6), cond(teamside = 1, 104, 256)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(7), 0) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(0), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(1), 1.0)

;========================< Calculate Unique Score >========================

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
trigger1 = root,stateno = [200, 699]
trigger1 = root,movehit = 1
var(20) = 100 + 100 * ceil((root,stateno - 5 * (root,stateno % 10 = 5) - 30 * (root,stateno % 100 >= 30)) % 100 / 10)

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
trigger1 = root,stateno = [700, 710]
trigger1 = root,movehit = 1
var(20) = 100

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
trigger1 = root,stateno = 820
trigger1 = !root,animelemtime(10)
var(20) = 100

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
trigger1 = root,stateno = 830 || root,stateno = 840
trigger1 = !root,animelemtime(16)
var(20) = 300

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
trigger1 = root,stateno = 1100 || root,stateno = 1150
trigger1 = root,movehit = 1
var(20) = 300 - 100 * (root,anim = 1100)

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
trigger1 = root,stateno = 1200 || root,stateno = 1250
trigger1 = root,movehit = 1
var(20) = 300 - 100 * (root,anim = 1200)

[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
triggerall = root,stateno = 3000
triggerall = root,movehit = 1
trigger1 = root,animelemtime(6) >= 0 && root,animelemtime(8) < 0
trigger2 = root,animelemtime(17) >= 0 && root,animelemtime(19) < 0
var(20) = 100 
[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
triggerall = root,stateno = 3000
triggerall = root,movehit = 1
trigger1 = root,animelemtime(11) >= 0 && root,animelemtime(14) < 0
trigger2 = root,animelemtime(22) >= 0 && root,animelemtime(25) < 0
var(20) = 200 
[state 6300, Increase Score]
type = parentvaradd
triggerall = !var(59) && root,var(59)
triggerall = root,stateno = 3000
triggerall = root,movehit = 1
trigger1 = root,animelemtime(27) >= 0
var(20) = 400 

;========================< Prevent Score from Going out of Bounds >========================

[state 6300, Limit Score]
type = parentvarset
trigger1 = root,var(20) != [0, 99999999] ; 2147483647 - highest number possible
var(20) = cond(root,var(20) > 99999999, 99999999, 0)

;========================< Detect Place Values >========================

[state 6300, Place Values]
type = null
trigger1 = var(02) := floor(abs(root,var(20)) / 1) % 10 || 1
trigger1 = var(03) := floor(abs(root,var(20)) / 10) % 10 || 1
trigger1 = var(04) := floor(abs(root,var(20)) / 100) % 10 || 1
trigger1 = var(05) := floor(abs(root,var(20)) / 1000) % 10 || 1
trigger1 = var(06) := floor(abs(root,var(20)) / 10000) % 10 || 1
trigger1 = var(07) := floor(abs(root,var(20)) / 100000) % 10 || 1
trigger1 = var(08) := floor(abs(root,var(20)) / 1000000) % 10 || 1
trigger1 = var(09) := floor(abs(root,var(20)) / 10000000) % 10 || 1
trigger1 = var(10) := floor(abs(root,var(20)) / 100000000) % 10 || 1
trigger1 = var(11) := floor(abs(root,var(20)) / 1000000000) % 10 || 1

;========================< Display Score on Screen >========================

[state 6300, Reset]
type = removeexplod
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)

[state 6300, Ones]
type = explod
triggerall = !numexplod(0)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(2)
ID = 0
postype = left
pos = ceil((fvar(36) - 0) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Tens]
type = explod
triggerall = !numexplod(1)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(3)
ID = 1
postype = left
pos = ceil((fvar(36) - 8) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Hundreds]
type = explod
triggerall = !numexplod(2) && (root,var(20) >= 100 || root,var(20) <= -100)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(4)
ID = 2
postype = left
pos = ceil((fvar(36) - 16) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Thousands]
type = explod
triggerall = !numexplod(3) && (root,var(20) >= 1000 || root,var(20) <= -1000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(5)
ID = 3
postype = left
pos = ceil((fvar(36) - 24) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Ten Thousands]
type = explod
triggerall = !numexplod(4) && (root,var(20) >= 10000 || root,var(20) <= -10000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(6)
ID = 4
postype = left
pos = ceil((fvar(36) - 32) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Hundred Thousands]
type = explod
triggerall = !numexplod(5) && (root,var(20) >= 100000 || root,var(20) <= -100000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(7)
ID = 5
postype = left
pos = ceil((fvar(36) - 40) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Millions]
type = explod
triggerall = !numexplod(6) && (root,var(20) >= 1000000 || root,var(20) <= -1000000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(8)
ID = 6
postype = left
pos = ceil((fvar(36) - 48) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Ten Millions]
type = explod
triggerall = !numexplod(7) && (root,var(20) >= 10000000 || root,var(20) <= -10000000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(9)
ID = 7
postype = left
pos = ceil((fvar(36) - 56) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Hundred Millions]
type = explod
triggerall = !numexplod(8) && (root,var(20) >= 100000000 || root,var(20) <= -100000000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(10)
ID = 8
postype = left
pos = ceil((fvar(36) - 64) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Billions]
type = explod
triggerall = !numexplod(9) && (root,var(20) >= 1000000000 || root,var(20) <= -1000000000)
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6300 + var(11)
ID = 9
postype = left
pos = ceil((fvar(36) - 72) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6300, Minus]
type = explod
triggerall = !numexplod(10) && root,var(20) < 0
trigger1 = roundstate < 4 && (!time || var(0) != root,var(20)) || cond(numhelper(6575), helper(6575),fvar(5) = 20, 0)
trigger2 = cond(numhelper(6305), cond(numhelper(floor(helper(6305),fvar(0))), helper(floor(helper(6305),fvar(0))),time <= 1, 0), 0)
trigger3 = cond(numhelper(6306), cond(numhelper(floor(helper(6306),fvar(0))), helper(floor(helper(6306),fvar(0))),time <= 1, 0), 0)
trigger4 = cond(numhelper(6307), cond(numhelper(floor(helper(6307),fvar(0))), helper(floor(helper(6307),fvar(0))),time <= 1, 0), 0)
trigger5 = numhelper(6310000)
anim = 6312
ID = 10
postype = left
pos = ceil((fvar(36) + 5 - 8 * numexplod) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = fvar(38), fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Sounds and Special Effects >========================

[state 6300, Detect Score Change]
type = varset
trigger1 = 1
var(0) = root,var(20)

[state 6300, Reset Controller Limiter]
type = varset
trigger1 = 1
var(59) = 0

[state 6300, Controller Limiter]
type = varset
trigger1 = !var(59) && root,movehit = 1 ; && root,stateno = [200, 699]
var(59) = 1

;========================< Reset Score System >========================

[state 6300, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6300, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Extra Score 1
;=========================================================================
[Statedef 6305]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6305, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(8) && !helper(4000),var(37), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6305, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(8) && !helper(4000),var(37), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6305, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6305, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -12

;========================< Calculate Extra Score >========================

[state 6305, Cheater Flag]
type = varset
triggerall = sysvar(1) - p2life > 0
trigger1 = roundstate >= 3 && !playeridexist(root,var(58))
trigger2 = numenemy
trigger2 = enemynear,stateno = 5030 ; && enemynear,time <= 1
trigger2 = enemynear,hitover && enemynear,prevstateno != [5000, 5999]
sysvar(0) = 1

[state 6305, Cheater Flag]
type = varset
trigger1 = numenemy
sysvar(1) = p2life

[state 6305, Read Queue]
type = varset
trigger1 = 1
fvar(1) = 0

[state 6305, Read Queue]
type = varset
trigger1 = !numhelper(floor(fvar(0)))
trigger1 = cond(numhelper(6306), !numhelper(floor(helper(6306),fvar(0))), 1)
trigger1 = cond(numhelper(6307), !numhelper(floor(helper(6307),fvar(0))), 1)
trigger2 = !fvar(0)
trigger2 = cond(numhelper(6306), !helper(6306),fvar(0), 1)
trigger2 = cond(numhelper(6307), !helper(6307),fvar(0), 1)
fvar(1) = 1

[state 6305, Clog Queue]
type = varset
trigger1 = sysvar(0)
trigger2 = cond(numhelper(4000), helper(4000),var(37), 1)
trigger2 = root,var(51) >= 2
fvar(1) = 0

;========================< Cheater >========================
[state 6305, Cheater]
type = varset
trigger1 = roundstate >= 3 && !playeridexist(root,var(58))
trigger2 = numenemy
trigger2 = enemynear,stateno = 5030 && enemynear,time <= 1
trigger2 = enemynear,hitover && enemynear,prevstateno != [5000, 5999]
trigger3 = sysvar(0)
var(0) = -root,var(20)

[state 6305, Cheater]
type = helper
triggerall = fvar(1) = 1 || sysvar(0)
trigger1 = winko && roundstate >= 4
trigger1 = var(0)
name = "Cheater"
ID = floor(fvar(0) := 6310000) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Combo Bonus >========================
[state 6305, Combo Bonus]
type = varadd
triggerall = cond(numhelper(4000), helper(4000),var(37), 1)
trigger1 = root,stateno = [1000, 2999]
trigger1 = root,var(2) = root,hitpausetime && root,movehit = 1
fvar(2) = 1200

[state 6305, Combo Bonus]
type = varset
triggerall = cond(numhelper(4000), helper(4000),var(37), 1)
trigger1 = root,var(51) >= 2
var(1) = floor(500 * (root,var(51)) + (100 * root,var(51)) * (root,var(51) >= 4)) + floor(fvar(2))

[state 6305, Super Combo Bonus]
type = varset
triggerall = cond(numhelper(4000), helper(4000),var(37), 1)
triggerall = root,var(51) >= 2
triggerall = var(1) || var(2)
trigger1 = var(2)
trigger2 = root,stateno = [3000, 3999]
trigger2 = root,movehit
trigger3 = numhelper(3105)
trigger3 = helper(3105),movehit
trigger4 = numhelper(3205)
trigger4 = helper(3205),movehit
var(2) = floor(500 * (root,var(51)) + (100 * root,var(51)) * (root,var(51) >= 4)) + floor(fvar(2)) + 4000 * root,var(51) + 0 * (var(1) := 0)

[state 6305, Combo Bonus]
type = helper
triggerall = cond(numhelper(4000), helper(4000),var(37), 1)
triggerall = fvar(1) = 1 || cond(numhelper(6315), helper(6315),sysvar(1) != root,var(51), 0)
triggerall = var(1) || var(2)
trigger1 = !root,var(51)
name = "Combo Bonus"
ID = floor(fvar(0) := 6310001 + (var(2) > 0)) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

[state 6305, Combo Bonus]
type = varset
trigger1 = !root,var(51)
fvar(2) = 0

;========================< First Attack >========================
[state 6305, First Attack]
type = varset
triggerall = numenemy && !var(3)
trigger1 = root,stateno != [150, 155]
trigger1 = enemynear,movetype = H && fvar(3) - p2life > 0
trigger1 = !enemynear,gethitvar(guarded)
var(3) = 1500

[state 6305, First Attack]
type = varset
trigger1 = var(3) != -1
trigger1 = root,life < root,lifemax ; root,movetype = H && root,life < root,lifemax
; trigger1 = root,stateno = [5000, 5099]
var(3) = -1

[state 6305, First Attack]
type = varset
trigger1 = !var(3)
fvar(3) = p2life

[state 6305, First Attack]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = var(3) = 1500
name = "First Attack"
ID = floor(fvar(0) := 6310003) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Tech Bonus >========================
[state 6305, Tech Bonus]
type = varadd
trigger1 = root,var(59)
trigger1 = root,stateno = 810 || root,stateno = [910, 912]
trigger1 = root,time <= 1 + (root,stateno = 810)
var(4) = 2000

[state 6305, Tech Bonus]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = !numhelper(915) && !numhelper(917) && root,stateno != [910, 912]
trigger1 = var(4)
name = "Tech Bonus"
ID = floor(fvar(0) := 6310004) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Counter Hit >========================
[state 6305, Counter Hit]
type = varadd
trigger1 = root,movehit = 1
trigger1 = root,hitdefattr != SCA,AT
trigger1 = fvar(4)
trigger1 = root,var(2) = root,hitpausetime
trigger2 = root,var(45) > 1
var(5) = 1200

[state 6305, Counter Hit]
type = parentvarset
trigger1 = root,movehit = 1
trigger1 = root,hitdefattr != SCA,AT
trigger1 = root,var(45) > 1
var(45) = p2movetype = A

[state 6305, Counter Hit]
type = varset
trigger1 = 1
fvar(4) = p2movetype = A

[state 6305, Counter Hit]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = var(5)
name = "Counter Hit"
ID = floor(fvar(0) := 6310005) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Reversal >========================
[state 6305, Reversal]
type = varadd
triggerall = root,var(59)
triggerall = root,time <= 1 && root,stateno = [1000, 3999]
trigger1 = root,prevstateno = 5001 || root,prevstateno = 5011
trigger2 = root,prevstateno = 5120 || root,prevstateno = 5300
trigger3 = root,prevstateno = [150, 165]
var(6) = 2400

[state 6305, Reversal]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = var(6)
name = "Reversal"
ID = floor(fvar(0) := 6310006) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Super Art Finish >========================
[state 6305, Super Art Finish]
type = varset
; trigger1 = numhelper(6225)
; trigger1 = helper(6225),stateno = 6230
; trigger1 = helper(6225),time = 96 ; roundstate >= 4
triggerall = root,winko && !p2life
triggerall = numenemy
triggerall = enemy(0),life + cond(numenemy = 2, enemy(1),life, 0) <= 0
triggerall = !var(2) && win
trigger1 = root,var(29) > 0 || root,movetype = A && root,stateno = [3000, 3999]
var(7) = 10000

[state 6305, Super Art Finish]
type = varset
trigger1 = var(2) && win
fvar(5) = 1

[state 6305, Super Art Finish]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = !root,var(51)
trigger1 = var(7) && !fvar(5)
name = "Super Art"
ID = floor(fvar(0) := 6310007) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Perfect >========================
[state 6305, Perfect]
type = varset
trigger1 = !time
var(8) = 50000

[state 6305, Perfect]
type = varset
trigger1 = numenemy
trigger1 = enemynear,stateno = 5030 && enemynear,time <= 1
trigger1 = enemynear,hitover && enemynear,prevstateno != [5000, 5999]
var(8) = 0

[state 6305, Perfect]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = winperfect && roundstate >= 4
trigger1 = var(8)
name = "Perfect"
ID = floor(fvar(0) := 6310008) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Danger! >========================
[state 6305, Danger!]
type = varset
trigger1 = root,life <= root,lifemax * 0.25
var(9) = -500

[state 6305, Danger!]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = var(9)
name = "Danger!"
ID = floor(fvar(0) := 6310009) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< EX-Ceptional >========================
[state 6305, EX-Ceptional]
type = varadd
trigger1 = root,stateno = [1000, 2999]
trigger1 = root,stateno % 100 = 50
trigger1 = root,time <= 1
var(10) = 1

[state 6305, EX-Ceptional]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = !root,var(51)
trigger1 = var(10) >= 5
trigger1 = var(10) := var(10) * 1000
name = "EX-Ceptional"
ID = floor(fvar(0) := 6310010) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Super Artist >========================
[state 6305, Super Artist]
type = varadd
trigger1 = root,stateno = [3000, 3999]
trigger1 = root,stateno % 100 = 0
trigger1 = root,time <= 1
var(11) = 1

[state 6305, Super Artist]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = !root,var(51)
trigger1 = var(11) >= 5
trigger1 = var(11) := var(11) * 1000
name = "Super Artist"
ID = floor(fvar(0) := 6310011) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Abstract Super Artist >========================
[state 6305, Abstract Super Artist]
type = varadd
trigger1 = root,stateno = [3000, 3999]
trigger1 = root,prevstateno = [3000, 3999]
trigger1 = root,stateno % 100 = 0
trigger1 = root,time <= 1
var(12) = 1

[state 6305, Abstract Super Artist]
type = varset
triggerall = var(12) < 2
trigger1 = root,stateno != [3000, 3999]
trigger2 = root,prevstateno != [3000, 3999]
var(12) = 0

[state 6305, Abstract Super Artist]
type = helper
triggerall = cond(numhelper(4000), abs(helper(4000),var(8)), 1)
triggerall = fvar(1) = 1
trigger1 = !root,var(51)
trigger1 = var(12) >= 2
trigger1 = var(12) := var(12) * 3000
name = "Abstract Super Artist"
ID = floor(fvar(0) := 6310012) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Generate Bonus >========================
[state 6305, Record Bonus]
type = parentvaradd
trigger1 = fvar(0) >= 6310000 && numhelper(floor(fvar(0)))
trigger1 = !helper(floor(fvar(0))),time
var(20) = var(floor(fvar(0) - 6310000))

[state 6305, Reset Queue]
type = varset
trigger1 = fvar(0)
trigger1 = !numhelper(floor(fvar(0)))
fvar(0) = 0

;========================< Reset Extra Score System >========================

[state 6305, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6305, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Extra Score 2
;=========================================================================
[Statedef 6306]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6306, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), abs(helper(4000),var(8)) != 2 && abs(helper(4000),var(8)) != 4, 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6306, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), abs(helper(4000),var(8)) != 2 && abs(helper(4000),var(8)) != 4, 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6306, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6306, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -12

;========================< Calculate Extra Score >========================

[state 6306, Cheater Flag]
type = varset
triggerall = sysvar(1) - p2life > 0
trigger1 = roundstate >= 3 && !playeridexist(root,var(58))
trigger2 = numenemy
trigger2 = enemynear,stateno = 5030 ; && enemynear,time <= 1
trigger2 = enemynear,hitover && enemynear,prevstateno != [5000, 5999]
sysvar(0) = 1

[state 6306, Cheater Flag]
type = varset
trigger1 = numenemy
sysvar(1) = p2life

[state 6306, Read Queue]
type = varset
trigger1 = 1
fvar(1) = 0

[state 6306, Read Queue]
type = varset
trigger1 = !numhelper(floor(fvar(0)))
trigger1 = cond(numhelper(6305), !numhelper(floor(helper(6305),fvar(0))), 1)
trigger1 = cond(numhelper(6307), !numhelper(floor(helper(6307),fvar(0))), 1)
trigger2 = !fvar(0)
trigger2 = cond(numhelper(6305), !helper(6305),fvar(0), 1)
trigger2 = cond(numhelper(6307), !helper(6307),fvar(0), 1)
fvar(1) = 1

[state 6306, Clog Queue]
type = varset
trigger1 = sysvar(0)
trigger2 = cond(numhelper(4000), helper(4000),var(37), 1)
trigger2 = root,var(51) >= 2
fvar(1) = 0

;========================< Survivor >========================
[state 6306, Survivor]
type = varset
trigger1 = root,alive
trigger1 = !var(0) && root,var(53) - root,life > 0
trigger1 = root,life <= root,lifemax * 0.01
var(0) = 5000

[state 6306, Survivor]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(0) > 0
name = "Survivor"
ID = floor(fvar(0) := 6310060) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Skipper >========================
[state 6306, Skipper]
type = varadd
trigger1 = var(1) < 10
trigger1 = root,stateno = 100 || root,stateno = 105
trigger1 = root,time <= 1
var(1) = 1

[state 6306, Skipper]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(1) >= 10
trigger1 = var(1) := 1500
name = "Skipper"
ID = floor(fvar(0) := 6310061) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< The Bitter End >========================
[state 6306, The Bitter End]
type = varset
trigger1 = teammode = turns
trigger1 = roundno = 7
var(2) = 1500

[state 6306, The Bitter End]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(2)
name = "The Bitter End"
ID = floor(fvar(0) := 6310062) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6306, ???]
type = varset
trigger1 = 0
var(3) = 1500

[state 6306, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310063) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6306, ???]
type = varset
trigger1 = 0
var(4) = 1500

[state 6306, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310064) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Blocking >========================
[state 6306, Blocking]
type = varadd
trigger1 = 0
var(5) = 1000
persistent = 1

[state 6306, Blocking]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(5)
name = "Blocking"
ID = floor(fvar(0) := 6310065) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Guard Blocking >========================
[state 6306, Guard Blocking]
type = varadd
trigger1 = 0
var(6) = 0
persistent = 1

[state 6306, Guard Blocking]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(6)
name = "Guard Blocking"
ID = floor(fvar(0) := 6310066) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< ??? >========================
[state 6306, ???]
type = varset
trigger1 = 0
var(7) = 1500

[state 6306, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310067) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6306, ???]
type = varset
trigger1 = 0
var(8) = 1500

[state 6306, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310068) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< POTS Style >========================
[state 6306, POTS Style]
type = varadd
triggerall = numenemy && !var(9)
triggerall = enemy(0),stateno = [3000, 3999]
triggerall = enemy(0),movetype != H && enemy(0),time <= 1
trigger1 = enemy(0),authorname = "Phantom.of.the.Server"
trigger2 = enemy(0),authorname = "Vyn"
trigger3 = enemy(0),authorname = "Kohaku"
trigger4 = enemy(0),authorname = "Jmorphman"
trigger5 = enemy(0),authorname = "Buckus"
trigger6 = enemy(0),authorname = "CrazyKoopa"
trigger7 = enemy(0),authorname = "Infinite"
trigger8 = enemy(0),authorname = "Zero-Sennin"
var(9) = 1000

[state 6306, POTS Style]
type = varadd
triggerall = numenemy > 1 && !var(9)
triggerall = enemy(1),stateno = [3000, 3999]
triggerall = enemy(1),movetype != H && enemy(1),time <= 1
trigger1 = enemy(1),authorname = "Phantom.of.the.Server"
trigger2 = enemy(1),authorname = "Vyn"
trigger3 = enemy(1),authorname = "Kohaku"
trigger4 = enemy(1),authorname = "Jmorphman"
trigger5 = enemy(1),authorname = "Buckus"
trigger6 = enemy(1),authorname = "CrazyKoopa"
trigger7 = enemy(1),authorname = "Infinite"
trigger8 = enemy(1),authorname = "Zero-Sennin"
var(9) = 1000

[state 6306, POTS Style]
type = helper
triggerall = fvar(1) = 1
trigger1 = cond(numenemy, (enemy,stateno != [3000, 3999]), 0)
trigger1 = var(9)
name = "POTS Style"
ID = floor(fvar(0) := 6310069) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Over 9000 >========================
[state 6306, It's Over 9000 Style]
type = varadd
trigger1 = !var(10)
trigger1 = !fvar(3) && root,var(28) >= root,var(23)
trigger1 = fvar(3) := 1
var(10) = 9000

[state 6306, It's Over 9000 Style]
type = varset
trigger1 = roundstate < 2 || !root,var(32) && roundstate >= 2
trigger1 = root,var(28) >= root,var(23)
fvar(3) = -1

[state 6306, It's Over 9000 Style]
type = varset
triggerall = fvar(3)
trigger1 = root,var(28) < root,var(23)
fvar(3) = 0

[state 6306, It's Over 9000]
type = helper
triggerall = cond(numhelper(4000), helper(4000),var(5), 0)
triggerall = fvar(1) = 1
trigger1 = roundstate >= 2 && root,var(32)
trigger1 = var(10) && fvar(3) = 1
name = "It's Over 9000"
ID = floor(fvar(0) := 6310070) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Wife Beater >========================
[state 6306, Wife Beater]
type = varadd
triggerall = root,var(51) >= 1 && root,var(58) && playeridexist(root,var(58))
triggerall = playerid(root,var(58)),movetype = H && playerid(root,var(58)),stateno = [5000, 5999]
triggerall = playerid(root,var(58)),gethitvar(hitshaketime) && playerid(root,var(58)),gethitvar(hitcount) >= 2
triggerall = playerid(root,var(58)),time <= 1
trigger1 = playerid(root,var(58)),name = "RajaaAoko" || playerid(root,var(58)),name = "Aoko" || playerid(root,var(58)),name = "Aoko Aozaki"
trigger2 = playerid(root,var(58)),name = "RajaaArcueid" || playerid(root,var(58)),name = "Arcueid" || playerid(root,var(58)),name = "Arcueid Brunestud"
trigger3 = playerid(root,var(58)),name = "RajaaLen" || playerid(root,var(58)),name = "Len" || playerid(root,var(58)),name = "White Len"
trigger4 = playerid(root,var(58)),name = "RajaaSatsuki" || playerid(root,var(58)),name = "Satsuki" || playerid(root,var(58)),name = "Satsuki Yumizuka" || playerid(root,var(58)),name = "Satsuki Yumiduka"
trigger5 = playerid(root,var(58)),name = "RajaaRiesbyfe" || playerid(root,var(58)),name = "Riesbyfe" || playerid(root,var(58)),name = "Riesbyfe Stridberg"
trigger6 = playerid(root,var(58)),name = "RajaaSupergirl" || playerid(root,var(58)),name = "Supergirl"
trigger7 = playerid(root,var(58)),name = "RajaaSion" || playerid(root,var(58)),name = "Sion" || playerid(root,var(58)),name = "Sion Eltnam Atlasia"
trigger8 = playerid(root,var(58)),name = "RajaaRogue" || playerid(root,var(58)),name = "Rogue"
trigger9 = playerid(root,var(58)),name = "RajaaLilith" || playerid(root,var(58)),name = "Lilith" || playerid(root,var(58)),name = "Lilith Aensland" || playerid(root,var(58)),name = "cvslilith"
trigger10 = playerid(root,var(58)),name = "RajaaMaki" || playerid(root,var(58)),name = "Maki" || playerid(root,var(58)),name = "cvsmaki"
trigger11 = playerid(root,var(58)),name = "RajaaCammy" || playerid(root,var(58)),name = "Cammy" || playerid(root,var(58)),name = "cvscammy"
trigger12 = playerid(root,var(58)),name = "RajaaYuri" || playerid(root,var(58)),name = "Yuri" || playerid(root,var(58)),name = "Yuri Sakazaki" || playerid(root,var(58)),name = "cvsyuri"
trigger13 = playerid(root,var(58)),name = "RajaaChun-Li" || playerid(root,var(58)),name = "Chun-Li" || playerid(root,var(58)),name = "cvschun-Li"
trigger14 = playerid(root,var(58)),name = "RajaaHibiki" || playerid(root,var(58)),name = "Hibiki" || playerid(root,var(58)),name = "cvshibiki" || playerid(root,var(58)),name = "Hibiki Takane"
trigger15 = playerid(root,var(58)),name = "Ibuki"
trigger16 = playerid(root,var(58)),name = "Makoto"
trigger17 = playerid(root,var(58)),name = "Elena"
trigger18 = playerid(root,var(58)),name = "Poison" || playerid(root,var(58)),name = "cvspoison"
trigger19 = playerid(root,var(58)),name = "King" || playerid(root,var(58)),name = "cvsking"
trigger20 = playerid(root,var(58)),name = "Sakura" || playerid(root,var(58)),name = "cvssakura"
trigger21 = playerid(root,var(58)),name = "Nakoruru" || playerid(root,var(58)),name = "cvsnakoruru"
trigger22 = playerid(root,var(58)),name = "Morrigan" || playerid(root,var(58)),name = "Morrigan Aensland" || playerid(root,var(58)),name = "cvsmorrigan"
trigger23 = playerid(root,var(58)),name = "Vice" || playerid(root,var(58)),name = "cvsvice"
trigger24 = playerid(root,var(58)),name = "Mai Shiranui" || playerid(root,var(58)),name = "Mai" || playerid(root,var(58)),name = "cvsmai"
trigger25 = playerid(root,var(58)),name = "Athena Asamiya" || playerid(root,var(58)),name = "RajaaAthena" || playerid(root,var(58)),name = "Athena" || playerid(root,var(58)),name = "cvsathena"
trigger26 = playerid(root,var(58)),name = "Wonder Woman" || playerid(root,var(58)),name = "Wonder Woman Reloaded"
trigger27 = playerid(root,var(58)),name = "Kung Fu Girl"
trigger28 = playerid(root,var(58)),name = "Hinata Wakaba" || playerid(root,var(58)),name = "Hinata"
trigger29 = playerid(root,var(58)),name = "RajaaHisui" || playerid(root,var(58)),name = "Hisui" || playerid(root,var(58)),name = "Hisui & Kohaku"
trigger30 = playerid(root,var(58)),name = "RajaaKohaku" || playerid(root,var(58)),name = "Kohaku"
trigger31 = playerid(root,var(58)),name = "RajaaRyougi" || playerid(root,var(58)),name = "Ryougi" || playerid(root,var(58)),name = "Ryougi Shiki"
trigger32 = playerid(root,var(58)),name = "RajaaCiel" || playerid(root,var(58)),name = "Ciel"
trigger33 = playerid(root,var(58)),name = "RajaaMiyako" || playerid(root,var(58)),name = "Miyako" || playerid(root,var(58)),name = "Miyako Arima"
trigger34 = playerid(root,var(58)),name = "Lei-Lei"
trigger35 = playerid(root,var(58)),name = "Karin" || playerid(root,var(58)),name = "cvskarin"
trigger36 = playerid(root,var(58)),name = "Ingrid" || playerid(root,var(58)),name = "cvsingrid"
trigger37 = playerid(root,var(58)),name = "Leona"
trigger38 = playerid(root,var(58)),name = "Mary"
trigger39 = playerid(root,var(58)),name = "Felicia" || playerid(root,var(58)),name = "cvsfelicia"
trigger40 = playerid(root,var(58)),name = "RajaaAkiha" || playerid(root,var(58)),name = "Akiha" || playerid(root,var(58)),name = "Akiha Tohno"
trigger41 = playerid(root,var(58)),name = "Tron Bonne"
trigger42 = playerid(root,var(58)),name = "Kula"
trigger43 = playerid(root,var(58)),name = "RajaaPsylocke" || playerid(root,var(58)),name = "Psylocke" || playerid(root,var(58)),name = "cvspsylocke"
trigger44 = playerid(root,var(58)),name = "Storm"
trigger45 = playerid(root,var(58)),name = "Phoenix"
trigger46 = playerid(root,var(58)),name = "RajaaSpiral" || playerid(root,var(58)),name = "Spiral"
trigger47 = playerid(root,var(58)),name = "Storm"
trigger48 = playerid(root,var(58)),name = "Phoenix"
trigger49 = playerid(root,var(58)),name = "RajaaSpiral" || playerid(root,var(58)),name = "Spiral"
trigger50 = playerid(root,var(58)),name = "RajaaRubyHeart" || playerid(root,var(58)),name = "Ruby Heart" || playerid(root,var(58)),name = "Ruby"
var(11) = -100

[state 6306, Wife Beater]
type = helper
triggerall = 0 ; fvar(1) = 1
trigger1 = cond(playeridexist(root,var(58)), playerid(root,var(58)),movetype != H || !playerid(root,var(58)),alive && !playerid(root,var(58)),gethitvar(hitshaketime), 0)
trigger1 = var(11)
name = "Wife Beater"
ID = floor(fvar(0) := 6310071) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Baby Crab >========================
[state 6306, Baby Crab]
type = varadd
trigger1 = var(12) < 10 && root,stateno = [150, 155]
trigger1 = root,time <= 1 && root,gethitvar(hitshaketime)
var(12) = 1

[state 6306, Baby Crab]
type = helper
triggerall = fvar(1) = 1
trigger1 = root,stateno != [120, 165]
trigger1 = var(12) >= 10
trigger1 = var(12) := 5000
name = "Baby Crab"
ID = floor(fvar(0) := 6310072) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Turtle Hermit >========================
[state 6306, Turtle Hermit]
type = varadd
trigger1 = var(13) < 50 && root,stateno = [150, 155]
trigger1 = root,time <= 1 && root,gethitvar(hitshaketime)
var(13) = 1

[state 6306, Turtle Hermit]
type = helper
triggerall = fvar(1) = 1
trigger1 = root,stateno != [120, 165]
trigger1 = var(13) >= 50
trigger1 = var(13) := 10000
name = "Turtle Hermit"
ID = floor(fvar(0) := 6310073) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Iron Defense >========================
[state 6306, Iron Defense]
type = varadd
trigger1 = var(14) < 100 && root,stateno = [150, 155]
trigger1 = root,time <= 1 && root,gethitvar(hitshaketime)
var(14) = 1

[state 6306, Iron Defense]
type = helper
triggerall = fvar(1) = 1
trigger1 = root,stateno != [120, 165]
trigger1 = var(14) >= 100
trigger1 = var(14) := 50000
name = "Iron Defense"
ID = floor(fvar(0) := 6310074) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Backstabber >========================
[state 6306, Backstabber]
type = varset
triggerall = var(15) && var(15) != 1000
trigger1 = root,movetype != A || root,time <= 1
trigger2 = numenemy && root,var(2) != root,hitpausetime && !root,movehit
trigger2 = root,facing != enemynear,facing
var(15) = 0

[state 6306, Backstabber]
type = varset
trigger1 = numenemy && root,movetype = A && var(15) != 1000
trigger1 = (root,pos x - enemynear,pos x) * enemynear,facing < 0
trigger1 = root,facing = enemynear,facing
var(15) = 1

[state 6306, Backstabber]
type = varset
trigger1 = var(15) = 1
trigger1 = root,var(2) = root,hitpausetime && root,movehit = 1 && root,hitdefattr != SCA,AT
var(15) = 1000

[state 6306, Backstabber]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(15) = 1000
name = "Backstabber"
ID = floor(fvar(0) := 6310075) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Duck Duck Goose >========================
[state 6306, Duck Duck Goose]
type = varadd
trigger1 = root,statetype = C
var(16) = 1

[state 6306, Duck Duck Goose]
type = varset
trigger1 = var(16) < 300 && root,statetype != C
trigger2 = root,statetype != C
trigger2 = root,movetype = H || !root,ctrl || root,prevstateno != [11, 12]
var(16) = 0

[state 6306, Duck Duck Goose]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(16) >= 300
trigger1 = root,statetype = S && root,prevstateno = 12
trigger1 = root,ctrl && root,movetype != A
trigger1 = var(16) := 100 * floor(var(16) / 100.0)
name = "Duck Duck Goose"
ID = floor(fvar(0) := 6310076) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Hopper >========================
[state 6306, Hopper]
type = varadd
trigger1 = root,stateno = 50 && root,prevstateno = 40
trigger1 = root,ctrl && root,time <= 1
var(17) = 1

[state 6306, Hopper]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(17) >= 20
trigger1 = var(17) := 5000
name = "Hopper"
ID = floor(fvar(0) := 6310077) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Bungee Jumper >========================
[state 6306, Bungee Jumper]
type = varadd
trigger1 = root,stateno = 50 && root,prevstateno = 40
trigger1 = root,ctrl && root,time <= 1
var(18) = 1

[state 6306, Bungee Jumper]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(18) >= 40
trigger1 = var(18) := 8000
name = "Bungee Jumper"
ID = floor(fvar(0) := 6310078) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Sky Diver >========================
[state 6306, Sky Diver]
type = varadd
trigger1 = root,stateno = 50 && root,prevstateno = 40
trigger1 = root,ctrl && root,time <= 1
var(19) = 1

[state 6306, Sky Diver]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(19) >= 80
trigger1 = var(19) := 12000
name = "Sky Diver"
ID = floor(fvar(0) := 6310079) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Suicide Bomber >========================
[state 6306, Suicide Bomber]
type = varset
trigger1 = !time
var(20) = 10000

[state 6306, Suicide Bomber]
type = varset
trigger1 = root,stateno = [120, 165]
trigger2 = root,gethitvar(guarded)
var(20) = 0

[state 6306, Suicide Bomber]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(20)
name = "Suicide Bomber"
ID = floor(fvar(0) := 6310080) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Ninja >========================
[state 6306, Ninja]
type = varset
trigger1 = !time
var(21) = 10000

[state 6306, Ninja]
type = varset
trigger1 = root,movetype = H
trigger2 = root,movereversed
var(21) = 0

[state 6306, Ninja]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(21)
name = "Ninja"
ID = floor(fvar(0) := 6310081) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Minimalist >========================
[state 6306, Minimalist]
type = varset
trigger1 = var(22) >= 0 && roundstate = 2
trigger1 = root,stateno = [200, 899]
trigger1 = root,movetype != H && root,var(59)
var(22) = 5000

[state 6306, Minimalist]
type = varset
trigger1 = roundstate = 2
trigger1 = root,var(59) && root,movetype != H
trigger1 = root,stateno = [1000, 3999]
var(22) = -1

[state 6306, Minimalist]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(22) > 0
name = "Minimalist"
ID = floor(fvar(0) := 6310082) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Moderatist >========================
[state 6306, Moderatist]
type = varset
trigger1 = var(23) >= 0 && roundstate = 2
trigger1 = root,stateno = [1000, 2999]
trigger1 = root,movetype != H && root,var(59)
var(23) = 10000

[state 6306, Moderatist]
type = varset
triggerall = roundstate = 2
triggerall = root,var(59) && root,movetype != H
trigger1 = root,stateno = [200, 899]
trigger2 = root,stateno = [3000, 3999]
var(23) = -1

[state 6306, Moderatist]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(23) > 0
name = "Moderatist"
ID = floor(fvar(0) := 6310083) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Maximalist >========================
[state 6306, Maximalist]
type = varset
trigger1 = var(24) >= 0 && roundstate = 2
trigger1 = root,stateno = [3000, 3999]
trigger1 = root,movetype != H && root,var(59)
var(24) = 50000

[state 6306, Maximalist]
type = varset
trigger1 = roundstate = 2 && !root,var(29)
trigger1 = root,var(59) && root,movetype != H
trigger1 = (root,stateno = [200, 899]) || (root,stateno = [1000, 2999])
var(24) = -1

[state 6306, Maximalist]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(24) > 0
name = "Maximalist"
ID = floor(fvar(0) := 6310084) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Great Buddha >========================
[state 6306, Great Buddha]
type = varset
trigger1 = var(25) >= 0 && root,var(58) && playeridexist(root,var(58))
trigger1 = root,moveguarded && playerid(root,var(58)),gethitvar(guarded)
trigger1 = playerid(root,var(58)),life < playerid(root,var(58)),lifemax
var(25) = 1000000

[state 6306, Great Buddha]
type = varset
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),alive && playerid(root,var(58)),movetype = H
trigger1 = !playerid(root,var(58)),gethitvar(guarded)
var(25) = -1

[state 6306, Great Buddha]
type = helper
triggerall = fvar(1) = 1
trigger1 = win && roundstate >= 4
trigger1 = var(25) > 0
name = "Great Buddha"
ID = floor(fvar(0) := 6310085) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Button-Masher >========================
[state 6306, Button-Masher]
type = varadd
triggerall = roundstate = 2
trigger1 = root,command = "a" || root,command = "b" || root,command = "c"
trigger2 = root,command = "x" || root,command = "y" || root,command = "z"
trigger3 = root,command = "start" || root,command = "up" || root,command = "down"
trigger4 = root,command = "back" || root,command = "fwd"
var(26) = 1

[state 6306, Button-Masher]
type = varadd
trigger1 = var(26) > 0
trigger1 = gametime % 8 = 0
var(26) = -1

[state 6306, Button-Masher]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(26) >= 24
trigger1 = var(26) := -var(26) * 1000
name = "Button-Masher"
ID = floor(fvar(0) := 6310086) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Blindfolded >========================
[state 6306, Blindfolded]
type = varadd
triggerall = roundstate = 2
trigger1 = root,stateno = [200, 800]
trigger1 = root,movetype != A && !root,movecontact
trigger1 = root,animtime = [-4, 0]
var(27) = 1

[state 6306, Blindfolded]
type = null ; varadd
trigger1 = var(27) > 0
trigger1 = gametime % 30 = 0
var(27) = -1

[state 6306, Blindfolded]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(27) >= 30
trigger1 = var(27) := -var(27) * 100
name = "Blindfolded"
ID = floor(fvar(0) := 6310087) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Speeding Bullet >========================
[state 6306, Speeding Bullet]
type = varadd
triggerall = roundstate = 2
trigger1 = root,vel x > 0
var(28) = 1

[state 6306, Speeding Bullet]
type = varset
trigger1 = root,time > 1 && !numhelper(6205)
trigger1 = root,vel x <= 0
var(28) = 0

[state 6306, Speeding Bullet]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(28) >= 120
trigger1 = var(28) := 100 * floor(var(28) / 100.0)
name = "Speeding Bullet"
ID = floor(fvar(0) := 6310088) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Cat Fight >========================
[state 6306, Cat Fight]
type = varadd
triggerall = root,stateno = 920 && numenemy
triggerall = root,time <= 1 && enemynear,stateno = 195
trigger1 = enemynear,authorname != "RajaaBoy"
; trigger1 = enemynear,authorname != "YourName"
var(29) = 3000

[state 6306, Cat Fight]
type = varadd
triggerall = root,stateno = 920 && numenemy
triggerall = enemynear,stateno = 199 || enemynear,stateno = 920
triggerall = root,time <= 1
trigger1 = enemynear,authorname = "RajaaBoy"
; trigger2 = enemynear,authorname = "YourName"
var(29) = 3000

[state 6306, Cat Fight]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(29)
name = "Cat Fight"
ID = floor(fvar(0) := 6310089) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Opportunist >========================
[state 6306, Opportunist]
type = varadd
trigger1 = fvar(4) && root,var(2) = root,hitpausetime
trigger1 = root,movehit = 1 && root,hitdefattr != SCA,AT
var(30) = 1

[state 6306, Opportunist]
type = null ; varset
trigger1 = !fvar(4) && root,var(2) = root,hitpausetime
trigger1 = root,movehit = 1 && root,hitdefattr != SCA,AT
var(30) = -1

[state 6306, Opportunist]
type = varset
trigger1 = 1
fvar(4) = p2movetype = A

[state 6306, Opportunist]
type = helper
triggerall = fvar(1) = 1
; trigger1 = winko && roundstate >= 4
trigger1 = var(30) >= 7
trigger1 = var(30) := 50000
name = "Opportunist"
ID = floor(fvar(0) := 6310090) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Bozo the Clown >========================
[state 6306, Bozo the Clown]
type = varadd
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = root,var(2) = root,hitpausetime && root,movehit = 1
trigger1 = playerid(root,var(58)),statetype = A
var(31) = 1

[state 6306, Bozo the Clown]
type = varset
trigger1 = var(31) < 4
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),statetype != A
var(31) = 0

[state 6306, Bozo the Clown]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(31) >= 4
trigger1 = var(31) := var(31) * 500
name = "Bozo the Clown"
ID = floor(fvar(0) := 6310091) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< The Mega Millions >========================
[state 6306, The Mega Millions]
type = varset
trigger1 = random = 1 && roundstate = 2
trigger1 = gametime % 100 < 4
var(32) = floor(abs(random * cos(random)))

[state 6306, The Mega Millions]
type = helper
triggerall = 0 ; fvar(1) = 1
trigger1 = var(32)
name = "The Mega Millions"
ID = floor(fvar(0) := 6310092) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< The IRS >========================
[state 6306, The IRS]
type = varset
trigger1 = random = 1 && roundstate = 2
trigger1 = gametime % 100 < 4
var(33) = floor(-abs(random * cos(random)))

[state 6306, The IRS]
type = helper
triggerall = 0 ; fvar(1) = 1
trigger1 = var(33)
name = "The IRS"
ID = floor(fvar(0) := 6310093) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Bad Sport >========================
[state 6306, Bad Sport]
type = varset
trigger1 = root,stateno = 920
trigger1 = roundstate = 3
var(34) = -1000

[state 6306, Bad Sport]
type = helper
triggerall = fvar(1) = 1
trigger1 = win && roundstate >= 4
trigger1 = var(34)
name = "Bad Sport"
ID = floor(fvar(0) := 6310094) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< U Mad Bro >========================
[state 6306, U Mad Bro]
type = varadd
triggerall = numenemy
triggerall = (root,life / root,lifemax) < cond(numenemy = 1, (enemy,life / enemy,lifemax), (enemy(0),life + enemy(1),life) / (enemy(0),lifemax + enemy(1),lifemax))
triggerall = enemynear,stateno = 195 && enemynear,time <= 1
trigger1 = enemynear,authorname != "RajaaBoy"
; trigger1 = enemynear,authorname != "YourName"
var(35) = -500

[state 6306, U Mad Bro]
type = varadd
triggerall = numenemy 
triggerall = (root,life / root,lifemax) < cond(numenemy = 1, (enemy,life / enemy,lifemax), (enemy(0),life + enemy(1),life) / (enemy(0),lifemax + enemy(1),lifemax))
triggerall = (enemynear,stateno = 199 || enemynear,stateno = 920) && enemynear,time <= 1
trigger1 = enemynear,authorname = "RajaaBoy"
; trigger2 = enemynear,authorname = "YourName"
var(35) = -500

[state 6306, U Mad Bro]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(35)
name = "U Mad Bro"
ID = floor(fvar(0) := 6310095) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Go-Go Dancer >========================
[state 6306, Go-Go Dancer]
type = varadd
trigger1 = root,stateno = 5300
trigger1 = root,time <= 1
var(36) = 1

[state 6306, Go-Go Dancer]
type = helper
triggerall = fvar(1) = 1
trigger1 = root,stateno != 5300
trigger1 = var(36) >= 3
trigger1 = var(36) := 3000
name = "Go-Go Dancer"
ID = floor(fvar(0) := 6310096) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Observer >========================
[state 6306, Observer]
type = varset
trigger1 = numenemy 
trigger1 = enemynear,stateno = [200, 699]
trigger1 = enemynear,time <= 1 && enemynear,movetype = A
var(37) = 1

[state 6306, Observer]
type = varset
trigger1 = var(37) && root,stateno != 0
trigger2 = numenemy
trigger2 = enemynear,stateno != [200, 699]
var(37) = 0

[state 6306, Observer]
type = helper
triggerall = fvar(1) = 1
triggerall = numenemy
triggerall = enemynear,animtime >= -1 && enemynear,movetype = I
trigger1 = var(37) 
trigger1 = var(37) := 1000
name = "Observer"
ID = floor(fvar(0) := 6310097) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Spectator >========================
[state 6306, Spectator]
type = varset
trigger1 = numenemy 
trigger1 = enemynear,stateno = [1000, 1999]
trigger1 = enemynear,time <= 1 && enemynear,movetype = A
var(38) = 1

[state 6306, Spectator]
type = varset
trigger1 = var(38) && root,stateno != 0
trigger2 = numenemy
trigger2 = enemynear,stateno != [1000, 1999]
var(38) = 0

[state 6306, Spectator]
type = helper
triggerall = fvar(1) = 1
triggerall = numenemy
triggerall = enemynear,animtime >= -1 && enemynear,movetype = I
trigger1 = var(38) 
trigger1 = var(38) := 2000
name = "Spectator"
ID = floor(fvar(0) := 6310098) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Harsh Critic >========================
[state 6306, Harsh Critic]
type = varset
trigger1 = numenemy 
trigger1 = enemynear,stateno = [3000, 3999]
trigger1 = enemynear,time <= 1 && enemynear,movetype = A
var(39) = 1

[state 6306, Harsh Critic]
type = varset
trigger1 = var(39) && root,stateno != 0
trigger2 = numenemy
trigger2 = enemynear,stateno != [3000, 3999]
var(39) = 0

[state 6306, Harsh Critic]
type = helper
triggerall = fvar(1) = 1
triggerall = numenemy
triggerall = enemynear,animtime >= -1 && enemynear,movetype = I
trigger1 = var(39) 
trigger1 = var(39) := 4000
name = "Harsh Critic"
ID = floor(fvar(0) := 6310099) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Warrior Princess >========================
[state 6306, Warrior Princess]
type = varset
trigger1 = !numhelper(917)
var(40) = 0

[state 6306, Warrior Princess]
type = varadd
trigger1 = root,stateno = [910, 912]
trigger1 = root,time = 1
var(40) = 1

[state 6306, Warrior Princess]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(40) >= 5
trigger1 = var(40) := 15000
name = "Warrior Princess"
ID = floor(fvar(0) := 6310100) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< You Had to Be There >========================
[state 6306, You Had to Be There]
type = varset
trigger1 = !numhelper(917)
var(41) = 0

[state 6306, You Had to Be There]
type = varadd
trigger1 = root,stateno = [910, 912]
trigger1 = root,time = 1
var(41) = 1

[state 6306, You Had to Be There]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(41) >= 10
trigger1 = var(41) := 789100
name = "You Had to Be There"
ID = floor(fvar(0) := 6310101) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Deadeye >========================
[state 6306, Deadeye]
type = varadd
trigger1 = root,var(2) = root,hitpausetime
trigger1 = root,movehit = 1
var(42) = 1

[state 6306, Deadeye]
type = varset
trigger1 = root,moveguarded || root,movehit = 1 && !root,numtarget
trigger2 = (root,stateno = [200, 799]) || (root,stateno = [1000, 3999])
trigger2 = root,animtime >= -4 && root,movetype != A || root,movetype = I
trigger2 = !root,movecontact
var(42) = 0

[state 6306, Deadeye]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(42) >= 10
trigger1 = var(42) := var(42) * 200
name = "Deadeye"
ID = floor(fvar(0) := 6310102) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Masochist >========================
[state 6306, Masochist]
type = varadd
triggerall = root,var(2) = root,hitpausetime
triggerall = root,movehit = 1 && root,var(58)
triggerall = playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),name = "Urien"
var(43) = 1

[state 6306, Masochist]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(43) >= 5
trigger1 = var(43) := var(43) * 200
name = "Masochist"
ID = floor(fvar(0) := 6310103) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Slowpoke >========================
[state 6306, Slowpoke]
type = varset
triggerall = numenemy
trigger1 = var(44) != enemynear,stateno
trigger2 = enemynear,movetype != A
var(44) = 0

[state 6306, Slowpoke]
type = varset
triggerall = numenemy && !var(44)
trigger1 = enemynear,movetype = A && enemynear,time >= 24
trigger1 = enemynear,stateno != [3000, 3999]
trigger1 = root,ctrl && root,stateno != [120, 165]
var(44) = enemynear,stateno

[state 6306, Slowpoke]
type = varset
triggerall = numenemy && var(44)
trigger1 = var(44) = enemynear,stateno
trigger1 = root,movetype = H && root,stateno != [120, 165]
var(44) = -1000

[state 6306, Slowpoke]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(44) <= -1000
name = "Slowpoke"
ID = floor(fvar(0) := 6310104) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< ??? >========================
[state 6306, ???]
type = varset
trigger1 = 0
var(45) = 1000

[state 6306, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = roundstate >= 2
trigger1 = var(45)
name = "???"
ID = floor(fvar(0) := 6310105) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Modest >========================
[state 6306, Modest]
type = varset
trigger1 = !time
var(46) = 1000

[state 6306, Modest]
type = varset
trigger1 = root,var(51) > 1
var(46) = 0

[state 6306, Modest]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(46)
name = "Modest"
ID = floor(fvar(0) := 6310106) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Firefighter >========================
[state 6306, Firefighter]
type = varset
trigger1 = p2name = "Dhalsim" || p4name = "Dhalsim"
trigger2 = p2name = "RajaaDhalsim" || p4name = "RajaaDhalsim"
trigger3 = p2name = "CvSDhalsim" || p4name = "CvSDhalsim"
trigger4 = p2name = "Dhalsims" || p4name = "Dhalsims"
trigger5 = p2name = "Pyron" || p4name = "Pyron"
trigger6 = p2name = "Captain Commando" || p4name = "Captain Commando"
trigger7 = p2name = "CvSCommando" || p4name = "CvSCommando"
trigger8 = p2name = "Terry Bogard" || p4name = "Terry Bogard"
trigger9 = p2name = "CvSTerry" || p4name = "CvSTerry"
trigger10 = p2name = "Iori Yagami" || p4name = "Iori Yagami"
trigger11 = p2name = "CvSIori" || p4name = "CvSIori"
trigger12 = p2name = "Gill" || p4name = "Gill"
trigger13 = p2name = "Heatman" || p4name = "Heatman"
trigger14 = p2name = "Fireman" || p4name = "Fireman"
trigger15 = p2name = "Kyo Kusanagi" || p4name = "Kyo Kusanagi"
trigger16 = p2name = "CvSKyo" || p4name = "CvS Kyo"
trigger17 = p2name = "K'" || p4name = "K'"
trigger18 = p2name = "Ash Crimson" || p4name = "Ash Crimson"
trigger19 = p2name = "Mai Shiranui" || p4name = "Mai Shiranui"
trigger20 = p2name = "CvSMai" || p4name = "CvSMai"
trigger21 = p2name = "Billy Kane" || p4name = "Billy Kane"
trigger22 = p2name = "Orochi Chris" || p4name = "Orochi Chris"
trigger23 = p2name = "Enja" || p4name = "Enja"
trigger24 = p2name = "Kazuki Kazama" || p4name = "Kazuki Kazama"
trigger25 = p2name = "Fuuma" || p4name = "Fuuma"
trigger26 = p2name = "Scorpion" || p4name = "Scorpion"
trigger27 = p2name = "Sol Badguy" || p4name = "Sol Badguy"
trigger28 = p2name = "Human Torch" || p4name = "Human Torch"
trigger29 = p2name = "Sailor Mars" || p4name = "Sailor Mars"
trigger30 = p2name = "Byrne" || p4name = "Byrne"
trigger31 = p2name = "Shinosuke Kagami" || p4name = "Shinosuke Kagami"
trigger32 = p2name = "Dragon Claw" || p4name = "Dragon Claw"
trigger33 = p2name = "Kain R. Heinlern" || p4name = "Kain R. Heinlern"
trigger34 = p2name = "Kishima Kouma" || p4name = "Kishima Kouma"
var(47) = 1000

[state 6306, Firefighter]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(47)
name = "Firefighter"
ID = floor(fvar(0) := 6310107) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< You Got Served >========================
[state 6306, You Got Served]
type = varset
triggerall = loseko
trigger1 = numenemy
trigger1 = enemy,winperfect
var(48) = -25000

[state 6306, You Got Served]
type = helper
triggerall = fvar(1) = 1
trigger1 = loseko && roundstate >= 4
trigger1 = var(48)
name = "You Got Served"
ID = floor(fvar(0) := 6310108) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Tap dancer >========================
[state 6306, Tap dancer]
type = varset
trigger1 = !time
var(49) = 10000

[state 6306, Tap dancer]
type = varset
trigger1 = root,movetype = A
trigger1 = root,stateno != [230, 255]
trigger1 = root,stateno != [430, 455]
trigger1 = root,stateno != [630, 655]
var(49) = 0

[state 6306, Tap dancer]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(49)
name = "Tap dancer"
ID = floor(fvar(0) := 6310109) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Boxer >========================
[state 6306, Boxer]
type = varset
trigger1 = !time
var(50) = 10000

[state 6306, Boxer]
type = varset
trigger1 = root,movetype = A
trigger1 = root,stateno != [200, 225]
trigger1 = root,stateno != [400, 425]
trigger1 = root,stateno != [600, 625]
var(50) = 0

[state 6306, Boxer]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(50)
name = "Boxer"
ID = floor(fvar(0) := 6310110) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Shotopurifier >========================
[state 6306, Shotopurifier]
type = varset
trigger1 = p2name = "Ryu" || p4name = "Ryu"
trigger2 = p2name = "CvSRyu" || p4name = "CvSRyu"
trigger3 = p2name = "RajaaRyu" || p4name = "RajaaRyu"
trigger4 = p2name = "Ken Masters" || p4name = "Ken Masters"
trigger5 = p2name = "Ken" || p4name = "Ken"
trigger6 = p2name = "CvSKen" || p4name = "CvSKen"
trigger7 = p2name = "Akuma" || p4name = "Akuma"
trigger8 = p2name = "Gouki" || p4name = "Gouki"
trigger9 = p2name = "CvSGouki" || p4name = "CvSGouki"
trigger10 = p2name = "Sakura Kasugano" || p4name = "Sakura Kasugano"
trigger11 = p2name = "CvSSakura" || p4name = "CvSSakura"
trigger12 = p2name = "Yuri Sakazaki" || p4name = "Yuri Sakazaki"
trigger13 = p2name = "RajaaYuri" || p4name = "RajaaYuri"
trigger14 = p2name = "CvSYuri" || p4name = "CvSYuri"
trigger15 = p2name = "Dan Hibiki" || p4name = "Dan Hibiki"
trigger16 = p2name = "CvSDan" || p4name = "CvSDan"
trigger17 = p2name = "Gouken" || p4name = "Gouken"
var(51) = 1000

[state 6306, Shotopurifier]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(51)
name = "Shotopurifier"
ID = floor(fvar(0) := 6310111) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6306, ???]
type = varset
trigger1 = 0
var(52) = 1500

[state 6306, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310112) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Jebus >========================
[state 6306, Jebus]
type = varset
trigger1 = !var(53)
trigger1 = win && root,life <= 1
var(53) = 50000

[state 6306, Jebus]
type = helper
triggerall = fvar(1) = 1
trigger1 = win && roundstate >= 4
trigger1 = var(53) > 0
name = "Jebus"
ID = floor(fvar(0) := 6310113) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Too Close for Comfort >========================
[state 6306, Too Close for Comfort]
type = varset
trigger1 = winko
trigger1 = root,var(59) && root,movetype != H
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),gethitvar(isbound)
var(54) = 7000

[state 6306, Too Close for Comfort]
type = helper
triggerall = fvar(1) = 1
trigger1 = win && roundstate >= 4
trigger1 = var(54)
name = "Too Close for Comfort"
ID = floor(fvar(0) := 6310114) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Karma >========================
[state 6306, Karma]
type = varset
triggerall = numenemy && root,stateno = [3000, 3999]
triggerall = root,time <= 1 && root,stateno % 100 = 0
triggerall = enemynear,stateno = 195
trigger1 = enemynear,authorname != "RajaaBoy"
; trigger1 = enemynear,authorname != "YourName"
var(55) = -enemynear,stateno

[state 6306, Karma]
type = varset
triggerall = numenemy && root,stateno = [3000, 3999]
triggerall = root,time <= 1 && root,stateno % 100 = 0
triggerall = enemynear,stateno = 199 || enemynear,stateno = 920
trigger1 = enemynear,authorname = "RajaaBoy"
; trigger2 = enemynear,authorname = "YourName"
var(55) = -enemynear,stateno

[state 6306, Karma]
type = varset
trigger1 = numenemy && var(55)
trigger1 = root,var(2) = root,hitpausetime
var(55) = 700

[state 6306, Karma]
type = varset
triggerall = var(55) != 666
trigger1 = root,movetype != A
trigger2 = numenemy && !root,movehit
trigger2 = var(55) != -enemynear,stateno
var(55) = 0

[state 6306, Karma]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(55) >= 700
name = "Karma"
ID = floor(fvar(0) := 6310115) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Too Bad >========================
[state 6306, Too Bad]
type = varset
triggerall = loseko
trigger1 = numenemy = 1
trigger1 = enemy,life < enemy,lifemax * 0.25
trigger2 = numenemy = 2
trigger2 = enemy(0),life + enemy(1),life < (enemy(0),lifemax + enemy(1),lifemax) * 0.25
var(56) = -5000

[state 6306, Too Bad]
type = helper
triggerall = fvar(1) = 1
trigger1 = loseko && roundstate >= 4
trigger1 = var(56)
name = "Too Bad"
ID = floor(fvar(0) := 6310116) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Paralyzed >========================
[state 6306, Paralyzed]
type = varset
triggerall = root,stateno = 5300 && root,time <= 1
trigger1 = p2name = "Necro" || p4name = "Necro"
trigger2 = p2name = "RajaaRoa" || p4name = "RajaaRoa"
trigger3 = p2name = "Michael Roa Valdamjong" || p4name = "Michael Roa Valdamjong"
trigger4 = p2name = "Roa" || p4name = "Roa"
trigger5 = p2name = "Thor" || p4name = "Thor"
trigger6 = p2name = "Saki Commando" || p4name = "Saki Commando"
trigger7 = p2name = "Kaede" || p4name = "Kaede"
trigger8 = p2name = "Tetsu Yatogi" || p4name = "Tetsu Yatogi"
trigger9 = p2name = "Blanka" || p4name = "Blanka"
trigger10 = p2name = "Kyosuke" || p4name = "Kyosuke"
trigger11 = p2name = "Benimaru" || p4name = "Benimaru"
trigger12 = p2name = "CvSBenimaru" || p4name = "CvSBenimaru"
trigger13 = p2name = "Elecman" || p4name = "Elecman"
trigger14 = p2name = "Orochi Shermie" || p4name = "Orochi Shermie"
trigger15 = p2name = "Raiden" || p4name = "Raiden"
trigger16 = p2name = "Rain" || p4name = "Rain"
trigger17 = p2name = "Ky Kyske" || p4name = "Ky Kyske"
trigger18 = p2name = "Storm" || p4name = "Storm"
trigger19 = p2name = "Bluestreak" || p4name = "Bluestreak"
trigger20 = p2name = "CvSBluestreak" || p4name = "CvSBluestreak"
trigger21 = p2name = "Setsuna" || p4name = "Setsuna"
var(57) = -1000

[state 6306, Paralyzed]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(57)
name = "Paralyzed"
ID = floor(fvar(0) := 6310117) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Nighty-Night >========================
[state 6306, Nighty-Night]
type = varset
trigger1 = var(58) >= 0 && roundstate = 2 && numenemy
trigger1 = enemynear,movetype = H
trigger1 = enemynear,gethitvar(fall) && !enemynear,gethitvar(guarded)
var(58) = 15000

[state 6306, Nighty-Night]
type = varset
triggerall = roundstate = 2 && numenemy
trigger1 = enemynear,movetype = H && enemynear,alive
trigger1 = !enemynear,gethitvar(fall) && !enemynear,gethitvar(guarded)
var(58) = -1

[state 6306, Nighty-Night]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(58) > 0
name = "Nighty-Night"
ID = floor(fvar(0) := 6310118) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Facebreaker >========================
[state 6306, Facebreaker]
type = varset
trigger1 = var(59) >= 0 && roundstate = 2 && numenemy
trigger1 = enemynear,movetype = H
trigger1 = enemynear,gethitvar(groundtype) = 1 && !enemynear,gethitvar(guarded)
var(59) = 15000

[state 6306, Facebreaker]
type = varset
triggerall = roundstate = 2 && numenemy
trigger1 = enemynear,movetype = H && enemynear,alive
; trigger1 = !enemynear,gethitvar(fall)
trigger1 = enemynear,gethitvar(groundtype) != 1 && !enemynear,gethitvar(guarded)
var(59) = -1

[state 6306, Facebreaker]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(59) > 0
name = "Facebreaker"
ID = floor(fvar(0) := 6310119) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Generate Bonus >========================
[state 6306, Record Bonus]
type = parentvaradd
trigger1 = fvar(0) >= 6310060 && numhelper(floor(fvar(0)))
trigger1 = !helper(floor(fvar(0))),time
var(20) = var(floor(fvar(0) - 6310060))

[state 6306, Reset Queue]
type = varset
trigger1 = fvar(0)
trigger1 = !numhelper(floor(fvar(0)))
fvar(0) = 0

;========================< Reset Extra Score System >========================

[state 6306, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6306, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Extra Score 3
;=========================================================================
[Statedef 6307]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6307, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), abs(helper(4000),var(8)) != 3 && abs(helper(4000),var(8)) != 4, 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6307, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), abs(helper(4000),var(8)) != 3 && abs(helper(4000),var(8)) != 4, 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6307, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6307, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -12

;========================< Calculate Extra Score >========================

[state 6307, Cheater Flag]
type = varset
triggerall = sysvar(1) - p2life > 0
trigger1 = roundstate >= 3 && !playeridexist(root,var(58))
trigger2 = numenemy
trigger2 = enemynear,stateno = 5030 ; && enemynear,time <= 1
trigger2 = enemynear,hitover && enemynear,prevstateno != [5000, 5999]
sysvar(0) = 1

[state 6307, Cheater Flag]
type = varset
trigger1 = numenemy
sysvar(1) = p2life

[state 6307, Read Queue]
type = varset
trigger1 = 1
fvar(1) = 0

[state 6307, Read Queue]
type = varset
trigger1 = !numhelper(floor(fvar(0)))
trigger1 = cond(numhelper(6305), !numhelper(floor(helper(6305),fvar(0))), 1)
trigger1 = cond(numhelper(6306), !numhelper(floor(helper(6306),fvar(0))), 1)
trigger2 = !fvar(0)
trigger2 = cond(numhelper(6305), !helper(6305),fvar(0), 1)
trigger2 = cond(numhelper(6306), !helper(6306),fvar(0), 1)
fvar(1) = 1

[state 6307, Clog Queue]
type = varset
trigger1 = sysvar(0)
trigger2 = cond(numhelper(4000), helper(4000),var(37), 1)
trigger2 = root,var(51) >= 2
fvar(1) = 0

;========================< Welcome to Hell >========================
[state 6307, Welcome to Hell]
type = varset
trigger1 = var(0) >= 0 && roundstate = 2 && numenemy
trigger1 = enemynear,movetype = H && !root,numtarget
var(0) = 20000

[state 6307, Welcome to Hell]
type = varset
triggerall = roundstate = 2
trigger1 = root,numtarget
var(0) = -1

[state 6307, Welcome to Hell]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(0) > 0
name = "Welcome to Hell"
ID = floor(fvar(0) := 6310120) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< The Juggernaut, Bitch! >========================
[state 6307, The Juggernaut, Bitch!]
type = varset
trigger1 = !time
var(1) = 100000

[state 6307, The Juggernaut, Bitch!]
type = varset
trigger1 = root,vel x < 0
trigger1 = root,stateno = 20 || (root,stateno = [40, 50]) || root,stateno = 105
trigger2 = root,stateno = [120, 165]
trigger3 = root,stateno = [910, 912]
var(1) = -1

[state 6307, The Juggernaut, Bitch!]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(1) > 0
name = "The Juggernaut, Bitch!"
ID = floor(fvar(0) := 6310121) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Bad Hangover >========================
[state 6307, Bad Hangover]
type = varadd
trigger1 = root,stateno = 5300
trigger1 = root,time <= 1
var(2) = 1

[state 6307, Bad Hangover]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(2) >= 5
trigger1 = var(2) := -var(2) * 1000
name = "Bad Hangover"
ID = floor(fvar(0) := 6310122) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Noodle Arms >========================
[state 6307, Noodle Arms]
type = varset
trigger1 = !var(3) && root,var(2) = root,hitpausetime
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = !playerid(root,var(58)),gethitvar(fall)
var(3) = 11000

[state 6307, Noodle Arms]
type = varset
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),alive && roundstate = 2
trigger1 = playerid(root,var(58)),gethitvar(fall)
var(3) = -1

[state 6307, Noodle Arms]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(3) > 0
name = "Noodle Arms"
ID = floor(fvar(0) := 6310123) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6307, ???]
type = varset
trigger1 = 0
var(4) = 1500

[state 6307, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310124) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Jest >========================
[state 6307, Jest]
type = varadd
trigger1 = root,stateno = 920
trigger1 = root,time <= 1
var(5) = 1000

[state 6307, Jest]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(5) >= 3000
name = "Jest"
ID = floor(fvar(0) := 6310125) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Joker >========================
[state 6307, Joker]
type = varadd
trigger1 = root,stateno = 920
trigger1 = root,time <= 1
var(6) = 1000

[state 6307, Joker]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(6) >= 6000
name = "Joker"
ID = floor(fvar(0) := 6310126) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Comedian >========================
[state 6307, Comedian]
type = varadd
trigger1 = root,stateno = 920
trigger1 = root,time <= 1
var(7) = 1000

[state 6307, Comedian]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(7) >= 9000
name = "Comedian"
ID = floor(fvar(0) := 6310127) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Statue of Liberty >========================
[state 6307, Statue of Liberty]
type = varset
trigger1 = !time
var(8) = 187500

[state 6307, Statue of Liberty]
type = varset
trigger1 = root,gethitvar(fall)
var(8) = -1

[state 6307, Statue of Liberty]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(8) > 0
name = "Statue of Liberty"
ID = floor(fvar(0) := 6310128) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Tactician >========================
[state 6307, Tactician]
type = varset
trigger1 = var(9) < 10
var(9) = root,var(51)

[state 6307, Tactician]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(9) >= 10
trigger1 = var(9) := var(9) * 1000
name = "Tactician"
ID = floor(fvar(0) := 6310129) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< No Soup >========================
[state 6307, No Soup]
type = varset
trigger1 = numenemy && !root,movehit
trigger1 = enemynear,prevstateno != 5120 || enemynear,time > 16
var(10) = 0

[state 6307, No Soup]
type = varset
trigger1 = numenemy && !var(10) && root,movetype = A
trigger1 = enemynear,prevstateno = 5120 && enemynear,time <= 16
var(10) = 1

[state 6307, No Soup]
type = varset
trigger1 = var(10)
trigger1 = numenemy && root,var(2) = root,hitpausetime
var(10) = var(10) * 1000

[state 6307, No Soup]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(10) >= 1000
name = "No Soup"
ID = floor(fvar(0) := 6310130) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< No! >========================
[state 6307, No!]
type = varadd
trigger1 = fvar(2) && numenemy
trigger1 = root,var(2) = root,hitpausetime
trigger1 = enemynear,movetype = H && enemynear,time <= 1
var(11) = 1

[state 6307, No!]
type = varset
trigger1 = numenemy
trigger1 = enemynear,stateno = [1000, 2999]
trigger1 = enemynear,movetype = A
fvar(2) = 1

[state 6307, No!]
type = varset
trigger1 = numenemy
trigger1 = enemynear,movetype != A
fvar(2) = 0

[state 6307, No!]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(11) >= 3
trigger1 = var(11) := 1000
name = "No!"
ID = floor(fvar(0) := 6310131) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< I Said No! >========================
[state 6307, I Said No!]
type = varadd
trigger1 = fvar(3) && numenemy
trigger1 = root,var(2) = root,hitpausetime
trigger1 = enemynear,movetype = H && enemynear,time <= 1
var(12) = 1

[state 6307, No!]
type = varset
trigger1 = numenemy
trigger1 = enemynear,stateno = [3000, 3999]
trigger1 = enemynear,movetype = A
fvar(3) = 1

[state 6307, No!]
type = varset
trigger1 = numenemy
trigger1 = enemynear,movetype != A
fvar(3) = 0

[state 6307, I Said No!]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(12) >= 3
trigger1 = var(12) := 5000
name = "I Said No!"
ID = floor(fvar(0) := 6310132) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< No Means No! >========================
[state 6307, No Means No!]
type = varset
trigger1 = var(13) >= 0 && fvar(4) && numenemy
trigger1 = root,var(2) = root,hitpausetime
trigger1 = enemynear,movetype = H && enemynear,time <= 1
var(13) = 10000

[state 6307, No Means No!]
type = varset
trigger1 = var(13) >= 0 && numenemy
trigger1 = enemynear,stateno = [3000, 3999]
trigger1 = enemynear,movetype != H
fvar(4) = 1

[state 6307, No Means No!]
type = varset
trigger1 = var(13) >= 0 && numenemy
trigger1 = enemynear,stateno = [3000, 3999]
trigger1 = enemynear,movetype = H
fvar(4) = 0

[state 6307, No Means No!]
type = varset
trigger1 = numenemy
trigger1 = enemynear,prevstateno = [3000, 3999]
trigger1 = enemynear,movetype != H
var(13) = -1

[state 6307, No Means No!]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(13) > 0
name = "No Means No!"
ID = floor(fvar(0) := 6310133) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< With a Full Tank >========================
[state 6307, With a Full Tank]
type = varset
trigger1 = winko && roundstate >= 4
trigger1 = root,power = root,powermax
var(14) = 5000

[state 6307, With a Full Tank]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(14) > 0
name = "With a Full Tank"
ID = floor(fvar(0) := 6310134) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< The Air up There >========================
[state 6307, The Air up There]
type = varadd
trigger1 = root,var(58) && playeridexist(root,var(58)) && roundstate = 2
trigger1 = playerid(root,var(58)),movetype = H && playerid(root,var(58)),statetype = A
var(15) = 1

[state 6307, The Air up There]
type = varset
triggerall = var(15) < 120
triggerall = var(15) && root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),movetype != H
trigger2 = playerid(root,var(58)),statetype != A
trigger3 = playerid(root,var(58)),gethitvar(isbound)
var(15) = 0

[state 6307, The Air up There]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(15) >= 120
trigger1 = var(15) := var(15) * 100
name = "The Air up There"
ID = floor(fvar(0) := 6310135) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Low Orbit >========================
[state 6307, Low Orbit]
type = varset
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),movetype = H && playerid(root,var(58)),screenpos y < 0
var(16) = 3000

[state 6307, Low Orbit]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(16)
name = "Low Orbit"
ID = floor(fvar(0) := 6310136) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Deep Roots >========================
[state 6307, Deep Roots]
type = varset
trigger1 = !time
var(17) = 20000

[state 6307, Deep Roots]
type = varset
triggerall = root,var(59) && root,movetype != H
trigger1 = root,stateno = 40
trigger2 = root,stateno = 50 && root,prevstateno = 40
trigger3 = root,statetype = A || root,pos y < -16
var(17) = -1

[state 6307, Deep Roots]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(17) > 0
name = "Deep Roots"
ID = floor(fvar(0) := 6310137) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< The Magna Carta >========================
[state 6307, The Magna Carta]
type = varset
triggerall = wintime && roundstate >= 4
trigger1 = numenemy = 1
trigger1 = enemy,life > enemy,lifemax * 0.5
trigger2 = numenemy = 2
trigger2 = enemy(0),life + enemy(1),life > (enemy(0),lifemax + enemy(1),lifemax) * 0.5
var(18) = 30000

[state 6307, The Magna Carta]
type = helper
triggerall = fvar(1) = 1
trigger1 = wintime && roundstate >= 4
trigger1 = var(18)
name = "The Magna Carta"
ID = floor(fvar(0) := 6310138) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Houston, We Have Take Off! >========================
[state 6307, Houston, We Have Take Off!]
type = varset
trigger1 = root,stateno = 50 && root,prevstateno = 40
trigger1 = root,ctrl && root,time <= 1
var(19) = 1

[state 6307, Houston, We Have Take Off!]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(19) >= 100
trigger1 = var(19) := var(19) * 100
name = "Houston, We Have Take Off!"
ID = floor(fvar(0) := 6310139) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6307, ???]
type = varset
trigger1 = 0
var(20) = 50000

[state 6307, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && winperfect && roundstate >= 4
trigger1 = var(20)
name = "???"
ID = floor(fvar(0) := 6310140) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Osteoporosis >========================
[state 6307, Osteoporosis]
type = varset
trigger1 = !time
var(21) = 12000

[state 6307, Osteoporosis]
type = varset
trigger1 = root,stateno = [10, 12]
trigger2 = root,stateno = 50 && root,prevstateno = 40
var(21) = 0

[state 6307, Osteoporosis]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(21)
name = "Osteoporosis"
ID = floor(fvar(0) := 6310141) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Claustrophobia >========================
[state 6307, Claustrophobia]
type = varadd
trigger1 = root,backedgebodydist <= 32
trigger1 = root,movetype = H && root,var(53) - root,life > 0
var(22) = 1

[state 6307, Claustrophobia]
type = varset
triggerall = var(22) < 7
trigger1 = root,backedgebodydist > 32
trigger2 = root,movetype != H
var(22) = 0

[state 6307, Claustrophobia]
type = helper
triggerall = fvar(1) = 1
trigger1 = root,movetype != H
trigger1 = var(22) >= 7
trigger1 = var(22) := -var(22) * 100
name = "Claustrophobia"
ID = floor(fvar(0) := 6310142) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Temper Tantrum >========================
[state 6307, Temper Tantrum]
type = varset
trigger1 = losetime
trigger1 = root,backedgebodydist <= 16 || root,frontedgebodydist <= 16
var(23) = -10000

[state 6307, Temper Tantrum]
type = helper
triggerall = fvar(1) = 1
trigger1 = losetime && roundstate >= 4
trigger1 = var(23)
name = "Temper Tantrum"
ID = floor(fvar(0) := 6310143) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< People-Person >========================
[state 6307, People-Person]
type = varset
triggerall = loseko
trigger1 = p2name = "Dan Hibiki" || p4name = "Dan Hibiki"
trigger2 = p2name = "CvSDan" || p4name = "CvSDan"
trigger3 = p2name = "Chun-Li, but a robot or something" || p4name = "Chun-Li, but a robot or something"
trigger4 = p2name = "Shaq" || p4name = "Shaq"
trigger5 = p2name = "Shang Tsung" || p4name = "Shang Tsung"
var(24) = -10000

[state 6307, People-Person]
type = helper
triggerall = fvar(1) = 1
trigger1 = loseko && roundstate >= 4
trigger1 = var(24)
name = "People-Person"
ID = floor(fvar(0) := 6310144) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< You Are a Big Fool >========================
[state 6307, You Are a Big Fool]
type = varset
triggerall = loseko
trigger1 = p2name = "Gen" || p4name = "Gen"
trigger2 = p2name = "CvSGen" || p4name = "CvSGen"
trigger3 = p2name = "Master Gen" || p4name = "Master Gen"
var(25) = -1000

[state 6307, You Are a Big Fool]
type = helper
triggerall = fvar(1) = 1
trigger1 = loseko && roundstate >= 4
trigger1 = var(25)
name = "You Are a Big Fool"
ID = floor(fvar(0) := 6310145) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Crash Landing >========================
[state 6307, Crash Landing]
type = varadd
trigger1 = var(26) >= 0 && fvar(5) && numenemy
trigger1 = root,var(2) = root,hitpausetime
trigger1 = enemynear,movetype = H && enemynear,time <= 1
var(26) = 1

[state 6307, Crash Landing]
type = varset
trigger1 = var(26) >= 0 && numenemy
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype != H
fvar(5) = 1

[state 6307, Crash Landing]
type = varset
triggerall = var(26) >= 0 && numenemy
trigger1 = enemynear,statetype = A && enemynear,movetype = H
trigger2 = enemynear,statetype != A
fvar(5) = 0

[state 6307, Crash Landing]
type = helper
triggerall = fvar(1) = 1
trigger1 = numenemy
trigger1 = enemynear,statetype != A
trigger1 = var(26) >= 10
trigger1 = var(26) := 4000
name = "Crash Landing"
ID = floor(fvar(0) := 6310146) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Fire Extinguisher >========================
[state 6307, Fire Extinguisher]
type = varadd
trigger1 = root,stateno = [910, 912]
trigger1 = root,time <= 1 && root,var(0) % 2 = 0
var(27) = 1

[state 6307, Fire Extinguisher]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(27) >= 5
trigger1 = var(27) := 9000
name = "Fire Extinguisher"
ID = floor(fvar(0) := 6310147) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Can't Touch This >========================
[state 6307, Can't Touch This]
type = varadd
trigger1 = root,var(59) && root,stateno = 811
trigger1 = root,time = 2
var(28) = 1

[state 6307, Can't Touch This]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(28) >= 5
trigger1 = var(28) := 9000
name = "Can't Touch This"
ID = floor(fvar(0) := 6310148) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Crash Test Dummy >========================
[state 6307, Crash Test Dummy]
type = varadd
trigger1 = !root,var(59) && root,gethitvar(isbound)
trigger1 = root,time = 2
var(29) = 1

[state 6307, Crash Test Dummy]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(29) >= 5
trigger1 = var(29) := -2000
name = "Crash Test Dummy"
ID = floor(fvar(0) := 6310149) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Secret Code >========================
[state 6307, Secret Code]
type = varset
trigger1 = !var(30) && roundstate = 2
trigger1 = root,command = "back"
var(30) = 1 + floor(0 * (fvar(6) := 32))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 1 && fvar(6) && roundstate = 2
trigger1 = root,command = "down"
var(30) = 2 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 2 && fvar(6) && roundstate = 2
trigger1 = root,command = "back"
var(30) = 3 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 3 && fvar(6) && roundstate = 2
trigger1 = root,command = "fwd"
var(30) = 4 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 4 && fvar(6) && roundstate = 2
trigger1 = root,command = "x"
var(30) = 5 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 5 && fvar(6) && roundstate = 2
trigger1 = root,command = "x"
var(30) = 6 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 6 && fvar(6) && roundstate = 2
trigger1 = root,command = "y"
var(30) = 7 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varset
trigger1 = var(30) = 7 && fvar(6) && roundstate = 2
trigger1 = root,command = "z"
var(30) = 8 + floor(0 * (fvar(6) := fvar(6) + 8))

[state 6307, Secret Code]
type = varadd
trigger1 = fvar(6)
fvar(6) = -1

[state 6307, Secret Code]
type = varset
trigger1 = !fvar(6) && var(30) < 8
var(30) = 0

[state 6307, Secret Code]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(30) >= 8
trigger1 = var(30) := 10000
name = "Secret Code"
ID = floor(fvar(0) := 6310150) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Child Abuser >========================
[state 6307, Child Abuser]
type = varadd
triggerall = root,var(51) >= 1 && root,var(58) && playeridexist(root,var(58))
triggerall = playerid(root,var(58)),movetype = H && playerid(root,var(58)),stateno = [5000, 5999]
triggerall = playerid(root,var(58)),gethitvar(hitshaketime) && playerid(root,var(58)),gethitvar(hitcount) >= 2
triggerall = playerid(root,var(58)),time <= 1
trigger1 = playerid(root,var(58)),name = "Miyako" || playerid(root,var(58)),name = "RajaaMiyako"
trigger2 = playerid(root,var(58)),name = "Miyako Arima" || playerid(root,var(58)),name = "Arima Miyako"
trigger3 = playerid(root,var(58)),name = "Bao" || playerid(root,var(58)),name = "Len" || playerid(root,var(58)),name = "White Len"
trigger4 = playerid(root,var(58)),name = "Sakura" || playerid(root,var(58)),name = "Mel Masters"
var(31) = -100

[state 6307, Child Abuser]
type = helper
triggerall = 0 ; fvar(1) = 1
trigger1 = cond(playeridexist(root,var(58)), playerid(root,var(58)),movetype != H || !playerid(root,var(58)),alive && !playerid(root,var(58)),gethitvar(hitshaketime), 0)
trigger1 = var(31)
name = "Child Abuser"
ID = floor(fvar(0) := 6310151) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Medium Rare >========================
[state 6307, Medium Rare]
type = varadd
trigger1 = roundstate = 2
trigger1 = p2name = "Rare Akuma" || p4name = "Rare Akuma"
var(32) = 1

[state 6307, Medium Rare]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(32) >= 300
name = "Medium Rare"
ID = floor(fvar(0) := 6310152) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Mind Reader >========================
[state 6307, Mind Reader]
type = varadd
trigger1 = fvar(7) && root,var(2) = root,hitpausetime
trigger1 = root,movehit = 1 && root,hitdefattr != SCA,AT
var(33) = 1

[state 6307, Mind Reader]
type = varset
trigger1 = 1
fvar(7) = p2movetype = A

[state 6307, Mind Reader]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(33) >= 15
name = "Mind Reader"
ID = floor(fvar(0) := 6310153) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Beginner's Luck >========================
[state 6307, Beginner's Luck]
type = varadd
trigger1 = fvar(8)
trigger1 = root,movetype = H && root,time <= 1
var(34) = 100

[state 6307, Beginner's Luck]
type = varset
trigger1 = root,stateno = [910, 913]
fvar(8) = 1

[state 6307, Beginner's Luck]
type = varset
trigger1 = !numhelper(917)
trigger2 = fvar(9) >= 4 ; but, no cigar?
fvar(8) = 0

[state 6307, Beginner's Luck]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(34)
name = "Beginner's Luck"
ID = floor(fvar(0) := 6310154) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< But, No Cigar? >========================
[state 6307, But, No Cigar?]
type = varadd
trigger1 = fvar(9) >= 4
trigger1 = root,movetype = H && root,time <= 1
var(35) = -500

[state 6307, But, No Cigar?]
type = varadd
trigger1 = root,stateno = [910, 913]
trigger1 = root,time = 1
fvar(9) = 1

[state 6307, But, No Cigar?]
type = varset
trigger1 = !numhelper(917)
fvar(9) = 0

[state 6307, But, No Cigar?]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(35)
name = "But, No Cigar?"
ID = floor(fvar(0) := 6310155) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Happy Feet >========================
[state 6307, Happy Feet]
type = varadd
trigger1 = root,stateno = 900 && root,var(2) = root,hitpausetime
trigger1 = root,movehit = 1
var(36) = 1

[state 6307, Happy Feet]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(36) >= 5
trigger1 = var(36) := 13000
name = "Happy Feet"
ID = floor(fvar(0) := 6310156) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Red You Like a Book >========================
[state 6307, Red You Like a Book]
type = varadd
trigger1 = root,stateno = [910, 912]
trigger1 = root,time <= 1 && root,var(0) = [3, 4]
var(37) = 1

[state 6307, Red You Like a Book]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(37) >= 3
trigger1 = var(37) := 10000
name = "Red You Like a Book"
ID = floor(fvar(0) := 6310157) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Bearing the Cross >========================
[state 6307, Bearing the Cross]
type = varset
triggerall = var(38) && var(38) != 9000 && numenemy
triggerall = root,command != "holdback" || enemynear,movetype = A && root,p2dist x != [-enemynear,const(size.attack.dist), enemynear,const(size.attack.dist)]
trigger1 = root,statetype != A || enemynear,statetype != A
trigger2 = !enemynear,hitpausetime
trigger2 = enemynear,movehit = 1 || root,facing = enemynear,facing
var(38) = 0

[state 6307, Bearing the Cross]
type = varset
trigger1 = numenemy && root,statetype != A && var(38) != 9000
trigger1 = enemynear,statetype = A && enemynear,movetype = A
trigger1 = (enemynear,pos x - root,pos x) *  root,facing < 16
trigger1 = root,facing != enemynear,facing
var(38) = 1

[state 6307, Bearing the Cross]
type = varset
trigger1 = var(38) = 1
trigger1 = root,gethitvar(guarded)
trigger1 = root,gethitvar(hitshaketime)
var(38) = 9000

[state 6307, Bearing the Cross]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(38) >= 3
name = "Bearing the Cross"
ID = floor(fvar(0) := 6310158) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< The God Delusion >========================
[state 6307, The God Delusion]
type = varset
trigger1 = fvar(10) && numenemy
trigger1 = enemy,movetype = H
var(39) = 10000

[state 6307, The God Delusion]
type = varset
triggerall = numenemy
triggerall = p2name = "Gill" || p4name = "Gill"
triggerall = enemy,authorname = "GM" || var(54) = [1, 2]
trigger1 = enemy,stateno = 3000
fvar(10) = 1

[state 6307, The God Delusion]
type = varset
triggerall = numenemy
triggerall = p2name = "Gill" || p4name = "Gill"
triggerall = enemy,authorname = "GM" || var(54) = [1, 2]
; trigger1 = enemy,movetype != H && enemy,prevstateno != 3000
trigger1 = enemy,stateno != 3000
fvar(10) = 0

[state 6307, The God Delusion]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(39)
name = "The God Delusion"
ID = floor(fvar(0) := 6310159) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 1

;========================< Who's Laughing Now? >========================
[state 6307, Who's Laughing Now?]
type = varadd
triggerall = numenemy && var(40) >= 0
triggerall = enemy,time <= 1
triggerall = enemy,stateno = 195
trigger1 = enemy,authorname != "RajaaBoy"
; trigger1 = enemy,authorname != "YourName"
var(40) = 1

[state 6307, Who's Laughing Now?]
type = varadd
triggerall = numenemy && var(40) >= 0
triggerall = enemy,time <= 1
triggerall = enemy,stateno = 199 || enemy,stateno = 920
trigger1 = enemy,authorname = "RajaaBoy"
; trigger2 = enemy,authorname = "YourName"
var(40) = 1

[state 6307, Who's Laughing Now?]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(40) >= 5
trigger1 = var(40) := 7000
name = "Who's Laughing Now?"
ID = floor(fvar(0) := 6310160) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Pro Wrestler >========================
[state 6307, Pro Wrestler]
type = varset
trigger1 = var(41) >= 0
trigger1 = root,movetype = A && root,hitdefattr = SCA,AT
var(41) = 8000

[state 6307, Pro Wrestler]
type = varset
trigger1 = root,movetype = A && root,hitdefattr = SCA,AA,AP
var(41) = -1

[state 6307, Pro Wrestler]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(41) > 0
name = "Pro Wrestler"
ID = floor(fvar(0) := 6310161) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Showoff >========================
[state 6307, Showoff]
type = varadd
trigger1 = numenemy && roundstate = 2
trigger1 = enemynear,movetype = A
trigger1 = root,stateno = 920 && root,time <= 1
var(42) = 1000

[state 6307, Showoff]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(42)
name = "Showoff"
ID = floor(fvar(0) := 6310162) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Moonwalker >========================
[state 6307, Moonwalker]
type = varadd
triggerall = roundstate = 2
trigger1 = root,vel x < 0
var(43) = 1

[state 6307, Moonwalker]
type = varset
trigger1 = root,time > 1 && !numhelper(6205)
trigger1 = root,vel x >= 0
var(43) = 0

[state 6307, Moonwalker]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(43) >= 180
trigger1 = var(43) := var(43) * 100
name = "Moonwalker"
ID = floor(fvar(0) := 6310163) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Pursuit Of Flight >========================
[state 6307, Pursuit Of Flight]
type = varset
trigger1 = var(44) >= 0 && root,statetype = A
trigger1 = root,movetype = A && root,time <= 1
var(44) = 4000

[state 6307, Pursuit Of Flight]
type = varset
trigger1 = root,statetype != A
trigger1 = root,movetype = A && root,time <= 1
var(44) = -1

[state 6307, Pursuit Of Flight]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(44) > 0
name = "Pursuit Of Flight"
ID = floor(fvar(0) := 6310164) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Hacky Sacked >========================
[state 6307, Hacky Sacked]
type = varset
triggerall = loseko && roundstate >= 4
trigger1 = p2name = "Haohmaro" || p4name = "Haohmaro"
trigger2 = p2name = "CvSHaohmaro" || p4name = "CvSHaohmaro"
trigger3 = p2name = "Nakoruru" || p4name = "Nakoruru"
trigger4 = p2name = "CvSNakoruru" || p4name = "CvSNakoruru"
trigger5 = p2name = "Ky Kyske" || p4name = "Ky Kyske"
trigger6 = p2name = "Sol Badguy" || p4name = "Sol Badguy"
trigger7 = p2name = "Bishamon" || p4name = "Bishamon"
trigger8 = p2name = "Strider Hiryu" || p4name = "Strider Hiryu"
trigger9 = p2name = "Silver Samurai" || p4name = "Silver Samurai"
trigger10 = p2name = "Shiki Tohno" || p4name = "Shiki Tohno"
trigger11 = p2name = "Tohno Shiki" || p4name = "Tohno Shiki"
trigger12 = p2name = "RajaaShiki" || p4name = "RajaaShiki"
trigger13 = p2name = "Shiki Nanaya" || p4name = "Shiki Nanaya"
trigger14 = p2name = "Nanaya Shiki" || p4name = "Nanaya Shiki"
var(45) = -8000

[state 6307, Hacky Sacked]
type = helper
triggerall = fvar(1) = 1
trigger1 = loseko && roundstate >= 4
trigger1 = var(45) > 0
name = "Hacky Sacked"
ID = floor(fvar(0) := 6310165) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< French Maid >========================
[state 6307, French Maid]
type = varadd
trigger1 = numenemy && root,var(2) = root,hitpausetime
trigger1 = enemynear,gethitvar(hitshaketime) && enemynear,gethitvar(groundtype) = 3
trigger1 = root,movehit = 1
var(46) = 1

[state 6307, French Maid]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(46) >= 5
trigger1 = var(46) := var(46) * 1000
name = "French Maid"
ID = floor(fvar(0) := 6310166) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Force Field >========================
[state 6307, Force Field]
type = varadd
trigger1 = root,stateno = [910, 912]
trigger1 = root,time <= 1 && root,var(0) % 2 = 0
var(47) = 1

[state 6307, Force Field]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(47) >= 10
trigger1 = var(47) := 18000
name = "Force Field"
ID = floor(fvar(0) := 6310167) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Superiority Complex >========================
[state 6307, Superiority Complex]
type = varset
trigger1 = root,var(58) && playeridexist(root,var(58))
trigger1 = playerid(root,var(58)),backedgebodydist <= 32
trigger1 = playerid(root,var(58)),movetype = H
var(48) = root,var(51)

[state 6307, Superiority Complex]
type = varset
triggerall = var(48) < 6
trigger1 = !playeridexist(root,var(58))
trigger2 = root,var(58) && playeridexist(root,var(58))
trigger2 = playerid(root,var(58)),backedgebodydist > 32 || playerid(root,var(58)),movetype != H
var(48) = 0

[state 6307, Superiority Complex]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(48) >= 6
trigger1 = var(48) := 18000
name = "Superiority Complex"
ID = floor(fvar(0) := 6310168) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Happy Camper >========================
[state 6307, Happy Camper]
type = varadd
trigger1 = roundstate = 2
trigger1 = fvar(11) = fvar(12)
var(49) = 1

[state 6307, Happy Camper]
type = varset
trigger1 = !root,vel x
fvar(11) = (fvar(12) := root,pos x)

[state 6307, Happy Camper]
type = varset
trigger1 = fvar(11) != fvar(12)
var(49) = 0

[state 6307, Happy Camper]
type = varset
trigger1 = root,vel x || fvar(11) != root,pos x
fvar(12) = root,pos x

[state 6307, Happy Camper]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(49) >= 600
trigger1 = var(49) := 100 * floor(var(49) / 100.0)
name = "Happy Camper"
ID = floor(fvar(0) := 6310169) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Off My Lawn >========================
[state 6307, Off My Lawn]
type = varset
trigger1 = !fvar(13)
fvar(13) = root,facing

[state 6307, Off My Lawn]
type = varset
trigger1 = var(50) >= 0
trigger1 = winko && roundstate >= 4
var(50) = 6000

[state 6307, Off My Lawn]
type = varset
triggerall = roundstate >= 2
trigger1 = root,facing != floor(fvar(13))
trigger2 = root,backedgedist > root,frontedgedist
var(50) = -1

[state 6307, Off My Lawn]
type = varset
trigger1 = roundstate >= 3 && !playeridexist(root,var(58))
trigger2 = numenemy
trigger2 = enemynear,stateno = 5030 && enemynear,time <= 1
trigger2 = enemynear,hitover && enemynear,prevstateno != [5000, 5999]
var(50) = -1

[state 6307, Off My Lawn]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(50) > 0
name = "Off My Lawn"
ID = floor(fvar(0) := 6310170) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Playing Possum >========================
[state 6307, Playing Possum]
type = varset
triggerall = var(51) >= 0 && roundstate = 2 && root,life <= root,lifemax * 0.5
trigger1 = root,command = "a" || root,command = "b" || root,command = "c"
trigger2 = root,command = "x" || root,command = "y" || root,command = "z"
trigger3 = root,command = "up" || root,command = "down" || root,command = "back" || root,command = "fwd"
trigger4 = root,command = "start"
var(51) = 99000

[state 6307, Playing Possum]
type = varset
triggerall = roundstate = 2 && root,life > root,lifemax * 0.5
trigger1 = root,command = "a" || root,command = "b" || root,command = "c"
trigger2 = root,command = "x" || root,command = "y" || root,command = "z"
trigger3 = root,command = "up" || root,command = "down" || root,command = "back" || root,command = "fwd"
trigger4 = root,command = "start"
var(51) = -1

[state 6307, Playing Possum]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(51) > 0
name = "Playing Possum"
ID = floor(fvar(0) := 6310171) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Lord of the Manor >========================
[state 6307, Lord of the Manor]
type = varset
trigger1 = !time
var(52) = 9000

[state 6307, Lord of the Manor]
type = varset
trigger1 = root,stateno = [3000, 3999]
trigger1 = root,var(59) && root,movetype != H
var(52) = -1

[state 6307, Lord of the Manor]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(52) > 0
name = "Lord of the Manor"
ID = floor(fvar(0) := 6310172) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6307, ???]
type = varset
trigger1 = 0
var(53) = 1500

[state 6307, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310173) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Living Proof >========================
[state 6307, Living Proof]
type = varset
trigger1 = root,var(53) - root,life > root,lifemax * 0.5
var(54) = 5000

[state 6307, Living Proof]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(54)
name = "Living Proof"
ID = floor(fvar(0) := 6310174) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Fair Chance >========================
[state 6307, Fair Chance]
type = varadd
trigger1 = numenemy
trigger1 = enemynear,backedgedist < enemynear,frontedgedist
trigger1 = root,p2dist x <= 128
trigger1 = enemynear,stateno = 5120 && enemynear,time <= 1
trigger1 = root,stateno = 20 && root,vel x < 0
var(55) = 2000

[state 6307, Fair Chance]
type = helper
triggerall = fvar(1) = 1
trigger1 = var(55)
name = "Fair Chance"
ID = floor(fvar(0) := 6310175) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Love Taps >========================
[state 6307, Love Taps]
type = varset
triggerall = var(56) >= 0 && root,var(2) = root,hitpausetime
triggerall = root,movehit = 1 && root,stateno = [200, 699]
trigger1 = root,stateno % 200 = [0, 5]
trigger2 = root,stateno % 200 = [30, 35]
var(56) = 9000

[state 6307, Love Taps]
type = varset
triggerall = var(56) >= 0 && root,var(2) = root,hitpausetime
triggerall = root,movehit = 1
trigger1 = root,stateno != [200, 699]
trigger2 = root,stateno % 200 != [0, 5]
trigger2 = root,stateno % 200 != [30, 35]
var(56) = -1

[state 6307, Love Taps]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(56) > 0
name = "Love Taps"
ID = floor(fvar(0) := 6310176) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Pot Shots >========================
[state 6307, Pot Shots]
type = varset
triggerall = var(57) >= 0 && root,var(2) = root,hitpausetime
triggerall = root,movehit = 1 && root,stateno = [200, 699]
trigger1 = root,stateno % 200 = [10, 15]
trigger2 = root,stateno % 200 = [40, 45]
var(57) = 18000

[state 6307, Pot Shots]
type = varset
triggerall = var(57) >= 0 && root,var(2) = root,hitpausetime
triggerall = root,movehit = 1
trigger1 = root,stateno != [200, 699]
trigger2 = root,stateno % 200 != [10, 15]
trigger2 = root,stateno % 200 != [40, 45]
var(57) = -1

[state 6307, Pot Shots]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(57) > 0
name = "Pot Shots"
ID = floor(fvar(0) := 6310177) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Hard Hitter >========================
[state 6307, Hard Hitter]
type = varset
triggerall = var(58) >= 0 && root,var(2) = root,hitpausetime
triggerall = root,movehit = 1 && root,stateno = [200, 699]
trigger1 = root,stateno % 200 = [20, 25]
trigger2 = root,stateno % 200 = [50, 55]
var(58) = 36000

[state 6307, Hard Hitter]
type = varset
triggerall = var(58) >= 0 && root,var(2) = root,hitpausetime
triggerall = root,movehit = 1
trigger1 = root,stateno != [200, 699]
trigger2 = root,stateno % 200 != [20, 25]
trigger2 = root,stateno % 200 != [50, 55]
var(58) = -1

[state 6307, Hard Hitter]
type = helper
triggerall = fvar(1) = 1
trigger1 = winko && roundstate >= 4
trigger1 = var(58) > 0
name = "Hard Hitter"
ID = floor(fvar(0) := 6310178) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< ??? >========================
[state 6307, ???]
type = varset
trigger1 = 0
var(59) = 1500

[state 6307, ???]
type = helper
triggerall = fvar(1) = 1
trigger1 = 0
name = "???"
ID = floor(fvar(0) := 6310179) + 0 * floor(fvar(1) := -1)
stateno = 6310
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647
persistent = 0

;========================< Generate Bonus >========================
[state 6307, Record Bonus]
type = parentvaradd
trigger1 = fvar(0) >= 6310120 && numhelper(floor(fvar(0)))
trigger1 = !helper(floor(fvar(0))),time
var(20) = var(floor(fvar(0) - 6310120))

[state 6307, Reset Queue]
type = varset
trigger1 = fvar(0)
trigger1 = !numhelper(floor(fvar(0)))
fvar(0) = 0

;========================< Reset Extra Score System >========================

[state 6307, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6307, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Score Message
;=========================================================================
[Statedef 6310]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6310, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(5) && !helper(4000),var(37), 0)
trigger2 = cond(numhelper(4000), !helper(4000),var(8) && !helper(4000),var(37), 0)
trigger3 = numhelper(6610)
trigger4 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger5 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger7 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger8 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)
; Combo Bonus
trigger9 = time
trigger9 = !ishelper(6310001) && !ishelper(6310002)
trigger9 = numhelper(6310001) || numhelper(6310002)
trigger10 = time
trigger10 = ishelper(6310001) || ishelper(6310002)
trigger10 = numhelper(6310001) + numhelper(6310002) >= 2

[state 6310, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(5) && !helper(4000),var(37), 0)
trigger2 = cond(numhelper(4000), !helper(4000),var(8) && !helper(4000),var(37), 0)
trigger3 = numhelper(6610)
trigger4 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger5 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger7 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger8 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)
; Combo Bonus
trigger9 = time
trigger9 = !ishelper(6310001) && !ishelper(6310002)
trigger9 = numhelper(6310001) || numhelper(6310002)
trigger10 = time
trigger10 = ishelper(6310001) || ishelper(6310002)
trigger10 = numhelper(6310001) + numhelper(6310002) >= 2

[state 6310, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6310, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 64, -12

;========================< Initialize Extra Score Message System >========================

[state 6310, Position & Size of Score Messages]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(9), cond(teamside = 1, 0, 320)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(10), 48) || 1
trigger1 = fvar(37) := cond(numhelper(6315), fvar(37) + 24 * (helper(6315),numexplod > 0), fvar(37)) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(2), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(3), 1.0)

;========================< Calculate Extra Score >========================

[state 6310, Record Bonus]
type = null
triggerall = !time
trigger1 = numhelper(6305)
trigger1 = helper(6305),fvar(0) >= 6310000
trigger1 = parent,ishelper(6305)
trigger1 = var(0) := helper(6305),var(floor(helper(6305),fvar(0) - 6310000))
trigger2 = numhelper(6306)
trigger2 = helper(6306),fvar(0) >= 6310060
trigger2 = parent,ishelper(6306)
trigger2 = var(0) := helper(6306),var(floor(helper(6306),fvar(0) - 6310060))
trigger3 = numhelper(6307)
trigger3 = helper(6307),fvar(0) >= 6310120
trigger3 = parent,ishelper(6307)
trigger3 = var(0) := helper(6307),var(floor(helper(6307),fvar(0) - 6310120))

[state 6310, Reset Bonus]
type = parentvarset
triggerall = !time
trigger1 = numhelper(6305)
trigger1 = helper(6305),fvar(0) >= 6310000
trigger1 = parent,ishelper(6305)
var(floor(helper(6305),fvar(0) - 6310000)) = 0

[state 6310, Reset Bonus]
type = parentvarset
triggerall = !time
trigger1 = numhelper(6306)
trigger1 = helper(6306),fvar(0) >= 6310060
trigger1 = parent,ishelper(6306)
var(floor(helper(6306),fvar(0) - 6310060)) = 0

[state 6310, Reset Bonus]
type = parentvarset
triggerall = !time
trigger1 = numhelper(6307)
trigger1 = helper(6307),fvar(0) >= 6310120
trigger1 = parent,ishelper(6307)
var(floor(helper(6307),fvar(0) - 6310120)) = 0

;========================< Configure Number Message >========================

[state 6310, Number Message Duration]
type = varadd
trigger1 = numexplod
fvar(0) = 1

[state 6310, Number Message Slide-in]
type = varadd
trigger1 = numexplod
trigger1 = cond(teamside = 1, fvar(1) < 17, fvar(1) > -17)
fvar(1) = 1 - 2 * (teamside = 2)

[state 6310, Get Place Values]
type = null
trigger1 = var(02) := floor(abs(var(0)) / 1) % 10 || 1
trigger1 = var(03) := floor(abs(var(0)) / 10) % 10 || 1
trigger1 = var(04) := floor(abs(var(0)) / 100) % 10 || 1
trigger1 = var(05) := floor(abs(var(0)) / 1000) % 10 || 1
trigger1 = var(06) := floor(abs(var(0)) / 10000) % 10 || 1
trigger1 = var(07) := floor(abs(var(0)) / 100000) % 10 || 1
trigger1 = var(08) := floor(abs(var(0)) / 1000000) % 10 || 1
trigger1 = var(09) := floor(abs(var(0)) / 10000000) % 10 || 1
trigger1 = var(10) := floor(abs(var(0)) / 100000000) % 10 || 1
trigger1 = var(11) := floor(abs(var(0)) / 1000000000) % 10 || 1

[state 6310, Length of Number]
type = null
trigger1 = fvar(2) := 0 || 1
trigger1 = fvar(2) := fvar(2) + (abs(var(0)) >= 1) + (abs(var(0)) >= 10) || 1
trigger1 = fvar(2) := fvar(2) + (abs(var(0)) >= 100) + (abs(var(0)) >= 1000) || 1
trigger1 = fvar(2) := fvar(2) + (abs(var(0)) >= 10000) + (abs(var(0)) >= 100000) || 1
trigger1 = fvar(2) := fvar(2) + (abs(var(0)) >= 1000000) + (abs(var(0)) >= 10000000) || 1
trigger1 = fvar(2) := fvar(2) + (abs(var(0)) >= 100000000) + (abs(var(0)) >= 1000000000) || 1
trigger1 = fvar(2) := fvar(2) * (fvar(3) := 8.0) || 1 ; fvar(3) is the spacing between characters
trigger1 = fvar(2) := fvar(2) + 36 + 8 * (var(0) < 0) || 1 ; arbitrary positioning (pts included)
trigger1 = fvar(4) := fvar(2) / 17.0 ; speed to slide whole number in after -X- ticks (-X- should be equal to the limit of fvar(1) above)

;========================< Display Number Message on Screen >========================

[state 6310, Modify Numbers]
type = removeexplod
trigger1 = numexplod
trigger1 = fvar(0) <= 64

[state 6310, Points]
type = explod
trigger1 = !numexplod(0) && var(0) && teamside = 1
anim = 6310 + ishelper(6310070)
ID = 0
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Minus]
type = explod
trigger1 = !numexplod(12) && var(0) < 0 && teamside = 2
anim = 6312
ID = 12
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Ones]
type = explod
trigger1 = !numexplod(abs(10 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 1, 1000000000)
anim = 6300 + var(abs(11 - 13 * (teamside = 1)))
ID = abs(10 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Tens]
type = explod
trigger1 = !numexplod(abs(9 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 10, 100000000)
anim = 6300 + var(abs(10 - 13 * (teamside = 1)))
ID = abs(9 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Hundreds]
type = explod
trigger1 = !numexplod(abs(8 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 100, 10000000)
anim = 6300 + var(abs(9 - 13 * (teamside = 1)))
ID = abs(8 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Thousands]
type = explod
trigger1 = !numexplod(abs(7 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 1000, 1000000)
anim = 6300 + var(abs(8 - 13 * (teamside = 1)))
ID = abs(7 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Ten Thousands]
type = explod
trigger1 = !numexplod(abs(6 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 10000, 100000)
anim = 6300 + var(abs(7 - 13 * (teamside = 1)))
ID = abs(6 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Hundred Thousands]
type = explod
trigger1 = !numexplod(abs(5 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 100000, 10000)
anim = 6300 + var(abs(6 - 13 * (teamside = 1)))
ID = abs(5 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Millions]
type = explod
trigger1 = !numexplod(abs(4 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 1000000, 1000)
anim = 6300 + var(abs(5 - 13 * (teamside = 1)))
ID = abs(4 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Ten Millions]
type = explod
trigger1 = !numexplod(abs(3 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 10000000, 100)
anim = 6300 + var(abs(4 - 13 * (teamside = 1)))
ID = abs(3 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Hundred Millions]
type = explod
trigger1 = !numexplod(abs(2 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 100000000, 10)
anim = 6300 + var(abs(3 - 13 * (teamside = 1)))
ID = abs(2 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Billions]
type = explod
trigger1 = !numexplod(abs(1 - 11 * (teamside = 1))) && abs(var(0)) >= cond(teamside = 1, 1000000000, 1)
anim = 6300 + var(abs(2 - 13 * (teamside = 1)))
ID = abs(1 - 11 * (teamside = 1))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Minus]
type = explod
trigger1 = !numexplod(12) && var(0) < 0 && teamside = 1
anim = 6312
ID = 12
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6310, Points]
type = explod
trigger1 = !numexplod(0) && var(0) && teamside = 2
anim = 6310 + ishelper(6310070)
ID = 0
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Reset Score System >========================

[state 6310, Destroy Explod]
type = removeexplod
trigger1 = time > 72
trigger2 = fvar(0) > 64
trigger2 = cond(numhelper(6315), !helper(6315),numexplod, 1)
trigger3 = cond(numhelper(4000), !helper(4000),var(5), 0)

[state 6310, Destroy Helper]
type = destroyself
trigger1 = time > 72
trigger2 = fvar(0) > 64
trigger2 = cond(numhelper(6315), !helper(6315),numexplod, 1)

;=========================================================================
; SF3 Message System
;=========================================================================
[Statedef 6315]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6315, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(8) && !helper(4000),var(37), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)
; Combo Bonus
trigger8 = numhelper(6310001) + numhelper(6310002) >= 2

[state 6315, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(8) && !helper(4000),var(37), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6315, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6315, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -16

;========================< Initialize Message System >========================

[state 6315, Position & Size of Message Texts]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(9), cond(teamside = 1, 0, 311)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(10), 48) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(2), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(3), 1.0)

;========================< Configure Message >========================

[state 6310, Initiate New Message]
type = varset
trigger1 = numhelper(6305)
trigger1 = helper(6305),fvar(0) >= 6310000
trigger1 = helper(6305),numhelper(floor(helper(6305),fvar(0)))
trigger1 = helper(floor(helper(6305),fvar(0))),time <= 1
trigger2 = numhelper(6306)
trigger2 = helper(6306),fvar(0) >= 6310060
trigger2 = helper(6306),numhelper(floor(helper(6306),fvar(0)))
trigger2 = helper(floor(helper(6306),fvar(0))),time <= 1
trigger3 = numhelper(6307)
trigger3 = helper(6307),fvar(0) >= 6310120
trigger3 = helper(6307),numhelper(floor(helper(6307),fvar(0)))
trigger3 = helper(floor(helper(6307),fvar(0))),time <= 1
fvar(0) = (fvar(1) := 0)

[state 6315, Message Duration]
type = varadd
trigger1 = numexplod
fvar(0) = 1

[state 6315, Message Slide-in]
type = varadd
trigger1 = numexplod
trigger1 = cond(teamside = 1, fvar(1) < 12, fvar(1) > -12)
fvar(1) = 1 - 2 * (teamside = 2)

[state 6315, Buffer Time Between Messages]
type = varset
trigger1 = numexplod
sysvar(0) = 60

[state 6315, Hit Counter]
type = varset
trigger1 = root,var(51) >= 2
trigger1 = sysvar(1) != root,var(51)
sysvar(1) = root,var(51)

; 01 = A || 14 = N || 27 = [space]
; 02 = B || 15 = O || 28 = Exclamation Point
; 03 = C || 16 = P || 29 = Question Mark
; 04 = D || 17 = Q || 30 = Comma
; 05 = E || 18 = R || 31 = Apostrophe
; 06 = F || 19 = S || 32 = Hyphen
; 07 = G || 20 = T || 90 = 0 || 97 = 7
; 08 = H || 21 = U || 91 = 1 || 98 = 8
; 09 = I || 22 = V || 92 = 2 || 99 = 9
; 10 = J || 23 = W || 93 = 3
; 11 = K || 24 = X || 94 = 4
; 12 = L || 25 = Y || 95 = 5
; 13 = M || 26 = Z || 96 = 6

;========================< Score Message 1 >========================
[state 6315, Characters of Message String]
type = null
; Cheater
trigger1 = cond(numhelper(6310000), helper(6310000),time <= 1, 0)
trigger1 = var(00) := 03 || var(01) := 08 || var(02) := 05 || var(03) := 01 || var(04) := 20 || var(05) := 05 || 1
trigger1 = var(06) := 18 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger1 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger1 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger1 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Hit Combo
trigger2 = cond(numhelper(6310001), helper(6310001),time <= 1, 0)
trigger2 = var(00) := cond(sysvar(1) >= 10, 90 + floor(sysvar(1) / 10) % 10, 0) || 1
trigger2 = var(01) := 90 + floor(sysvar(1) / 1) % 10 || 1
trigger2 = var(02) := 27 || var(03) := 08 || var(04) := 09 || var(05) := 20 || 1
trigger2 = var(06) := 27 || var(07) := 03 || var(08) := 15 || var(09) := 13 || var(10) := 02 || var(11) := 15 || 1
trigger2 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger2 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger2 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Hit Super Art
trigger3 = cond(numhelper(6310002), helper(6310002),time <= 1, 0)
trigger3 = var(00) := cond(sysvar(1) >= 10, 90 + floor(sysvar(1) / 10) % 10, 0) || 1
trigger3 = var(01) := 90 + floor(sysvar(1) / 1) % 10 || 1
trigger3 = var(02) := 27 || var(03) := 08 || var(04) := 09 || var(05) := 20 || 1
trigger3 = var(06) := 27 || var(07) := 19 || var(08) := 21 || var(09) := 16 || var(10) := 05 || var(11) := 18 || 1
trigger3 = var(12) := 27 || var(13) := 01 || var(14) := 18 || var(15) := 20 || var(16) := 27 * win || var(17) := 06 * win || 1
trigger3 = var(18) := 09 * win || var(19) := 14 * win || var(20) := 09 * win || var(21) := 19 * win || var(22) := 08 * win || var(23) := 00 || 1
trigger3 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; First Attack
trigger4 = cond(numhelper(6310003), helper(6310003),time <= 1, 0)
trigger4 = var(00) := 06 || var(01) := 09 || var(02) := 18 || var(03) := 19 || var(04) := 20 || var(05) := 27 || 1
trigger4 = var(06) := 01 || var(07) := 20 || var(08) := 20 || var(09) := 01 || var(10) := 03 || var(11) := 11 || 1
trigger4 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger4 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger4 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Tech Bonus
trigger5 = cond(numhelper(6310004), helper(6310004),time <= 1, 0)
trigger5 = var(00) := 20 || var(01) := 05 || var(02) := 03 || var(03) := 08 || var(04) := 27 || var(05) := 02 || 1
trigger5 = var(06) := 15 || var(07) := 14 || var(08) := 21 || var(09) := 19 || var(10) := 00 || var(11) := 00 || 1
trigger5 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger5 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger5 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Counter Hit
trigger6 = cond(numhelper(6310005), helper(6310005),time <= 1, 0)
trigger6 = var(00) := 03 || var(01) := 15 || var(02) := 21 || var(03) := 14 || var(04) := 20 || var(05) := 05 || 1
trigger6 = var(06) := 18 || var(07) := 27 || var(08) := 08 || var(09) := 09 || var(10) := 20 || var(11) := 00 || 1
trigger6 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger6 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger6 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Reversal
trigger7 = cond(numhelper(6310006), helper(6310006),time <= 1, 0)
trigger7 = var(00) := 18 || var(01) := 05 || var(02) := 22 || var(03) := 05 || var(04) := 18 || var(05) := 19 || 1
trigger7 = var(06) := 01 || var(07) := 12 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger7 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger7 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger7 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Super Art Finish
trigger8 = cond(numhelper(6310007), helper(6310007),time <= 1, 0)
trigger8 = var(00) := 19 || var(01) := 21 || var(02) := 16 || var(03) := 05 || var(04) := 18 || var(05) := 27 || 1
trigger8 = var(06) := 01 || var(07) := 18 || var(08) := 20 || var(09) := 27 || var(10) := 06 || var(11) := 09 || 1
trigger8 = var(12) := 14 || var(13) := 09 || var(14) := 19 || var(15) := 08 || var(16) := 00 || var(17) := 00 || 1
trigger8 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger8 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Perfect
trigger9 = cond(numhelper(6310008), helper(6310008),time <= 1, 0)
trigger9 = var(00) := 16 || var(01) := 05 || var(02) := 18 || var(03) := 06 || var(04) := 05 || var(05) := 03 || 1
trigger9 = var(06) := 20 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger9 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger9 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger9 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Danger!
trigger10 = cond(numhelper(6310009), helper(6310009),time <= 1, 0)
trigger10 = var(00) := 04 || var(01) := 01 || var(02) := 14 || var(03) := 07 || var(04) := 05 || var(05) := 18 || 1
trigger10 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger10 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger10 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger10 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Ex-ceptional
trigger11 = cond(numhelper(6310010), helper(6310010),time <= 1, 0)
trigger11 = var(00) := 05 || var(01) := 24 || var(02) := 32 || var(03) := 03 || var(04) := 05 || var(05) := 16 || 1
trigger11 = var(06) := 20 || var(07) := 09 || var(08) := 15 || var(09) := 14 || var(10) := 01 || var(11) := 12 || 1
trigger11 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger11 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger11 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Super Artist
trigger12 = cond(numhelper(6310011), helper(6310011),time <= 1, 0)
trigger12 = var(00) := 19 || var(01) := 21 || var(02) := 16 || var(03) := 05 || var(04) := 18 || var(05) := 27 || 1
trigger12 = var(06) := 01 || var(07) := 18 || var(08) := 20 || var(09) := 09 || var(10) := 19 || var(11) := 20 || 1
trigger12 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger12 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger12 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Abstract Super Artist
trigger13 = cond(numhelper(6310012), helper(6310012),time <= 1, 0)
trigger13 = var(00) := 01 || var(01) := 02 || var(02) := 19 || var(03) := 20 || var(04) := 18 || var(05) := 01 || 1
trigger13 = var(06) := 03 || var(07) := 20 || var(08) := 27 || var(09) := 19 || var(10) := 21 || var(11) := 16 || 1
trigger13 = var(12) := 05 || var(13) := 18 || var(14) := 27 || var(15) := 01 || var(16) := 18 || var(17) := 20 || 1
trigger13 = var(18) := 09 || var(19) := 19 || var(20) := 20 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger13 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger14 = cond(numhelper(6310013), helper(6310013),time <= 1, 0)
trigger14 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger14 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger14 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger14 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger14 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger15 = cond(numhelper(6310014), helper(6310014),time <= 1, 0)
trigger15 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger15 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger15 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger15 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger15 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger16 = cond(numhelper(6310015), helper(6310015),time <= 1, 0)
trigger16 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger16 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger16 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger16 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger16 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger17 = cond(numhelper(6310016), helper(6310016),time <= 1, 0)
trigger17 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger17 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger17 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger17 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger17 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger18 = cond(numhelper(6310017), helper(6310017),time <= 1, 0)
trigger18 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger18 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger18 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger18 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger18 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger19 = cond(numhelper(6310018), helper(6310018),time <= 1, 0)
trigger19 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger19 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger19 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger19 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger19 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger20 = cond(numhelper(6310019), helper(6310019),time <= 1, 0)
trigger20 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger20 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger20 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger20 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger20 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger21 = cond(numhelper(6310020), helper(6310020),time <= 1, 0)
trigger21 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger21 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger21 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger21 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger21 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger22 = cond(numhelper(6310021), helper(6310021),time <= 1, 0)
trigger22 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger22 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger22 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger22 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger22 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger23 = cond(numhelper(6310022), helper(6310022),time <= 1, 0)
trigger23 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger23 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger23 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger23 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger23 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger24 = cond(numhelper(6310023), helper(6310023),time <= 1, 0)
trigger24 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger24 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger24 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger24 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger24 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger25 = cond(numhelper(6310024), helper(6310024),time <= 1, 0)
trigger25 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger25 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger25 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger25 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger25 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger26 = cond(numhelper(6310025), helper(6310025),time <= 1, 0)
trigger26 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger26 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger26 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger26 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger26 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger27 = cond(numhelper(6310026), helper(6310026),time <= 1, 0)
trigger27 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger27 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger27 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger27 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger27 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger28 = cond(numhelper(6310027), helper(6310027),time <= 1, 0)
trigger28 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger28 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger28 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger28 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger28 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger29 = cond(numhelper(6310028), helper(6310028),time <= 1, 0)
trigger29 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger29 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger29 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger29 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger29 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger30 = cond(numhelper(6310029), helper(6310029),time <= 1, 0)
trigger30 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger30 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger30 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger30 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger30 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger31 = cond(numhelper(6310030), helper(6310030),time <= 1, 0)
trigger31 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger31 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger31 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger31 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger31 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger32 = cond(numhelper(6310031), helper(6310031),time <= 1, 0)
trigger32 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger32 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger32 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger32 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger32 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger33 = cond(numhelper(6310032), helper(6310032),time <= 1, 0)
trigger33 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger33 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger33 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger33 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger33 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger34 = cond(numhelper(6310033), helper(6310033),time <= 1, 0)
trigger34 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger34 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger34 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger34 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger34 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger35 = cond(numhelper(6310034), helper(6310034),time <= 1, 0)
trigger35 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger35 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger35 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger35 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger35 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger36 = cond(numhelper(6310035), helper(6310035),time <= 1, 0)
trigger36 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger36 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger36 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger36 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger36 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger37 = cond(numhelper(6310036), helper(6310036),time <= 1, 0)
trigger37 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger37 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger37 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger37 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger37 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger38 = cond(numhelper(6310037), helper(6310037),time <= 1, 0)
trigger38 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger38 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger38 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger38 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger38 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger39 = cond(numhelper(6310038), helper(6310038),time <= 1, 0)
trigger39 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger39 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger39 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger39 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger39 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger40 = cond(numhelper(6310039), helper(6310039),time <= 1, 0)
trigger40 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger40 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger40 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger40 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger40 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger41 = cond(numhelper(6310040), helper(6310040),time <= 1, 0)
trigger41 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger41 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger41 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger41 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger41 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger42 = cond(numhelper(6310041), helper(6310041),time <= 1, 0)
trigger42 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger42 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger42 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger42 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger42 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger43 = cond(numhelper(6310042), helper(6310042),time <= 1, 0)
trigger43 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger43 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger43 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger43 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger43 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger44 = cond(numhelper(6310043), helper(6310043),time <= 1, 0)
trigger44 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger44 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger44 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger44 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger44 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger45 = cond(numhelper(6310044), helper(6310044),time <= 1, 0)
trigger45 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger45 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger45 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger45 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger45 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger46 = cond(numhelper(6310045), helper(6310045),time <= 1, 0)
trigger46 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger46 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger46 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger46 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger46 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger47 = cond(numhelper(6310046), helper(6310046),time <= 1, 0)
trigger47 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger47 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger47 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger47 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger47 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger48 = cond(numhelper(6310047), helper(6310047),time <= 1, 0)
trigger48 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger48 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger48 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger48 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger48 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger49 = cond(numhelper(6310048), helper(6310048),time <= 1, 0)
trigger49 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger49 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger49 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger49 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger49 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger50 = cond(numhelper(6310049), helper(6310049),time <= 1, 0)
trigger50 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger50 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger50 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger50 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger50 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger51 = cond(numhelper(6310050), helper(6310050),time <= 1, 0)
trigger51 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger51 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger51 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger51 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger51 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger52 = cond(numhelper(6310051), helper(6310051),time <= 1, 0)
trigger52 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger52 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger52 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger52 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger52 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger53 = cond(numhelper(6310052), helper(6310052),time <= 1, 0)
trigger53 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger53 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger53 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger53 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger53 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger54 = cond(numhelper(6310053), helper(6310053),time <= 1, 0)
trigger54 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger54 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger54 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger54 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger54 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger55 = cond(numhelper(6310054), helper(6310054),time <= 1, 0)
trigger55 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger55 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger55 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger55 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger55 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger56 = cond(numhelper(6310055), helper(6310055),time <= 1, 0)
trigger56 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger56 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger56 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger56 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger56 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger57 = cond(numhelper(6310056), helper(6310056),time <= 1, 0)
trigger57 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger57 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger57 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger57 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger57 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger58 = cond(numhelper(6310057), helper(6310057),time <= 1, 0)
trigger58 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger58 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger58 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger58 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger58 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger59 = cond(numhelper(6310058), helper(6310058),time <= 1, 0)
trigger59 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger59 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger59 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger59 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger59 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger60 = cond(numhelper(6310059), helper(6310059),time <= 1, 0)
trigger60 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger60 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger60 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger60 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger60 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1

;========================< Score Message 2 >========================
; Survivor
trigger61 = cond(numhelper(6310060), helper(6310060),time <= 1, 0)
trigger61 = var(00) := 19 || var(01) := 21 || var(02) := 18 || var(03) := 22 || var(04) := 09 || var(05) := 22 || 1
trigger61 = var(06) := 15 || var(07) := 18 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger61 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger61 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger61 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Skipper
trigger62 = cond(numhelper(6310061), helper(6310061),time <= 1, 0)
trigger62 = var(00) := 19 || var(01) := 11 || var(02) := 09 || var(03) := 16 || var(04) := 16 || var(05) := 05 || 1
trigger62 = var(06) := 18 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger62 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger62 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger62 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The Bitter End
trigger63 = cond(numhelper(6310062), helper(6310062),time <= 1, 0)
trigger63 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 02 || var(05) := 09 || 1
trigger63 = var(06) := 20 || var(07) := 20 || var(08) := 05 || var(09) := 18 || var(10) := 27 || var(11) := 05 || 1
trigger63 = var(12) := 14 || var(13) := 04 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger63 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger63 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger64 = cond(numhelper(6310063), helper(6310063),time <= 1, 0)
trigger64 = var(00) := 03 || var(01) := 15 || var(02) := 21 || var(03) := 14 || var(04) := 20 || var(05) := 05 || 1
trigger64 = var(06) := 18 || var(07) := 27 || var(08) := 08 || var(09) := 09 || var(10) := 20 || var(11) := 00 || 1
trigger64 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger64 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger64 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger65 = cond(numhelper(6310064), helper(6310064),time <= 1, 0)
trigger65 = var(00) := 18 || var(01) := 05 || var(02) := 22 || var(03) := 05 || var(04) := 18 || var(05) := 19 || 1
trigger65 = var(06) := 01 || var(07) := 12 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger65 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger65 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger65 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Blocking
trigger66 = cond(numhelper(6310065), helper(6310065),time <= 1, 0)
trigger66 = var(00) := 02 || var(01) := 12 || var(02) := 15 || var(03) := 03 || var(04) := 11 || var(05) := 09 || 1
trigger66 = var(06) := 14 || var(07) := 07 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger66 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger66 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger66 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Guard Blocking
trigger67 = cond(numhelper(6310066), helper(6310066),time <= 1, 0)
trigger67 = var(00) := 07 || var(01) := 21 || var(02) := 01 || var(03) := 18 || var(04) := 04 || var(05) := 27 || 1
trigger67 = var(06) := 02 || var(07) := 12 || var(08) := 15 || var(09) := 03 || var(10) := 11 || var(11) := 09 || 1
trigger67 = var(12) := 14 || var(13) := 07 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger67 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger67 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger68 = cond(numhelper(6310067), helper(6310067),time <= 1, 0)
trigger68 = var(00) := 19 || var(01) := 21 || var(02) := 16 || var(03) := 05 || var(04) := 18 || var(05) := 27 || 1
trigger68 = var(06) := 01 || var(07) := 18 || var(08) := 20 || var(09) := 27 || var(10) := 06 || var(11) := 09 || 1
trigger68 = var(12) := 14 || var(13) := 09 || var(14) := 19 || var(15) := 08 || var(16) := 00 || var(17) := 00 || 1
trigger68 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger68 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger69 = cond(numhelper(6310068), helper(6310068),time <= 1, 0)
trigger69 = var(00) := 16 || var(01) := 05 || var(02) := 18 || var(03) := 06 || var(04) := 05 || var(05) := 03 || 1
trigger69 = var(06) := 20 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger69 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger69 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger69 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; POTS Style
trigger70 = cond(numhelper(6310069), helper(6310069),time <= 1, 0)
trigger70 = var(00) := 16 || var(01) := 15 || var(02) := 20 || var(03) := 19 || var(04) := 27 || var(05) := 19 || 1
trigger70 = var(06) := 20 || var(07) := 25 || var(08) := 12 || var(09) := 05 || var(10) := 00 || var(11) := 00 || 1
trigger70 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger70 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger70 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; It's Over
trigger71 = cond(numhelper(6310070), helper(6310070),time <= 1, 0)
trigger71 = var(00) := 16 || var(01) := 15 || var(02) := 23 || var(03) := 05 || var(04) := 18 || var(05) := 27 || 1
trigger71 = var(06) := 09 || var(07) := 19 || var(08) := 27 || var(09) := 15 || var(10) := 22 || var(11) := 05 || 1
trigger71 = var(12) := 18 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger71 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger71 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Wife Beater
trigger72 = cond(numhelper(6310071), helper(6310071),time <= 1, 0)
trigger72 = var(00) := 23 || var(01) := 09 || var(02) := 06 || var(03) := 05 || var(04) := 27 || var(05) := 02 || 1
trigger72 = var(06) := 05 || var(07) := 01 || var(08) := 20 || var(09) := 05 || var(10) := 18 || var(11) := 00 || 1
trigger72 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger72 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger72 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Baby Crab
trigger73 = cond(numhelper(6310072), helper(6310072),time <= 1, 0)
trigger73 = var(00) := 02 || var(01) := 01 || var(02) := 02 || var(03) := 25 || var(04) := 27 || var(05) := 03 || 1
trigger73 = var(06) := 18 || var(07) := 01 || var(08) := 02 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger73 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger73 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger73 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Turtle Hermit
trigger74 = cond(numhelper(6310073), helper(6310073),time <= 1, 0)
trigger74 = var(00) := 20 || var(01) := 21 || var(02) := 18 || var(03) := 20 || var(04) := 12 || var(05) := 05 || 1
trigger74 = var(06) := 27 || var(07) := 08 || var(08) := 05 || var(09) := 18 || var(10) := 13 || var(11) := 09 || 1
trigger74 = var(12) := 20 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger74 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger74 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Iron Defense
trigger75 = cond(numhelper(6310074), helper(6310074),time <= 1, 0)
trigger75 = var(00) := 09 || var(01) := 18 || var(02) := 15 || var(03) := 14 || var(04) := 27 || var(05) := 04 || 1
trigger75 = var(06) := 05 || var(07) := 06 || var(08) := 05 || var(09) := 14 || var(10) := 03 || var(11) := 05 || 1
trigger75 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger75 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger75 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Backstabber
trigger76 = cond(numhelper(6310075), helper(6310075),time <= 1, 0)
trigger76 = var(00) := 02 || var(01) := 01 || var(02) := 03 || var(03) := 11 || var(04) := 19 || var(05) := 20 || 1
trigger76 = var(06) := 01 || var(07) := 02 || var(08) := 02 || var(09) := 05 || var(10) := 18 || var(11) := 00 || 1
trigger76 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger76 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger76 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Duck Duck Goose
trigger77 = cond(numhelper(6310076), helper(6310076),time <= 1, 0)
trigger77 = var(00) := 04 || var(01) := 21 || var(02) := 03 || var(03) := 11 || var(04) := 27 || var(05) := 04 || 1
trigger77 = var(06) := 21 || var(07) := 03 || var(08) := 11 || var(09) := 27 || var(10) := 07 || var(11) := 15 || 1
trigger77 = var(12) := 15 || var(13) := 19 || var(14) := 05 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger77 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger77 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Hopper
trigger78 = cond(numhelper(6310077), helper(6310077),time <= 1, 0)
trigger78 = var(00) := 08 || var(01) := 15 || var(02) := 16 || var(03) := 16 || var(04) := 05 || var(05) := 18 || 1
trigger78 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger78 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger78 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger78 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Bungie Jumper
trigger79 = cond(numhelper(6310078), helper(6310078),time <= 1, 0)
trigger79 = var(00) := 02 || var(01) := 21 || var(02) := 14 || var(03) := 07 || var(04) := 05 || var(05) := 05 || 1
trigger79 = var(06) := 27 || var(07) := 10 || var(08) := 21 || var(09) := 13 || var(10) := 16 || var(11) := 05 || 1
trigger79 = var(12) := 18 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger79 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger79 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Sky Diver
trigger80 = cond(numhelper(6310079), helper(6310079),time <= 1, 0)
trigger80 = var(00) := 19 || var(01) := 11 || var(02) := 25 || var(03) := 27 || var(04) := 04 || var(05) := 09 || 1
trigger80 = var(06) := 22 || var(07) := 05 || var(08) := 18 || var(09) := 00 || var(10) := 00 || var(11) := 01 || 1
trigger80 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 14 || 1
trigger80 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger80 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Suicide Bomber
trigger81 = cond(numhelper(6310080), helper(6310080),time <= 1, 0)
trigger81 = var(00) := 19 || var(01) := 21 || var(02) := 09 || var(03) := 03 || var(04) := 09 || var(05) := 04 || 1
trigger81 = var(06) := 05 || var(07) := 27 || var(08) := 02 || var(09) := 15 || var(10) := 13 || var(11) := 02 || 1
trigger81 = var(12) := 05 || var(13) := 18 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger81 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger81 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Ninja
trigger82 = cond(numhelper(6310081), helper(6310081),time <= 1, 0)
trigger82 = var(00) := 14 || var(01) := 09 || var(02) := 14 || var(03) := 10 || var(04) := 01 || var(05) := 00 || 1
trigger82 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger82 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger82 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger82 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Minimalist
trigger83 = cond(numhelper(6310082), helper(6310082),time <= 1, 0)
trigger83 = var(00) := 13 || var(01) := 09 || var(02) := 14 || var(03) := 09 || var(04) := 13 || var(05) := 01 || 1
trigger83 = var(06) := 12 || var(07) := 09 || var(08) := 19 || var(09) := 20 || var(10) := 00 || var(11) := 00 || 1
trigger83 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger83 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger83 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Moderatist
trigger84 = cond(numhelper(6310083), helper(6310083),time <= 1, 0)
trigger84 = var(00) := 13 || var(01) := 15 || var(02) := 04 || var(03) := 05 || var(04) := 18 || var(05) := 01 || 1
trigger84 = var(06) := 20 || var(07) := 09 || var(08) := 19 || var(09) := 20 || var(10) := 00 || var(11) := 00 || 1
trigger84 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger84 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger84 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Maximalist
trigger85 = cond(numhelper(6310084), helper(6310084),time <= 1, 0)
trigger85 = var(00) := 13 || var(01) := 01 || var(02) := 24 || var(03) := 09 || var(04) := 13 || var(05) := 01 || 1
trigger85 = var(06) := 12 || var(07) := 09 || var(08) := 19 || var(09) := 20 || var(10) := 00 || var(11) := 00 || 1
trigger85 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger85 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger85 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Great Buddha
trigger86 = cond(numhelper(6310085), helper(6310085),time <= 1, 0)
trigger86 = var(00) := 07 || var(01) := 18 || var(02) := 05 || var(03) := 01 || var(04) := 20 || var(05) := 27 || 1
trigger86 = var(06) := 02 || var(07) := 21 || var(08) := 04 || var(09) := 04 || var(10) := 08 || var(11) := 01 || 1
trigger86 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger86 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger86 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Button Masher
trigger87 = cond(numhelper(6310086), helper(6310086),time <= 1, 0)
trigger87 = var(00) := 02 || var(01) := 21 || var(02) := 20 || var(03) := 20 || var(04) := 15 || var(05) := 14 || 1
trigger87 = var(06) := 32 || var(07) := 13 || var(08) := 01 || var(09) := 19 || var(10) := 08 || var(11) := 05 || 1
trigger87 = var(12) := 18 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger87 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger87 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Blindfolded
trigger88 = cond(numhelper(6310087), helper(6310087),time <= 1, 0)
trigger88 = var(00) := 02 || var(01) := 12 || var(02) := 09 || var(03) := 14 || var(04) := 04 || var(05) := 06 || 1
trigger88 = var(06) := 15 || var(07) := 12 || var(08) := 04 || var(09) := 05 || var(10) := 04 || var(11) := 00 || 1
trigger88 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger88 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger88 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Speeding Bullet
trigger89 = cond(numhelper(6310088), helper(6310088),time <= 1, 0)
trigger89 = var(00) := 19 || var(01) := 16 || var(02) := 05 || var(03) := 05 || var(04) := 04 || var(05) := 09 || 1
trigger89 = var(06) := 14 || var(07) := 07 || var(08) := 27 || var(09) := 02 || var(10) := 21 || var(11) := 12 || 1
trigger89 = var(12) := 12 || var(13) := 05 || var(14) := 20 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger89 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger89 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Cat Fight
trigger90 = cond(numhelper(6310089), helper(6310089),time <= 1, 0)
trigger90 = var(00) := 03 || var(01) := 01 || var(02) := 20 || var(03) := 27 || var(04) := 06 || var(05) := 09 || 1
trigger90 = var(06) := 07 || var(07) := 08 || var(08) := 20 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger90 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger90 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger90 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Opportunist
trigger91 = cond(numhelper(6310090), helper(6310090),time <= 1, 0)
trigger91 = var(00) := 15 || var(01) := 16 || var(02) := 16 || var(03) := 15 || var(04) := 18 || var(05) := 20 || 1
trigger91 = var(06) := 21 || var(07) := 14 || var(08) := 09 || var(09) := 19 || var(10) := 20 || var(11) := 00 || 1
trigger91 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger91 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger91 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Bozo the Clown
trigger92 = cond(numhelper(6310091), helper(6310091),time <= 1, 0)
trigger92 = var(00) := 02 || var(01) := 15 || var(02) := 26 || var(03) := 15 || var(04) := 27 || var(05) := 20 || 1
trigger92 = var(06) := 08 || var(07) := 05 || var(08) := 27 || var(09) := 03 || var(10) := 12 || var(11) := 15 || 1
trigger92 = var(12) := 23 || var(13) := 14 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger92 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger92 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The Mega Millions
trigger93 = cond(numhelper(6310092), helper(6310092),time <= 1, 0)
trigger93 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 13 || var(05) := 05 || 1
trigger93 = var(06) := 07 || var(07) := 01 || var(08) := 27 || var(09) := 13 || var(10) := 09 || var(11) := 12 || 1
trigger93 = var(12) := 12 || var(13) := 09 || var(14) := 15 || var(15) := 14 || var(16) := 19 || var(17) := 00 || 1
trigger93 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger93 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The IRS
trigger94 = cond(numhelper(6310093), helper(6310093),time <= 1, 0)
trigger94 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 09 || var(05) := 18 || 1
trigger94 = var(06) := 19 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger94 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger94 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger94 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Bad Sport
trigger95 = cond(numhelper(6310094), helper(6310094),time <= 1, 0)
trigger95 = var(00) := 02 || var(01) := 01 || var(02) := 04 || var(03) := 27 || var(04) := 19 || var(05) := 16 || 1
trigger95 = var(06) := 15 || var(07) := 18 || var(08) := 20 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger95 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger95 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger95 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; U Mad Bro
trigger96 = cond(numhelper(6310095), helper(6310095),time <= 1, 0)
trigger96 = var(00) := 21 || var(01) := 27 || var(02) := 13 || var(03) := 01 || var(04) := 04 || var(05) := 27 || 1
trigger96 = var(06) := 02 || var(07) := 18 || var(08) := 15 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger96 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger96 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger96 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Go-Go Dance
trigger97 = cond(numhelper(6310096), helper(6310096),time <= 1, 0)
trigger97 = var(00) := 07 || var(01) := 15 || var(02) := 32 || var(03) := 07 || var(04) := 15 || var(05) := 27 || 1
trigger97 = var(06) := 04 || var(07) := 01 || var(08) := 14 || var(09) := 03 || var(10) := 05 || var(11) := 18 || 1
trigger97 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger97 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger97 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Observer
trigger98 = cond(numhelper(6310097), helper(6310097),time <= 1, 0)
trigger98 = var(00) := 15 || var(01) := 02 || var(02) := 19 || var(03) := 05 || var(04) := 18 || var(05) := 22 || 1
trigger98 = var(06) := 05 || var(07) := 18 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger98 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger98 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger98 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Spectator
trigger99 = cond(numhelper(6310098), helper(6310098),time <= 1, 0)
trigger99 = var(00) := 19 || var(01) := 16 || var(02) := 05 || var(03) := 03 || var(04) := 20 || var(05) := 01 || 1
trigger99 = var(06) := 20 || var(07) := 15 || var(08) := 18 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger99 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger99 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger99 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Harsh Critic
trigger100 = cond(numhelper(6310099), helper(6310099),time <= 1, 0)
trigger100 = var(00) := 08 || var(01) := 01 || var(02) := 18 || var(03) := 19 || var(04) := 08 || var(05) := 27 || 1
trigger100 = var(06) := 03 || var(07) := 18 || var(08) := 09 || var(09) := 20 || var(10) := 09 || var(11) := 03 || 1
trigger100 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger100 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger100 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Warrior Princess
trigger101 = cond(numhelper(6310100), helper(6310100),time <= 1, 0)
trigger101 = var(00) := 23 || var(01) := 01 || var(02) := 18 || var(03) := 18 || var(04) := 09 || var(05) := 15 || 1
trigger101 = var(06) := 18 || var(07) := 27 || var(08) := 16 || var(09) := 18 || var(10) := 09 || var(11) := 14 || 1
trigger101 = var(12) := 03 || var(13) := 05 || var(14) := 19 || var(15) := 19 || var(16) := 00 || var(17) := 00 || 1
trigger101 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger101 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; You Had to Be There
trigger102 = cond(numhelper(6310101), helper(6310101),time <= 1, 0)
trigger102 = var(00) := 25 || var(01) := 15 || var(02) := 21 || var(03) := 27 || var(04) := 08 || var(05) := 01 || 1
trigger102 = var(06) := 04 || var(07) := 27 || var(08) := 20 || var(09) := 15 || var(10) := 27 || var(11) := 02 || 1
trigger102 = var(12) := 05 || var(13) := 27 || var(14) := 20 || var(15) := 08 || var(16) := 05 || var(17) := 18 || 1
trigger102 = var(18) := 05 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger102 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Deadeye
trigger103 = cond(numhelper(6310102), helper(6310102),time <= 1, 0)
trigger103 = var(00) := 04 || var(01) := 05 || var(02) := 01 || var(03) := 04 || var(04) := 05 || var(05) := 25 || 1
trigger103 = var(06) := 05 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger103 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger103 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger103 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Masochist
trigger104 = cond(numhelper(6310103), helper(6310103),time <= 1, 0)
trigger104 = var(00) := 13 || var(01) := 01 || var(02) := 19 || var(03) := 15 || var(04) := 03 || var(05) := 08 || 1
trigger104 = var(06) := 09 || var(07) := 19 || var(08) := 20 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger104 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger104 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger104 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Slowpoke
trigger105 = cond(numhelper(6310104), helper(6310104),time <= 1, 0)
trigger105 = var(00) := 19 || var(01) := 12 || var(02) := 15 || var(03) := 23 || var(04) := 16 || var(05) := 15 || 1
trigger105 = var(06) := 11 || var(07) := 05 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger105 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger105 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger105 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger106 = cond(numhelper(6310105), helper(6310105),time <= 1, 0)
trigger106 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger106 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger106 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger106 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger106 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Modest
trigger107 = cond(numhelper(6310106), helper(6310106),time <= 1, 0)
trigger107 = var(00) := 13 || var(01) := 15 || var(02) := 04 || var(03) := 05 || var(04) := 19 || var(05) := 20 || 1
trigger107 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger107 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger107 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger107 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Firefighter
trigger108 = cond(numhelper(6310107), helper(6310107),time <= 1, 0)
trigger108 = var(00) := 06 || var(01) := 09 || var(02) := 18 || var(03) := 05 || var(04) := 06 || var(05) := 09 || 1
trigger108 = var(06) := 07 || var(07) := 08 || var(08) := 20 || var(09) := 05 || var(10) := 18 || var(11) := 00 || 1
trigger108 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger108 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger108 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; You Got Served
trigger109 = cond(numhelper(6310108), helper(6310108),time <= 1, 0)
trigger109 = var(00) := 25 || var(01) := 15 || var(02) := 21 || var(03) := 27 || var(04) := 07 || var(05) := 15 || 1
trigger109 = var(06) := 20 || var(07) := 27 || var(08) := 19 || var(09) := 05 || var(10) := 18 || var(11) := 22 || 1
trigger109 = var(12) := 05 || var(13) := 04 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger109 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger109 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Tap Dancer
trigger110 = cond(numhelper(6310109), helper(6310109),time <= 1, 0)
trigger110 = var(00) := 20 || var(01) := 01 || var(02) := 16 || var(03) := 27 || var(04) := 04 || var(05) := 01 || 1
trigger110 = var(06) := 14 || var(07) := 03 || var(08) := 05 || var(09) := 18 || var(10) := 00 || var(11) := 00 || 1
trigger110 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger110 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger110 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Boxer
trigger111 = cond(numhelper(6310110), helper(6310110),time <= 1, 0)
trigger111 = var(00) := 02 || var(01) := 15 || var(02) := 24 || var(03) := 05 || var(04) := 18 || var(05) := 00 || 1
trigger111 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger111 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger111 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger111 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Shoto-Purifier
trigger112 = cond(numhelper(6310111), helper(6310111),time <= 1, 0)
trigger112 = var(00) := 19 || var(01) := 08 || var(02) := 15 || var(03) := 20 || var(04) := 15 || var(05) := 32 || 1
trigger112 = var(06) := 16 || var(07) := 21 || var(08) := 18 || var(09) := 09 || var(10) := 06 || var(11) := 09 || 1
trigger112 = var(12) := 05 || var(13) := 18 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger112 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger112 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger113 = cond(numhelper(6310112), helper(6310112),time <= 1, 0)
trigger113 = var(00) := 19 || var(01) := 21 || var(02) := 18 || var(03) := 22 || var(04) := 09 || var(05) := 22 || 1
trigger113 = var(06) := 15 || var(07) := 18 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger113 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger113 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger113 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Jebus
trigger114 = cond(numhelper(6310113), helper(6310113),time <= 1, 0)
trigger114 = var(00) := 10 || var(01) := 05 || var(02) := 02 || var(03) := 21 || var(04) := 19 || var(05) := 00 || 1
trigger114 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger114 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger114 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger114 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Too Close for Comfort
trigger115 = cond(numhelper(6310114), helper(6310114),time <= 1, 0)
trigger115 = var(00) := 20 || var(01) := 15 || var(02) := 15 || var(03) := 27 || var(04) := 03 || var(05) := 12 || 1
trigger115 = var(06) := 15 || var(07) := 19 || var(08) := 05 || var(09) := 27 || var(10) := 06 || var(11) := 15 || 1
trigger115 = var(12) := 18 || var(13) := 27 || var(14) := 03 || var(15) := 15 || var(16) := 13 || var(17) := 06 || 1
trigger115 = var(18) := 15 || var(19) := 18 || var(20) := 20 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger115 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Karma
trigger116 = cond(numhelper(6310115), helper(6310115),time <= 1, 0)
trigger116 = var(00) := 11 || var(01) := 01 || var(02) := 18 || var(03) := 13 || var(04) := 01 || var(05) := 00 || 1
trigger116 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger116 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger116 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger116 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Too Bad
trigger117 = cond(numhelper(6310116), helper(6310116),time <= 1, 0)
trigger117 = var(00) := 20 || var(01) := 15 || var(02) := 15 || var(03) := 27 || var(04) := 02 || var(05) := 01 || 1
trigger117 = var(06) := 04 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger117 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger117 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger117 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Paralyzed
trigger118 = cond(numhelper(6310117), helper(6310117),time <= 1, 0)
trigger118 = var(00) := 16 || var(01) := 01 || var(02) := 18 || var(03) := 01 || var(04) := 12 || var(05) := 25 || 1
trigger118 = var(06) := 26 || var(07) := 05 || var(08) := 04 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger118 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger118 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger118 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Nighty-Night
trigger119 = cond(numhelper(6310118), helper(6310118),time <= 1, 0)
trigger119 = var(00) := 14 || var(01) := 09 || var(02) := 07 || var(03) := 08 || var(04) := 20 || var(05) := 25 || 1
trigger119 = var(06) := 32 || var(07) := 14 || var(08) := 09 || var(09) := 07 || var(10) := 08 || var(11) := 20 || 1
trigger119 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger119 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger119 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Facebreaker
trigger120 = cond(numhelper(6310119), helper(6310119),time <= 1, 0)
trigger120 = var(00) := 06 || var(01) := 01 || var(02) := 03 || var(03) := 05 || var(04) := 02 || var(05) := 18 || 1
trigger120 = var(06) := 05 || var(07) := 01 || var(08) := 11 || var(09) := 05 || var(10) := 18 || var(11) := 00 || 1
trigger120 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger120 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger120 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1

;========================< Score Message 3 >========================
; Welcome to Hell
trigger121 = cond(numhelper(6310120), helper(6310120),time <= 1, 0)
trigger121 = var(00) := 23 || var(01) := 05 || var(02) := 12 || var(03) := 03 || var(04) := 15 || var(05) := 13 || 1
trigger121 = var(06) := 05 || var(07) := 27 || var(08) := 20 || var(09) := 15 || var(10) := 27 || var(11) := 08 || 1
trigger121 = var(12) := 05 || var(13) := 12 || var(14) := 12 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger121 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger121 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The Juggernaut, Bitch!
trigger122 = cond(numhelper(6310121), helper(6310121),time <= 1, 0)
trigger122 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 10 || var(05) := 21 || 1
trigger122 = var(06) := 07 || var(07) := 07 || var(08) := 05 || var(09) := 18 || var(10) := 14 || var(11) := 01 || 1
trigger122 = var(12) := 21 || var(13) := 20 || var(14) := 28 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger122 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger122 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Bad Hangover
trigger123 = cond(numhelper(6310122), helper(6310122),time <= 1, 0)
trigger123 = var(00) := 02 || var(01) := 01 || var(02) := 04 || var(03) := 27 || var(04) := 08 || var(05) := 01 || 1
trigger123 = var(06) := 14 || var(07) := 07 || var(08) := 15 || var(09) := 22 || var(10) := 05 || var(11) := 18 || 1
trigger123 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger123 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger123 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Noodle Arms
trigger124 = cond(numhelper(6310123), helper(6310123),time <= 1, 0)
trigger124 = var(00) := 14 || var(01) := 15 || var(02) := 15 || var(03) := 04 || var(04) := 12 || var(05) := 05 || 1
trigger124 = var(06) := 32 || var(07) := 01 || var(08) := 18 || var(09) := 13 || var(10) := 19 || var(11) := 00 || 1
trigger124 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger124 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger124 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger125 = cond(numhelper(6310124), helper(6310124),time <= 1, 0)
trigger125 = var(00) := 04 || var(01) := 01 || var(02) := 14 || var(03) := 07 || var(04) := 05 || var(05) := 18 || 1
trigger125 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger125 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger125 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger125 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Jest
trigger126 = cond(numhelper(6310125), helper(6310125),time <= 1, 0)
trigger126 = var(00) := 10 || var(01) := 05 || var(02) := 19 || var(03) := 20 || var(04) := 00 || var(05) := 00 || 1
trigger126 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger126 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger126 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger126 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Joker
trigger127 = cond(numhelper(6310126), helper(6310126),time <= 1, 0)
trigger127 = var(00) := 10 || var(01) := 15 || var(02) := 11 || var(03) := 05 || var(04) := 18 || var(05) := 00 || 1
trigger127 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger127 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger127 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger127 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Comedian
trigger128 = cond(numhelper(6310127), helper(6310127),time <= 1, 0)
trigger128 = var(00) := 03 || var(01) := 15 || var(02) := 13 || var(03) := 05 || var(04) := 04 || var(05) := 09 || 1
trigger128 = var(06) := 01 || var(07) := 14 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger128 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger128 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger128 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Statue of Liberty
trigger129 = cond(numhelper(6310128), helper(6310128),time <= 1, 0)
trigger129 = var(00) := 19 || var(01) := 20 || var(02) := 01 || var(03) := 20 || var(04) := 21 || var(05) := 05 || 1
trigger129 = var(06) := 27 || var(07) := 15 || var(08) := 06 || var(09) := 27 || var(10) := 12 || var(11) := 09 || 1
trigger129 = var(12) := 02 || var(13) := 05 || var(14) := 18 || var(15) := 20 || var(16) := 25 || var(17) := 00 || 1
trigger129 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger129 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Tactician
trigger130 = cond(numhelper(6310129), helper(6310129),time <= 1, 0)
trigger130 = var(00) := 20 || var(01) := 01 || var(02) := 03 || var(03) := 20 || var(04) := 09 || var(05) := 03 || 1
trigger130 = var(06) := 09 || var(07) := 01 || var(08) := 14 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger130 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger130 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger130 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; No Soup
trigger131 = cond(numhelper(6310130), helper(6310130),time <= 1, 0)
trigger131 = var(00) := 14 || var(01) := 15 || var(02) := 27 || var(03) := 19 || var(04) := 15 || var(05) := 21 || 1
trigger131 = var(06) := 16 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger131 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger131 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger131 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; No!
trigger132 = cond(numhelper(6310131), helper(6310131),time <= 1, 0)
trigger132 = var(00) := 14 || var(01) := 15 || var(02) := 28 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger132 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger132 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger132 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger132 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; I Said No!
trigger133 = cond(numhelper(6310132), helper(6310132),time <= 1, 0)
trigger133 = var(00) := 09 || var(01) := 27 || var(02) := 19 || var(03) := 01 || var(04) := 09 || var(05) := 04 || 1
trigger133 = var(06) := 27 || var(07) := 14 || var(08) := 15 || var(09) := 28 || var(10) := 00 || var(11) := 00 || 1
trigger133 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger133 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger133 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; No Means No!
trigger134 = cond(numhelper(6310133), helper(6310133),time <= 1, 0)
trigger134 = var(00) := 14 || var(01) := 15 || var(02) := 27 || var(03) := 13 || var(04) := 05 || var(05) := 01 || 1
trigger134 = var(06) := 14 || var(07) := 19 || var(08) := 27 || var(09) := 14 || var(10) := 15 || var(11) := 28 || 1
trigger134 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger134 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger134 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; With a Full Tank!
trigger135 = cond(numhelper(6310134), helper(6310134),time <= 1, 0)
trigger135 = var(00) := 23 || var(01) := 09 || var(02) := 20 || var(03) := 08 || var(04) := 27 || var(05) := 01 || 1
trigger135 = var(06) := 27 || var(07) := 06 || var(08) := 21 || var(09) := 12 || var(10) := 12 || var(11) := 27 || 1
trigger135 = var(12) := 20 || var(13) := 01 || var(14) := 14 || var(15) := 11 || var(16) := 28 || var(17) := 00 || 1
trigger135 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger135 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The Air Up There
trigger136 = cond(numhelper(6310135), helper(6310135),time <= 1, 0)
trigger136 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 01 || var(05) := 09 || 1
trigger136 = var(06) := 18 || var(07) := 27 || var(08) := 21 || var(09) := 16 || var(10) := 27 || var(11) := 20 || 1
trigger136 = var(12) := 08 || var(13) := 05 || var(14) := 18 || var(15) := 05 || var(16) := 00 || var(17) := 00 || 1
trigger136 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger136 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Low Orbit
trigger137 = cond(numhelper(6310136), helper(6310136),time <= 1, 0)
trigger137 = var(00) := 12 || var(01) := 15 || var(02) := 23 || var(03) := 27 || var(04) := 15 || var(05) := 18 || 1
trigger137 = var(06) := 02 || var(07) := 09 || var(08) := 20 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger137 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger137 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger137 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Deep Roots
trigger138 = cond(numhelper(6310137), helper(6310137),time <= 1, 0)
trigger138 = var(00) := 04 || var(01) := 05 || var(02) := 05 || var(03) := 16 || var(04) := 27 || var(05) := 18 || 1
trigger138 = var(06) := 15 || var(07) := 15 || var(08) := 20 || var(09) := 19 || var(10) := 00 || var(11) := 00 || 1
trigger138 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger138 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger138 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The Magna Carta
trigger139 = cond(numhelper(6310138), helper(6310138),time <= 1, 0)
trigger139 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 13 || var(05) := 01 || 1
trigger139 = var(06) := 07 || var(07) := 14 || var(08) := 01 || var(09) := 27 || var(10) := 03 || var(11) := 01 || 1
trigger139 = var(12) := 18 || var(13) := 20 || var(14) := 01 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger139 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger139 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Houston, We Have Take off!
trigger140 = cond(numhelper(6310139), helper(6310139),time <= 1, 0)
trigger140 = var(00) := 08 || var(01) := 15 || var(02) := 21 || var(03) := 19 || var(04) := 20 || var(05) := 15 || 1
trigger140 = var(06) := 14 || var(07) := 30 || var(08) := 23 || var(09) := 05 || var(10) := 27 || var(11) := 08 || 1
trigger140 = var(12) := 01 || var(13) := 22 || var(14) := 05 || var(15) := 27 || var(16) := 20 || var(17) := 01 || 1
trigger140 = var(18) := 11 || var(19) := 05 || var(20) := 27 || var(21) := 15 || var(22) := 06 || var(23) := 06 || 1
trigger140 = var(24) := 28 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger141 = cond(numhelper(6310140), helper(6310140),time <= 1, 0)
trigger141 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || var(05) := 00 || 1
trigger141 = var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger141 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger141 = var(18) := 00 || var(19) := 00 || var(20) := 05 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger141 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Osteoporosis
trigger142 = cond(numhelper(6310141), helper(6310141),time <= 1, 0)
trigger142 = var(00) := 15 || var(01) := 19 || var(02) := 20 || var(03) := 05 || var(04) := 15 || var(05) := 16 || 1
trigger142 = var(06) := 15 || var(07) := 18 || var(08) := 15 || var(09) := 19 || var(10) := 09 || var(11) := 19 || 1
trigger142 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger142 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger142 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Claustrophobia
trigger143 = cond(numhelper(6310142), helper(6310142),time <= 1, 0)
trigger143 = var(00) := 03 || var(01) := 12 || var(02) := 01 || var(03) := 21 || var(04) := 19 || var(05) := 20 || 1
trigger143 = var(06) := 18 || var(07) := 15 || var(08) := 16 || var(09) := 08 || var(10) := 15 || var(11) := 02 || 1
trigger143 = var(12) := 09 || var(13) := 01 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger143 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger143 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Temper Tantrum
trigger144 = cond(numhelper(6310143), helper(6310143),time <= 1, 0)
trigger144 = var(00) := 20 || var(01) := 05 || var(02) := 13 || var(03) := 16 || var(04) := 05 || var(05) := 18 || 1
trigger144 = var(06) := 27 || var(07) := 20 || var(08) := 01 || var(09) := 14 || var(10) := 20 || var(11) := 18 || 1
trigger144 = var(12) := 21 || var(13) := 13 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger144 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger144 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; People-Person
trigger145 = cond(numhelper(6310144), helper(6310144),time <= 1, 0)
trigger145 = var(00) := 16 || var(01) := 05 || var(02) := 15 || var(03) := 16 || var(04) := 12 || var(05) := 05 || 1
trigger145 = var(06) := 32 || var(07) := 16 || var(08) := 05 || var(09) := 18 || var(10) := 19 || var(11) := 15 || 1
trigger145 = var(12) := 14 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger145 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger145 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; You Are a Big Fool
trigger146 = cond(numhelper(6310145), helper(6310145),time <= 1, 0)
trigger146 = var(00) := 25 || var(01) := 15 || var(02) := 21 || var(03) := 27 || var(04) := 01 || var(05) := 18 || 1
trigger146 = var(06) := 05 || var(07) := 27 || var(08) := 01 || var(09) := 27 || var(10) := 02 || var(11) := 09 || 1
trigger146 = var(12) := 07 || var(13) := 27 || var(14) := 06 || var(15) := 15 || var(16) := 15 || var(17) := 12 || 1
trigger146 = var(18) := 28 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger146 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Crash-Landing
trigger147 = cond(numhelper(6310146), helper(6310146),time <= 1, 0)
trigger147 = var(00) := 03 || var(01) := 18 || var(02) := 01 || var(03) := 19 || var(04) := 08 || var(05) := 32 || 1
trigger147 = var(06) := 12 || var(07) := 01 || var(08) := 14 || var(09) := 04 || var(10) := 09 || var(11) := 14 || 1
trigger147 = var(12) := 07 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger147 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger147 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Fire Extinguisher
trigger148 = cond(numhelper(6310147), helper(6310147),time <= 1, 0)
trigger148 = var(00) := 06 || var(01) := 09 || var(02) := 18 || var(03) := 05 || var(04) := 27 || var(05) := 05 || 1
trigger148 = var(06) := 24 || var(07) := 20 || var(08) := 09 || var(09) := 14 || var(10) := 07 || var(11) := 21 || 1
trigger148 = var(12) := 09 || var(13) := 19 || var(14) := 08 || var(15) := 05 || var(16) := 18 || var(17) := 00 || 1
trigger148 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger148 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Can't Touch This
trigger149 = cond(numhelper(6310148), helper(6310148),time <= 1, 0)
trigger149 = var(00) := 03 || var(01) := 01 || var(02) := 14 || var(03) := 31 || var(04) := 20 || var(05) := 27 || 1
trigger149 = var(06) := 20 || var(07) := 15 || var(08) := 21 || var(09) := 03 || var(10) := 08 || var(11) := 27 || 1
trigger149 = var(12) := 20 || var(13) := 08 || var(14) := 09 || var(15) := 19 || var(16) := 00 || var(17) := 00 || 1
trigger149 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger149 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Crash Test Dummy
trigger150 = cond(numhelper(6310149), helper(6310149),time <= 1, 0)
trigger150 = var(00) := 03 || var(01) := 18 || var(02) := 01 || var(03) := 19 || var(04) := 08 || var(05) := 27 || 1
trigger150 = var(06) := 20 || var(07) := 05 || var(08) := 19 || var(09) := 20 || var(10) := 27 || var(11) := 04 || 1
trigger150 = var(12) := 21 || var(13) := 13 || var(14) := 13 || var(15) := 25 || var(16) := 00 || var(17) := 00 || 1
trigger150 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger150 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Secret Code
trigger151 = cond(numhelper(6310150), helper(6310150),time <= 1, 0)
trigger151 = var(00) := 19 || var(01) := 05 || var(02) := 03 || var(03) := 18 || var(04) := 05 || var(05) := 20 || 1
trigger151 = var(06) := 27 || var(07) := 03 || var(08) := 15 || var(09) := 04 || var(10) := 05 || var(11) := 00 || 1
trigger151 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger151 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger151 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Child Abuser
trigger152 = cond(numhelper(6310151), helper(6310151),time <= 1, 0)
trigger152 = var(00) := 03 || var(01) := 08 || var(02) := 09 || var(03) := 12 || var(04) := 04 || var(05) := 27 || 1
trigger152 = var(06) := 01 || var(07) := 02 || var(08) := 21 || var(09) := 19 || var(10) := 05 || var(11) := 18 || 1
trigger152 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger152 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger152 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Medium Rare
trigger153 = cond(numhelper(6310152), helper(6310152),time <= 1, 0)
trigger153 = var(00) := 13 || var(01) := 05 || var(02) := 04 || var(03) := 09 || var(04) := 21 || var(05) := 13 || 1
trigger153 = var(06) := 27 || var(07) := 18 || var(08) := 01 || var(09) := 18 || var(10) := 05 || var(11) := 00 || 1
trigger153 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger153 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger153 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Mind-Reader
trigger154 = cond(numhelper(6310153), helper(6310153),time <= 1, 0)
trigger154 = var(00) := 13 || var(01) := 09 || var(02) := 14 || var(03) := 04 || var(04) := 18 || var(05) := 05 || 1
trigger154 = var(06) := 01 || var(07) := 04 || var(08) := 05 || var(09) := 18 || var(10) := 00 || var(11) := 00 || 1
trigger154 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger154 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger154 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Beginner's Luck
trigger155 = cond(numhelper(6310154), helper(6310154),time <= 1, 0)
trigger155 = var(00) := 02 || var(01) := 05 || var(02) := 07 || var(03) := 09 || var(04) := 14 || var(05) := 14 || 1
trigger155 = var(06) := 05 || var(07) := 18 || var(08) := 31 || var(09) := 19 || var(10) := 27 || var(11) := 12 || 1
trigger155 = var(12) := 21 || var(13) := 03 || var(14) := 11 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger155 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger155 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; But, No Cigar?
trigger156 = cond(numhelper(6310155), helper(6310155),time <= 1, 0)
trigger156 = var(00) := 02 || var(01) := 21 || var(02) := 20 || var(03) := 27 || var(04) := 14 || var(05) := 15 || 1
trigger156 = var(06) := 27 || var(07) := 03 || var(08) := 09 || var(09) := 07 || var(10) := 01 || var(11) := 18 || 1
trigger156 = var(12) := 29 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger156 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger156 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Happy Feet
trigger157 = cond(numhelper(6310156), helper(6310156),time <= 1, 0)
trigger157 = var(00) := 08 || var(01) := 01 || var(02) := 16 || var(03) := 16 || var(04) := 25 || var(05) := 27 || 1
trigger157 = var(06) := 06 || var(07) := 05 || var(08) := 05 || var(09) := 20 || var(10) := 00 || var(11) := 00 || 1
trigger157 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger157 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger157 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Red You Like a Book
trigger158 = cond(numhelper(6310157), helper(6310157),time <= 1, 0)
trigger158 = var(00) := 18 || var(01) := 05 || var(02) := 04 || var(03) := 27 || var(04) := 25 || var(05) := 15 || 1
trigger158 = var(06) := 21 || var(07) := 27 || var(08) := 12 || var(09) := 09 || var(10) := 11 || var(11) := 05 || 1
trigger158 = var(12) := 27 || var(13) := 01 || var(14) := 27 || var(15) := 02 || var(16) := 15 || var(17) := 15 || 1
trigger158 = var(18) := 11 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger158 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Bearing the Cross
trigger159 = cond(numhelper(6310158), helper(6310158),time <= 1, 0)
trigger159 = var(00) := 02 || var(01) := 05 || var(02) := 01 || var(03) := 18 || var(04) := 09 || var(05) := 14 || 1
trigger159 = var(06) := 07 || var(07) := 27 || var(08) := 20 || var(09) := 08 || var(10) := 05 || var(11) := 27 || 1
trigger159 = var(12) := 03 || var(13) := 18 || var(14) := 15 || var(15) := 19 || var(16) := 19 || var(17) := 00 || 1
trigger159 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger159 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; The God Delusion
trigger160 = cond(numhelper(6310159), helper(6310159),time <= 1, 0)
trigger160 = var(00) := 20 || var(01) := 08 || var(02) := 05 || var(03) := 27 || var(04) := 07 || var(05) := 15 || 1
trigger160 = var(06) := 04 || var(07) := 27 || var(08) := 04 || var(09) := 05 || var(10) := 12 || var(11) := 21 || 1
trigger160 = var(12) := 19 || var(13) := 09 || var(14) := 15 || var(15) := 14 || var(16) := 00 || var(17) := 00 || 1
trigger160 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger160 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Who's Laughing Now?
trigger161 = cond(numhelper(6310160), helper(6310160),time <= 1, 0)
trigger161 = var(00) := 23 || var(01) := 08 || var(02) := 15 || var(03) := 31 || var(04) := 19 || var(05) := 27 || 1
trigger161 = var(06) := 12 || var(07) := 01 || var(08) := 21 || var(09) := 07 || var(10) := 08 || var(11) := 09 || 1
trigger161 = var(12) := 14 || var(13) := 07 || var(14) := 27 || var(15) := 14 || var(16) := 15 || var(17) := 23 || 1
trigger161 = var(18) := 29 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger161 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Pro Wrestler
trigger162 = cond(numhelper(6310161), helper(6310161),time <= 1, 0)
trigger162 = var(00) := 16 || var(01) := 18 || var(02) := 15 || var(03) := 27 || var(04) := 23 || var(05) := 18 || 1
trigger162 = var(06) := 05 || var(07) := 19 || var(08) := 20 || var(09) := 12 || var(10) := 05 || var(11) := 18 || 1
trigger162 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger162 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger162 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Showoff
trigger163 = cond(numhelper(6310162), helper(6310162),time <= 1, 0)
trigger163 = var(00) := 19 || var(01) := 08 || var(02) := 15 || var(03) := 23 || var(04) := 15 || var(05) := 06 || 1
trigger163 = var(06) := 06 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger163 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger163 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger163 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Moonwalker
trigger164 = cond(numhelper(6310163), helper(6310163),time <= 1, 0)
trigger164 = var(00) := 13 || var(01) := 15 || var(02) := 15 || var(03) := 14 || var(04) := 23 || var(05) := 01 || 1
trigger164 = var(06) := 12 || var(07) := 11 || var(08) := 05 || var(09) := 18 || var(10) := 00 || var(11) := 00 || 1
trigger164 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger164 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger164 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Pursuit of Flight
trigger165 = cond(numhelper(6310164), helper(6310164),time <= 1, 0)
trigger165 = var(00) := 16 || var(01) := 21 || var(02) := 18 || var(03) := 19 || var(04) := 21 || var(05) := 09 || 1
trigger165 = var(06) := 20 || var(07) := 27 || var(08) := 15 || var(09) := 06 || var(10) := 27 || var(11) := 06 || 1
trigger165 = var(12) := 12 || var(13) := 09 || var(14) := 07 || var(15) := 08 || var(16) := 20 || var(17) := 00 || 1
trigger165 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger165 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Hacky Sacked
trigger166 = cond(numhelper(6310165), helper(6310165),time <= 1, 0)
trigger166 = var(00) := 08 || var(01) := 01 || var(02) := 03 || var(03) := 11 || var(04) := 25 || var(05) := 32 || 1
trigger166 = var(06) := 19 || var(07) := 01 || var(08) := 03 || var(09) := 11 || var(10) := 05 || var(11) := 04 || 1
trigger166 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger166 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger166 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; French Maid
trigger167 = cond(numhelper(6310166), helper(6310166),time <= 1, 0)
trigger167 = var(00) := 06 || var(01) := 18 || var(02) := 05 || var(03) := 14 || var(04) := 03 || var(05) := 08 || 1
trigger167 = var(06) := 27 || var(07) := 13 || var(08) := 01 || var(09) := 09 || var(10) := 04 || var(11) := 00 || 1
trigger167 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger167 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger167 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Force Field
trigger168 = cond(numhelper(6310167), helper(6310167),time <= 1, 0)
trigger168 = var(00) := 06 || var(01) := 15 || var(02) := 18 || var(03) := 03 || var(04) := 05 || var(05) := 27 || 1
trigger168 = var(06) := 06 || var(07) := 09 || var(08) := 05 || var(09) := 12 || var(10) := 04 || var(11) := 00 || 1
trigger168 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger168 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger168 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Superiority Complex
trigger169 = cond(numhelper(6310168), helper(6310168),time <= 1, 0)
trigger169 = var(00) := 19 || var(01) := 21 || var(02) := 16 || var(03) := 05 || var(04) := 18 || var(05) := 09 || 1
trigger169 = var(06) := 15 || var(07) := 18 || var(08) := 09 || var(09) := 20 || var(10) := 25 || var(11) := 27 || 1
trigger169 = var(12) := 03 || var(13) := 15 || var(14) := 13 || var(15) := 16 || var(16) := 05 || var(17) := 24 || 1
trigger169 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger169 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Happy Camper
trigger170 = cond(numhelper(6310169), helper(6310169),time <= 1, 0)
trigger170 = var(00) := 08 || var(01) := 01 || var(02) := 16 || var(03) := 16 || var(04) := 25 || var(05) := 27 || 1
trigger170 = var(06) := 03 || var(07) := 01 || var(08) := 13 || var(09) := 16 || var(10) := 05 || var(11) := 18 || 1
trigger170 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger170 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger170 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Off My Lawn!
trigger171 = cond(numhelper(6310170), helper(6310170),time <= 1, 0)
trigger171 = var(00) := 15 || var(01) := 06 || var(02) := 06 || var(03) := 27 || var(04) := 13 || var(05) := 25 || 1
trigger171 = var(06) := 27 || var(07) := 12 || var(08) := 01 || var(09) := 23 || var(10) := 14 || var(11) := 28 || 1
trigger171 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger171 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger171 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Playing Possum
trigger172 = cond(numhelper(6310171), helper(6310171),time <= 1, 0)
trigger172 = var(00) := 16 || var(01) := 12 || var(02) := 01 || var(03) := 25 || var(04) := 09 || var(05) := 14 || 1
trigger172 = var(06) := 07 || var(07) := 27 || var(08) := 16 || var(09) := 15 || var(10) := 19 || var(11) := 19 || 1
trigger172 = var(12) := 21 || var(13) := 13 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger172 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger172 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Lord of the Manor
trigger173 = cond(numhelper(6310172), helper(6310172),time <= 1, 0)
trigger173 = var(00) := 12 || var(01) := 15 || var(02) := 18 || var(03) := 04 || var(04) := 27 || var(05) := 15 || 1
trigger173 = var(06) := 06 || var(07) := 27 || var(08) := 20 || var(09) := 08 || var(10) := 05 || var(11) := 27 || 1
trigger173 = var(12) := 13 || var(13) := 01 || var(14) := 14 || var(15) := 15 || var(16) := 18 || var(17) := 00 || 1
trigger173 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger173 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger174 = cond(numhelper(6310173), helper(6310173),time <= 1, 0)
trigger174 = var(00) := 03 || var(01) := 08 || var(02) := 05 || var(03) := 01 || var(04) := 20 || var(05) := 05 || 1
trigger174 = var(06) := 18 || var(07) := 00 || var(08) := 00 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger174 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger174 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger174 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Living Proof
trigger175 = cond(numhelper(6310174), helper(6310174),time <= 1, 0)
trigger175 = var(00) := 12 || var(01) := 09 || var(02) := 22 || var(03) := 09 || var(04) := 14 || var(05) := 07 || 1
trigger175 = var(06) := 27 || var(07) := 16 || var(08) := 18 || var(09) := 15 || var(10) := 15 || var(11) := 06 || 1
trigger175 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger175 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger175 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Fair Chance
trigger176 = cond(numhelper(6310175), helper(6310175),time <= 1, 0)
trigger176 = var(00) := 01 || var(01) := 27 || var(02) := 06 || var(03) := 01 || var(04) := 09 || var(05) := 18 || 1
trigger176 = var(06) := 27 || var(07) := 03 || var(08) := 08 || var(09) := 01 || var(10) := 14 || var(11) := 03 || 1
trigger176 = var(12) := 05 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger176 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger176 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Love Taps
trigger177 = cond(numhelper(6310176), helper(6310176),time <= 1, 0)
trigger177 = var(00) := 12 || var(01) := 15 || var(02) := 22 || var(03) := 05 || var(04) := 27 || var(05) := 20 || 1
trigger177 = var(06) := 01 || var(07) := 16 || var(08) := 19 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger177 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger177 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger177 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Pot Shots
trigger178 = cond(numhelper(6310177), helper(6310177),time <= 1, 0)
trigger178 = var(00) := 16 || var(01) := 15 || var(02) := 20 || var(03) := 27 || var(04) := 19 || var(05) := 08 || 1
trigger178 = var(06) := 15 || var(07) := 20 || var(08) := 19 || var(09) := 00 || var(10) := 00 || var(11) := 00 || 1
trigger178 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger178 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger178 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; Hard Hitter
trigger179 = cond(numhelper(6310178), helper(6310178),time <= 1, 0)
trigger179 = var(00) := 08 || var(01) := 01 || var(02) := 18 || var(03) := 04 || var(04) := 27 || var(05) := 08 || 1
trigger179 = var(06) := 09 || var(07) := 20 || var(08) := 20 || var(09) := 05 || var(10) := 18 || var(11) := 00 || 1
trigger179 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger179 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger179 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
; ???
trigger180 = cond(numhelper(6310179), helper(6310179),time <= 1, 0)
trigger180 = var(00) := 05 || var(01) := 24 || var(02) := 32 || var(03) := 03 || var(04) := 05 || var(05) := 16 || 1
trigger180 = var(06) := 20 || var(07) := 09 || var(08) := 15 || var(09) := 14 || var(10) := 01 || var(11) := 12 || 1
trigger180 = var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00 || var(16) := 00 || var(17) := 00 || 1
trigger180 = var(18) := 00 || var(19) := 00 || var(20) := 00 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger180 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1

[state 6315, Length of Message String]
type = null
trigger1 = fvar(2) := 0 || 1
trigger1 = fvar(2) := fvar(2) + (var(00) > 0) + (var(01) > 0) + (var(02) > 0) + (var(03) > 0) + (var(04) > 0) + (var(05) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(06) > 0) + (var(07) > 0) + (var(08) > 0) + (var(09) > 0) + (var(10) > 0) + (var(11) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(12) > 0) + (var(13) > 0) + (var(14) > 0) + (var(15) > 0) + (var(16) > 0) + (var(17) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(18) > 0) + (var(19) > 0) + (var(20) > 0) + (var(21) > 0) + (var(22) > 0) + (var(23) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(24) > 0) + (var(25) > 0) + (var(26) > 0) + (var(27) > 0) + (var(28) > 0) + (var(29) > 0) || 1
trigger1 = fvar(2) := fvar(2) * (fvar(3) := 8.0) || 1 ; fvar(3) is the spacing between characters
trigger1 = fvar(2) := fvar(2) + 8 || 1 ; arbitrary positioning
trigger1 = fvar(4) := fvar(2) / 12.0 ; speed to slide whole string in after -X- ticks (-X- (the divisor) should be equal to the limit of fvar(1) above)

;========================< Display Message on Screen >========================

[state 6315, Modify Characters]
type = removeexplod
trigger1 = numexplod
trigger1 = fvar(0) <= 64

[state 6315, Character 29]
type = explod
trigger1 = var(abs(29 - 29 * (teamside = 2))) && !numexplod(abs(29 - 29 * (teamside = 2)))
anim = cond(var(abs(29 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(29 - 29 * (teamside = 2))) - 90, 6315 + var(abs(29 - 29 * (teamside = 2))) - 1)
ID = abs(29 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(29 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(29 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 28]
type = explod
trigger1 = var(abs(28 - 29 * (teamside = 2))) && !numexplod(abs(28 - 29 * (teamside = 2)))
anim = cond(var(abs(28 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(28 - 29 * (teamside = 2))) - 90, 6315 + var(abs(28 - 29 * (teamside = 2))) - 1)
ID = abs(28 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(28 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(28 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 27]
type = explod
trigger1 = var(abs(27 - 29 * (teamside = 2))) && !numexplod(abs(27 - 29 * (teamside = 2)))
anim = cond(var(abs(27 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(27 - 29 * (teamside = 2))) - 90, 6315 + var(abs(27 - 29 * (teamside = 2))) - 1)
ID = abs(27 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(27 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(27 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 26]
type = explod
trigger1 = var(abs(26 - 29 * (teamside = 2))) && !numexplod(abs(26 - 29 * (teamside = 2)))
anim = cond(var(abs(26 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(26 - 29 * (teamside = 2))) - 90, 6315 + var(abs(26 - 29 * (teamside = 2))) - 1)
ID = abs(26 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(26 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(26 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 25]
type = explod
trigger1 = var(abs(25 - 29 * (teamside = 2))) && !numexplod(abs(25 - 29 * (teamside = 2)))
anim = cond(var(abs(25 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(25 - 29 * (teamside = 2))) - 90, 6315 + var(abs(25 - 29 * (teamside = 2))) - 1)
ID = abs(25 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(25 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(25 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 24]
type = explod
trigger1 = var(abs(24 - 29 * (teamside = 2))) && !numexplod(abs(24 - 29 * (teamside = 2)))
anim = cond(var(abs(24 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(24 - 29 * (teamside = 2))) - 90, 6315 + var(abs(24 - 29 * (teamside = 2))) - 1)
ID = abs(24 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(24 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(24 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 23]
type = explod
trigger1 = var(abs(23 - 29 * (teamside = 2))) && !numexplod(abs(23 - 29 * (teamside = 2)))
anim = cond(var(abs(23 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(23 - 29 * (teamside = 2))) - 90, 6315 + var(abs(23 - 29 * (teamside = 2))) - 1)
ID = abs(23 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(23 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(23 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 22]
type = explod
trigger1 = var(abs(22 - 29 * (teamside = 2))) && !numexplod(abs(22 - 29 * (teamside = 2)))
anim = cond(var(abs(22 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(22 - 29 * (teamside = 2))) - 90, 6315 + var(abs(22 - 29 * (teamside = 2))) - 1)
ID = abs(22 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(22 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(22 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 21]
type = explod
trigger1 = var(abs(21 - 29 * (teamside = 2))) && !numexplod(abs(21 - 29 * (teamside = 2)))
anim = cond(var(abs(21 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(21 - 29 * (teamside = 2))) - 90, 6315 + var(abs(21 - 29 * (teamside = 2))) - 1)
ID = abs(21 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(21 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(21 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 20]
type = explod
trigger1 = var(abs(20 - 29 * (teamside = 2))) && !numexplod(abs(20 - 29 * (teamside = 2)))
anim = cond(var(abs(20 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(20 - 29 * (teamside = 2))) - 90, 6315 + var(abs(20 - 29 * (teamside = 2))) - 1)
ID = abs(20 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(20 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(20 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 19]
type = explod
trigger1 = var(abs(19 - 29 * (teamside = 2))) && !numexplod(abs(19 - 29 * (teamside = 2)))
anim = cond(var(abs(19 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(19 - 29 * (teamside = 2))) - 90, 6315 + var(abs(19 - 29 * (teamside = 2))) - 1)
ID = abs(19 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(19 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(19 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 18]
type = explod
trigger1 = var(abs(18 - 29 * (teamside = 2))) && !numexplod(abs(18 - 29 * (teamside = 2)))
anim = cond(var(abs(18 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(18 - 29 * (teamside = 2))) - 90, 6315 + var(abs(18 - 29 * (teamside = 2))) - 1)
ID = abs(18 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(18 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(18 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 17]
type = explod
trigger1 = var(abs(17 - 29 * (teamside = 2))) && !numexplod(abs(17 - 29 * (teamside = 2)))
anim = cond(var(abs(17 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(17 - 29 * (teamside = 2))) - 90, 6315 + var(abs(17 - 29 * (teamside = 2))) - 1)
ID = abs(17 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(17 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(17 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 16]
type = explod
trigger1 = var(abs(16 - 29 * (teamside = 2))) && !numexplod(abs(16 - 29 * (teamside = 2)))
anim = cond(var(abs(16 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(16 - 29 * (teamside = 2))) - 90, 6315 + var(abs(16 - 29 * (teamside = 2))) - 1)
ID = abs(16 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(16 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(16 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 15]
type = explod
trigger1 = var(abs(15 - 29 * (teamside = 2))) && !numexplod(abs(15 - 29 * (teamside = 2)))
anim = cond(var(abs(15 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(15 - 29 * (teamside = 2))) - 90, 6315 + var(abs(15 - 29 * (teamside = 2))) - 1)
ID = abs(15 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(15 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(15 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 14]
type = explod
trigger1 = var(abs(14 - 29 * (teamside = 2))) && !numexplod(abs(14 - 29 * (teamside = 2)))
anim = cond(var(abs(14 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(14 - 29 * (teamside = 2))) - 90, 6315 + var(abs(14 - 29 * (teamside = 2))) - 1)
ID = abs(14 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(14 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(14 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 13]
type = explod
trigger1 = var(abs(13 - 29 * (teamside = 2))) && !numexplod(abs(13 - 29 * (teamside = 2)))
anim = cond(var(abs(13 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(13 - 29 * (teamside = 2))) - 90, 6315 + var(abs(13 - 29 * (teamside = 2))) - 1)
ID = abs(13 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(13 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(13 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 12]
type = explod
trigger1 = var(abs(12 - 29 * (teamside = 2))) && !numexplod(abs(12 - 29 * (teamside = 2)))
anim = cond(var(abs(12 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(12 - 29 * (teamside = 2))) - 90, 6315 + var(abs(12 - 29 * (teamside = 2))) - 1)
ID = abs(12 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(12 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(12 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 11]
type = explod
trigger1 = var(abs(11 - 29 * (teamside = 2))) && !numexplod(abs(11 - 29 * (teamside = 2)))
anim = cond(var(abs(11 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(11 - 29 * (teamside = 2))) - 90, 6315 + var(abs(11 - 29 * (teamside = 2))) - 1)
ID = abs(11 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(11 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(11 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 10]
type = explod
trigger1 = var(abs(10 - 29 * (teamside = 2))) && !numexplod(abs(10 - 29 * (teamside = 2)))
anim = cond(var(abs(10 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(10 - 29 * (teamside = 2))) - 90, 6315 + var(abs(10 - 29 * (teamside = 2))) - 1)
ID = abs(10 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(10 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(10 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 9]
type = explod
trigger1 = var(abs(9 - 29 * (teamside = 2))) && !numexplod(abs(9 - 29 * (teamside = 2)))
anim = cond(var(abs(9 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(9 - 29 * (teamside = 2))) - 90, 6315 + var(abs(9 - 29 * (teamside = 2))) - 1)
ID = abs(9 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(9 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(9 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 8]
type = explod
trigger1 = var(abs(8 - 29 * (teamside = 2))) && !numexplod(abs(8 - 29 * (teamside = 2)))
anim = cond(var(abs(8 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(8 - 29 * (teamside = 2))) - 90, 6315 + var(abs(8 - 29 * (teamside = 2))) - 1)
ID = abs(8 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(8 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(8 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 7]
type = explod
trigger1 = var(abs(7 - 29 * (teamside = 2))) && !numexplod(abs(7 - 29 * (teamside = 2)))
anim = cond(var(abs(7 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(7 - 29 * (teamside = 2))) - 90, 6315 + var(abs(7 - 29 * (teamside = 2))) - 1)
ID = abs(7 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(7 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(7 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 6]
type = explod
trigger1 = var(abs(6 - 29 * (teamside = 2))) && !numexplod(abs(6 - 29 * (teamside = 2)))
anim = cond(var(abs(6 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(6 - 29 * (teamside = 2))) - 90, 6315 + var(abs(6 - 29 * (teamside = 2))) - 1)
ID = abs(6 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(6 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(6 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 5]
type = explod
trigger1 = var(abs(5 - 29 * (teamside = 2))) && !numexplod(abs(5 - 29 * (teamside = 2)))
anim = cond(var(abs(5 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(5 - 29 * (teamside = 2))) - 90, 6315 + var(abs(5 - 29 * (teamside = 2))) - 1)
ID = abs(5 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(5 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(5 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 4]
type = explod
trigger1 = var(abs(4 - 29 * (teamside = 2))) && !numexplod(abs(4 - 29 * (teamside = 2)))
anim = cond(var(abs(4 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(4 - 29 * (teamside = 2))) - 90, 6315 + var(abs(4 - 29 * (teamside = 2))) - 1)
ID = abs(4 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(4 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(4 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 3]
type = explod
trigger1 = var(abs(3 - 29 * (teamside = 2))) && !numexplod(abs(3 - 29 * (teamside = 2)))
anim = cond(var(abs(3 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(3 - 29 * (teamside = 2))) - 90, 6315 + var(abs(3 - 29 * (teamside = 2))) - 1)
ID = abs(3 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(3 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(3 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 2]
type = explod
trigger1 = var(abs(2 - 29 * (teamside = 2))) && !numexplod(abs(2 - 29 * (teamside = 2)))
anim = cond(var(abs(2 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(2 - 29 * (teamside = 2))) - 90, 6315 + var(abs(2 - 29 * (teamside = 2))) - 1)
ID = abs(2 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(2 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(2 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 1]
type = explod
trigger1 = var(abs(1 - 29 * (teamside = 2))) && !numexplod(abs(1 - 29 * (teamside = 2)))
anim = cond(var(abs(1 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(1 - 29 * (teamside = 2))) - 90, 6315 + var(abs(1 - 29 * (teamside = 2))) - 1)
ID = abs(1 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(1 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(1 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6315, Character 0]
type = explod
trigger1 = var(abs(0 - 29 * (teamside = 2))) && !numexplod(abs(0 - 29 * (teamside = 2)))
anim = cond(var(abs(0 - 29 * (teamside = 2))) >= 90, 6300 + var(abs(0 - 29 * (teamside = 2))) - 90, 6315 + var(abs(0 - 29 * (teamside = 2))) - 1)
ID = abs(0 - 29 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + fvar(4) * fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = cond(var(abs(0 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(38), cond(var(abs(0 - 29 * (teamside = 2))) >= 90, 1.0, 0.5) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Remove Messages >========================

[state 6315, Remove Message]
type = removeexplod
trigger1 = fvar(0) > 64
trigger1 = fvar(0) := 0 || fvar(1) := 0 || 1

[state 6315, Reset Position]
type = varrangeset
trigger1 = !numexplod
trigger2 = numhelper(6310001) + numhelper(6310002) >= 2
value = 0

[state 6315, Reset Position]
type = varrangeset
trigger1 = !numexplod
trigger2 = numhelper(6310001) + numhelper(6310002) >= 2
fvalue = 0

[state 6315, Buffer Time Between Messages]
type = varadd
trigger1 = sysvar(0) && !numexplod
sysvar(0) = -1

[state 6315, Hit Counter]
type = varset
trigger1 = cond(numhelper(6310001), helper(6310001),time = 1, 0)
trigger2 = cond(numhelper(6310002), helper(6310002),time = 1, 0)
sysvar(1) = 0

[state 6315, Prolong End of Round]
type = assertspecial
trigger1 = roundstate >= 4
trigger1 = (root,stateno = [180, 189]) || (root,stateno = [4200, 4299])
trigger1 = cond(numhelper(4000), helper(4000),var(8) > 0, 1)
trigger1 = sysvar(0)
flag = roundnotover

;========================< Reset Message System >========================

[state 6315, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6315, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Selection Timer
;=========================================================================
[Statedef 6350]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6350, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(12), 0)
trigger2 = cond(numhelper(4000), !helper(4000),var(15), 0)
trigger2 = cond(numhelper(4000), !helper(4000),var(19), 0)

[state 6350, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(12), 0)
trigger2 = cond(numhelper(4000), !helper(4000),var(15), 0)
trigger2 = cond(numhelper(4000), !helper(4000),var(19), 0)

[state 6350, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6350, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -20

;========================< Initialize Selection Timer >========================

[state 6350, Set Time]
type = varset
trigger1 = !time
fvar(0) = cond(numhelper(4000), helper(4000),var(12), 10)

[state 6350, Position & Size of Selection Timer]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(13), cond(teamside = 1, 0, 320)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(14), 56) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(4), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(5), 1.0)

;========================< Display Timer on Screen >========================

[state 6350, Reset Canvas]
type = removeexplod
trigger1 = 1
ID = 0
[state 6350, Reset Ones]
type = removeexplod
trigger1 = 1
ID = 1
[state 6350, Reset Tens]
type = removeexplod
trigger1 = 1
ID = 2

[state 6350, Retract Selection Timer]
type = varadd
trigger1 = !fvar(0) || !numhelper(6365) && !numhelper(6430)
trigger1 = var(0) < ceil(169 * 0.65 * fvar(38))
var(0) = 12

[state 6350, Timer Canvas]
type = explod
trigger1 = !numexplod(0)
anim = 6350 + (teamside = 2)
ID = 0
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -var(0), var(0))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.65 * fvar(38), 0.65 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6350, Ones]
type = explod
trigger1 = !numexplod(1)
anim = 6355 + floor(fvar(0) / 1) % 10
ID = 1
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, 10 - var(0), -10 + var(0))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 21) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6350, Tens]
type = explod
trigger1 = !numexplod(2)
anim = 6355 + floor(fvar(0) / 10) % 10
ID = 2
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, 2 - var(0), -18 + var(0))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 21) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6350, Press Start]
type = explod
trigger1 = !numexplod(3)
anim = 6352 + (teamside = 2)
ID = 3
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, 3, -3)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 4) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.65 * fvar(38), 0.65 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6350, Reset Press Start]
type = removeexplod
trigger1 = cond(time % 16 <= 8, 1, 0)
trigger2 = var(0)
ID = 3

;========================< Sounds and Special Effects >========================

[state 6350, Special Effect]
type = assertspecial
trigger1 = fvar(0) || var(0) < ceil(169 * 0.65 * fvar(38))
flag = intro

;========================< Buffer Timer >========================

[state 6350, Count Down]
type = varadd
trigger1 = fvar(0)
trigger1 = numhelper(6365) || numhelper(6430)
fvar(0) = -0.01666666666666666666666666666667

[state 6350, Restrict Timer]
type = varset
trigger1 = fvar(0) < 0
fvar(0) = 0.0

;========================< Reset Win Score System >========================

[state 6350, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647
trigger2 = var(0) >= ceil(169 * 0.65 * fvar(38))

[state 6350, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647
trigger2 = var(0) >= ceil(169 * 0.65 * fvar(38))

;=========================================================================
; SF3 Selector Unstacked
;=========================================================================
[Statedef 6365]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6365, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(15), 0)

[state 6365, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(15), 0)

[state 6365, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6365, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -24

;========================< Initialize Super Art Selection >========================

[state 6365, Initialize Super Art]
type = parentvarset
trigger1 = !time
var(21) = cond(numhelper(4000), helper(4000),var(15) + (helper(4000),var(15) = 1 && !helper(4000),var(22)), 2)
persistent = 0

[state 6365, Position & Size of Super Art Selection]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(16), cond(teamside = 1, 80, 240)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(17), 200) || 1
trigger1 = fvar(37) := fvar(37) - 40 * cond(root,var(55) && numpartner, partner,ID > root,ID, 0) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(6), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(7), 1.0)

;========================< Detect Super Art Selection >========================

[state 6365, Button Detect]
type = varset
trigger1 = root,command = "up" || root,command = "down"
fvar(0) = -1 + 2 * root,command = "down"

[state 6365, Button Hold Detect]
type = varadd
trigger1 = root,command = "holdup" || root,command = "holddown"
fvar(1) = 1

[state 6365, Button Hold Buffer Detect]
type = varset
trigger1 = root,command = "holdup" || root,command = "holddown"
trigger1 = fvar(1) >= 32 && floor(fvar(1)) % 8 = 0
fvar(0) = -1 + 2 * root,command = "holddown"

[state 6365, Super Art Selection]
type = parentvaradd
trigger1 = fvar(0)
var(21) = floor(fvar(0))

;========================< Prevent Super Art Selection from Going out of Bounds >========================

[state 6365, Limit Super Art Selection]
type = parentvarset
trigger1 = root,var(21) != [1, 5]
var(21) = cond(root,var(21) < 1, 5, 1)

;========================< Configure Super Art Name >========================
; 01 = A || 14 = N || 27 = [space]
; 02 = B || 15 = O
; 03 = C || 16 = P
; 04 = D || 17 = Q
; 05 = E || 18 = R
; 06 = F || 19 = S
; 07 = G || 20 = T
; 08 = H || 21 = U
; 09 = I || 22 = V
; 10 = J || 23 = W
; 11 = K || 24 = X
; 12 = L || 25 = Y
; 13 = M || 26 = Z
[state 6365, Characters of Super Art String]
type = null
; Disable Bars
trigger1 = root,var(21) = 1
trigger1 = var(00) := 04 || var(01) := 09 || var(02) := 19 || var(03) := 01 || var(04) := 02 || 1
trigger1 = var(05) := 12 || var(06) := 05 || var(07) := 27 || var(08) := 02 || var(09) := 01 || 1
trigger1 = var(10) := 18 || var(11) := 19 || var(12) := 00 || var(13) := 00 || var(14) := 00 || 1
trigger1 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; All Super Arts
trigger2 = root,var(21) = 2
trigger2 = var(00) := 01 || var(01) := 12 || var(02) := 12 || var(03) := 27 || var(04) := 19 || 1
trigger2 = var(05) := 21 || var(06) := 16 || var(07) := 05 || var(08) := 18 || var(09) := 27 || 1
trigger2 = var(10) := 01 || var(11) := 18 || var(12) := 20 || var(13) := 19 || var(14) := 00 || 1
trigger2 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art I: Tyrant Slaughter
trigger3 = root,var(21) = 3
trigger3 = var(00) := 20 || var(01) := 25 || var(02) := 18 || var(03) := 01 || var(04) := 14 || 1
trigger3 = var(05) := 20 || var(06) := 27 || var(07) := 19 || var(08) := 12 || var(09) := 01 || 1
trigger3 = var(10) := 21 || var(11) := 07 || var(12) := 08 || var(13) := 20 || var(14) := 05 || 1
trigger3 = var(15) := 18 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art II: Temporal Thunder
trigger4 = root,var(21) = 4
trigger4 = var(00) := 20 || var(01) := 05 || var(02) := 13 || var(03) := 16 || var(04) := 15 || 1
trigger4 = var(05) := 18 || var(06) := 01 || var(07) := 12 || var(08) := 27 || var(09) := 20 || 1
trigger4 = var(10) := 08 || var(11) := 21 || var(12) := 14 || var(13) := 04 || var(14) := 05 || 1
trigger4 = var(15) := 18 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art III: Aegis Reflector
trigger5 = root,var(21) = 5
trigger5 = var(00) := 01 || var(01) := 05 || var(02) := 07 || var(03) := 09 || var(04) := 19 || 1
trigger5 = var(05) := 27 || var(06) := 18 || var(07) := 05 || var(08) := 06 || var(09) := 12 || 1
trigger5 = var(10) := 05 || var(11) := 03 || var(12) := 20 || var(13) := 15 || var(14) := 18 || 1
trigger5 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art IV: ???
trigger6 = root,var(21) = 6
trigger6 = var(00) := 00 || var(01) := 05 || var(02) := 00 || var(03) := 00 || var(04) := 00 || 1
trigger6 = var(05) := 00 || var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || 1
trigger6 = var(10) := 00 || var(11) := 00 || var(12) := 00 || var(13) := 00 || var(14) := 00 || 1
trigger6 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art V: ???
trigger7 = root,var(21) = 7
trigger7 = var(00) := 00 || var(01) := 05 || var(02) := 00 || var(03) := 00 || var(04) := 00 || 1
trigger7 = var(05) := 00 || var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || 1
trigger7 = var(10) := 00 || var(11) := 00 || var(12) := 00 || var(13) := 00 || var(14) := 00 || 1
trigger7 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1

[state 6365, Length of Super Art String]
type = null
trigger1 = fvar(2) := 0 || 1
trigger1 = fvar(2) := fvar(2) + (var(00) > 0) + (var(01) > 0) + (var(02) > 0) + (var(03) > 0) + (var(04) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(05) > 0) + (var(06) > 0) + (var(07) > 0) + (var(08) > 0) + (var(09) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(10) > 0) + (var(11) > 0) + (var(12) > 0) + (var(13) > 0) + (var(14) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(15) > 0) + (var(16) > 0) + (var(17) > 0) + (var(18) > 0) + (var(19) > 0) || 1
trigger1 = fvar(2) := fvar(2) * (fvar(3) := 4.0) || 1 ; fvar(3) is the spacing between characters
trigger1 = fvar(2) := fvar(2) + cond(teamside = 1, 16 - 8 * (root,var(21) <= 2), 16) || 1 ; arbitrary positioning
trigger1 = fvar(4) := fvar(2) / 2.0 ; center the text

;========================< Select Position of Super Art Texts >========================
; var(20) - var(27):
; 00 = 236
; 01 = 214
; 02 = 623
; 03 = 421
; 04 = 41236
; 05 = 63214
; 06 = 63214789
; 07 = Punch
; 08 = Kick
; 09 = punch or kick
; 10 = And (+) 
; 11 = Approach
; 12 = Charge
; 13 = In the Air
; 14 = Push
; 15 = Rapidly
; 16 = Then

[state 6365, Position of Super Art Texts]
type = null
; Disable Bars
trigger1 = root,var(21) = 1
trigger1 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(27) := cond(teamside = 1, -1, -1) || 1

; All Super Arts
trigger2 = root,var(21) = 2
trigger2 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art I: Tyrant Slaughter
trigger3 = root,var(21) = 3
trigger3 = var(20) := cond(teamside = 1, 0, 1) || 1
trigger3 = var(21) := cond(teamside = 1, 0, 1) || 1
trigger3 = var(22) := cond(teamside = 1, 10, 10) || 1
trigger3 = var(23) := cond(teamside = 1, 7, 7) || 1
trigger3 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger3 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger3 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger3 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art II: Temporal Thunder
trigger4 = root,var(21) = 4
trigger4 = var(20) := cond(teamside = 1, 0, 1) || 1
trigger4 = var(21) := cond(teamside = 1, 0, 1) || 1
trigger4 = var(22) := cond(teamside = 1, 10, 10) || 1
trigger4 = var(23) := cond(teamside = 1, 7, 7) || 1
trigger4 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger4 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger4 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger4 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art III: Aegis Reflector
trigger5 = root,var(21) = 5
trigger5 = var(20) := cond(teamside = 1, 0, 1) || 1
trigger5 = var(21) := cond(teamside = 1, 0, 1) || 1
trigger5 = var(22) := cond(teamside = 1, 10, 10) || 1
trigger5 = var(23) := cond(teamside = 1, 7, 7) || 1
trigger5 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger5 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger5 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger5 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art IV: ???
trigger6 = root,var(21) = 6
trigger6 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art V: ???
trigger7 = root,var(21) = 7
trigger7 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(27) := cond(teamside = 1, -1, -1) || 1

[state 6365, Size of Each Command Object]
type = null
trigger1 = var(28) := 09 * (var(20) = 00) + 09 * (var(20) = 01) + 09 * (var(20) = 02) + 09 * (var(20) = 03) + 12 * (var(20) = 04)
trigger2 = var(28) := 12 * (var(20) = 05) + 11 * (var(20) = 06) + 09 * (var(20) = 07) + 09 * (var(20) = 08) + 13 * (var(20) = 09)
trigger3 = var(28) := 06 * (var(20) = 10) + 22 * (var(20) = 11) + 19 * (var(20) = 12) + 15 * (var(20) = 13) + 12 * (var(20) = 14)
trigger4 = var(28) := 19 * (var(20) = 15) + 11 * (var(20) = 16) + 00 * (var(20) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(29) := 09 * (var(21) = 00) + 09 * (var(21) = 01) + 09 * (var(21) = 02) + 09 * (var(21) = 03) + 12 * (var(21) = 04)
trigger2 = var(29) := 12 * (var(21) = 05) + 11 * (var(21) = 06) + 09 * (var(21) = 07) + 09 * (var(21) = 08) + 13 * (var(21) = 09)
trigger3 = var(29) := 06 * (var(21) = 10) + 22 * (var(21) = 11) + 19 * (var(21) = 12) + 15 * (var(21) = 13) + 12 * (var(21) = 14)
trigger4 = var(29) := 19 * (var(21) = 15) + 11 * (var(21) = 16) + 00 * (var(21) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(30) := 09 * (var(22) = 00) + 09 * (var(22) = 01) + 09 * (var(22) = 02) + 09 * (var(22) = 03) + 12 * (var(22) = 04)
trigger2 = var(30) := 12 * (var(22) = 05) + 11 * (var(22) = 06) + 09 * (var(22) = 07) + 09 * (var(22) = 08) + 13 * (var(22) = 09)
trigger3 = var(30) := 06 * (var(22) = 10) + 22 * (var(22) = 11) + 19 * (var(22) = 12) + 15 * (var(22) = 13) + 12 * (var(22) = 14)
trigger4 = var(30) := 19 * (var(22) = 15) + 11 * (var(22) = 16) + 00 * (var(22) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(31) := 09 * (var(23) = 00) + 09 * (var(23) = 01) + 09 * (var(23) = 02) + 09 * (var(23) = 03) + 12 * (var(23) = 04)
trigger2 = var(31) := 12 * (var(23) = 05) + 11 * (var(23) = 06) + 09 * (var(23) = 07) + 09 * (var(23) = 08) + 13 * (var(23) = 09)
trigger3 = var(31) := 06 * (var(23) = 10) + 22 * (var(23) = 11) + 19 * (var(23) = 12) + 15 * (var(23) = 13) + 12 * (var(23) = 14)
trigger4 = var(31) := 19 * (var(23) = 15) + 11 * (var(23) = 16) + 00 * (var(23) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(32) := 09 * (var(24) = 00) + 09 * (var(24) = 01) + 09 * (var(24) = 02) + 09 * (var(24) = 03) + 12 * (var(24) = 04)
trigger2 = var(32) := 12 * (var(24) = 05) + 11 * (var(24) = 06) + 09 * (var(24) = 07) + 09 * (var(24) = 08) + 13 * (var(24) = 09)
trigger3 = var(32) := 06 * (var(24) = 10) + 22 * (var(24) = 11) + 19 * (var(24) = 12) + 15 * (var(24) = 13) + 12 * (var(24) = 14)
trigger4 = var(32) := 19 * (var(24) = 15) + 11 * (var(24) = 16) + 00 * (var(24) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(33) := 09 * (var(25) = 00) + 09 * (var(25) = 01) + 09 * (var(25) = 02) + 09 * (var(25) = 03) + 12 * (var(25) = 04)
trigger2 = var(33) := 12 * (var(25) = 05) + 11 * (var(25) = 06) + 09 * (var(25) = 07) + 09 * (var(25) = 08) + 13 * (var(25) = 09)
trigger3 = var(33) := 06 * (var(25) = 10) + 22 * (var(25) = 11) + 19 * (var(25) = 12) + 15 * (var(25) = 13) + 12 * (var(25) = 14)
trigger4 = var(33) := 19 * (var(25) = 15) + 11 * (var(25) = 16) + 00 * (var(25) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(34) := 09 * (var(26) = 00) + 09 * (var(26) = 01) + 09 * (var(26) = 02) + 09 * (var(26) = 03) + 12 * (var(26) = 04)
trigger2 = var(34) := 12 * (var(26) = 05) + 11 * (var(26) = 06) + 09 * (var(26) = 07) + 09 * (var(26) = 08) + 13 * (var(26) = 09)
trigger3 = var(34) := 06 * (var(26) = 10) + 22 * (var(26) = 11) + 19 * (var(26) = 12) + 15 * (var(26) = 13) + 12 * (var(26) = 14)
trigger4 = var(34) := 19 * (var(26) = 15) + 11 * (var(26) = 16) + 00 * (var(26) = -1)
[state 6365, Size of Each Command Object]
type = null
trigger1 = var(35) := 09 * (var(27) = 00) + 09 * (var(27) = 01) + 09 * (var(27) = 02) + 09 * (var(27) = 03) + 12 * (var(27) = 04)
trigger2 = var(35) := 12 * (var(27) = 05) + 11 * (var(27) = 06) + 09 * (var(27) = 07) + 09 * (var(27) = 08) + 13 * (var(27) = 09)
trigger3 = var(35) := 06 * (var(27) = 10) + 22 * (var(27) = 11) + 19 * (var(27) = 12) + 15 * (var(27) = 13) + 12 * (var(27) = 14)
trigger4 = var(35) := 19 * (var(27) = 15) + 11 * (var(27) = 16) + 00 * (var(27) = -1)

[state 6365, Length of Command String]
type = null
trigger1 = fvar(05) := 0 || fvar(13) := 0 || 1
trigger1 = fvar(05) := var(28) + var(29) + var(30) + var(31) + var(32) + var(33) + var(34) || 1
trigger1 = fvar(06) := var(28) + var(29) + var(30) + var(31) + var(32) + var(33) || 1
trigger1 = fvar(07) := var(28) + var(29) + var(30) + var(31) + var(32) || 1
trigger1 = fvar(08) := var(28) + var(29) + var(30) + var(31) || 1
trigger1 = fvar(09) := var(28) + var(29) + var(30) || 1
trigger1 = fvar(10) := var(28) + var(29) || 1
trigger1 = fvar(11) := var(28) || 1
trigger1 = fvar(12) := 0 || 1
trigger1 = fvar(13) := -fvar(5) / 2.0 ; center the command string

;========================< Display Super Art Selection on Screen >========================

[state 6365, Reset]
type = removeexplod
trigger1 = fvar(0)

[state 6365, Super Art Panel]
type = explod
trigger1 = !numexplod(31)
anim = 6365
ID = 31
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Display Super Art Text on Screen >========================

[state 6365, Super Art Roman Numeral]
type = explod
trigger1 = teamside = 2 && !numexplod(20) && root,var(21) != [1, 2]
anim = 6420 + (root,var(21) - 3)
ID = 20
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 19]
type = explod
trigger1 = var(abs(19 - 19 * (teamside = 2))) && !numexplod(abs(19 - 19 * (teamside = 2)))
anim = 6370 + var(abs(19 - 19 * (teamside = 2))) - 1
ID = abs(19 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 18]
type = explod
trigger1 = var(abs(18 - 19 * (teamside = 2))) && !numexplod(abs(18 - 19 * (teamside = 2)))
anim = 6370 + var(abs(18 - 19 * (teamside = 2))) - 1
ID = abs(18 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 17]
type = explod
trigger1 = var(abs(17 - 19 * (teamside = 2))) && !numexplod(abs(17 - 19 * (teamside = 2)))
anim = 6370 + var(abs(17 - 19 * (teamside = 2))) - 1
ID = abs(17 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 16]
type = explod
trigger1 = var(abs(16 - 19 * (teamside = 2))) && !numexplod(abs(16 - 19 * (teamside = 2)))
anim = 6370 + var(abs(16 - 19 * (teamside = 2))) - 1
ID = abs(16 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 15]
type = explod
trigger1 = var(abs(15 - 19 * (teamside = 2))) && !numexplod(abs(15 - 19 * (teamside = 2)))
anim = 6370 + var(abs(15 - 19 * (teamside = 2))) - 1
ID = abs(15 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 14]
type = explod
trigger1 = var(abs(14 - 19 * (teamside = 2))) && !numexplod(abs(14 - 19 * (teamside = 2)))
anim = 6370 + var(abs(14 - 19 * (teamside = 2))) - 1
ID = abs(14 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 13]
type = explod
trigger1 = var(abs(13 - 19 * (teamside = 2))) && !numexplod(abs(13 - 19 * (teamside = 2)))
anim = 6370 + var(abs(13 - 19 * (teamside = 2))) - 1
ID = abs(13 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 12]
type = explod
trigger1 = var(abs(12 - 19 * (teamside = 2))) && !numexplod(abs(12 - 19 * (teamside = 2)))
anim = 6370 + var(abs(12 - 19 * (teamside = 2))) - 1
ID = abs(12 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 11]
type = explod
trigger1 = var(abs(11 - 19 * (teamside = 2))) && !numexplod(abs(11 - 19 * (teamside = 2)))
anim = 6370 + var(abs(11 - 19 * (teamside = 2))) - 1
ID = abs(11 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 10]
type = explod
trigger1 = var(abs(10 - 19 * (teamside = 2))) && !numexplod(abs(10 - 19 * (teamside = 2)))
anim = 6370 + var(abs(10 - 19 * (teamside = 2))) - 1
ID = abs(10 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 9]
type = explod
trigger1 = var(abs(9 - 19 * (teamside = 2))) && !numexplod(abs(9 - 19 * (teamside = 2)))
anim = 6370 + var(abs(9 - 19 * (teamside = 2))) - 1
ID = abs(9 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 8]
type = explod
trigger1 = var(abs(8 - 19 * (teamside = 2))) && !numexplod(abs(8 - 19 * (teamside = 2)))
anim = 6370 + var(abs(8 - 19 * (teamside = 2))) - 1
ID = abs(8 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 7]
type = explod
trigger1 = var(abs(7 - 19 * (teamside = 2))) && !numexplod(abs(7 - 19 * (teamside = 2)))
anim = 6370 + var(abs(7 - 19 * (teamside = 2))) - 1
ID = abs(7 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 6]
type = explod
trigger1 = var(abs(6 - 19 * (teamside = 2))) && !numexplod(abs(6 - 19 * (teamside = 2)))
anim = 6370 + var(abs(6 - 19 * (teamside = 2))) - 1
ID = abs(6 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 5]
type = explod
trigger1 = var(abs(5 - 19 * (teamside = 2))) && !numexplod(abs(5 - 19 * (teamside = 2)))
anim = 6370 + var(abs(5 - 19 * (teamside = 2))) - 1
ID = abs(5 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 4]
type = explod
trigger1 = var(abs(4 - 19 * (teamside = 2))) && !numexplod(abs(4 - 19 * (teamside = 2)))
anim = 6370 + var(abs(4 - 19 * (teamside = 2))) - 1
ID = abs(4 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 3]
type = explod
trigger1 = var(abs(3 - 19 * (teamside = 2))) && !numexplod(abs(3 - 19 * (teamside = 2)))
anim = 6370 + var(abs(3 - 19 * (teamside = 2))) - 1
ID = abs(3 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 2]
type = explod
trigger1 = var(abs(2 - 19 * (teamside = 2))) && !numexplod(abs(2 - 19 * (teamside = 2)))
anim = 6370 + var(abs(2 - 19 * (teamside = 2))) - 1
ID = abs(2 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 1]
type = explod
trigger1 = var(abs(1 - 19 * (teamside = 2))) && !numexplod(abs(1 - 19 * (teamside = 2)))
anim = 6370 + var(abs(1 - 19 * (teamside = 2))) - 1
ID = abs(1 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Character 0]
type = explod
trigger1 = var(abs(0 - 19 * (teamside = 2))) && !numexplod(abs(0 - 19 * (teamside = 2)))
anim = 6370 + var(abs(0 - 19 * (teamside = 2))) - 1
ID = abs(0 - 19 * (teamside = 2))
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Roman Numeral]
type = explod
trigger1 = teamside = 1 && !numexplod(20) && root,var(21) != [1, 2]
anim = 6420 + (root,var(21) - 3)
ID = 20
postype = left
pos = ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Display Super Art Commands on Screen >========================

[state 6365, Super Art Motion Slot 1]
type = explod
trigger1 = !numexplod(21) && var(20) >= 0
anim = 6400 + var(20)
ID = 21
postype = left
pos = ceil((fvar(36) + fvar(12) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 2]
type = explod
trigger1 = !numexplod(22) && var(21) >= 0
anim = 6400 + var(21)
ID = 22
postype = left
pos = ceil((fvar(36) + fvar(11) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 3]
type = explod
trigger1 = !numexplod(23) && var(22) >= 0
anim = 6400 + var(22)
ID = 23
postype = left
pos = ceil((fvar(36) + fvar(10) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 4]
type = explod
trigger1 = !numexplod(24) && var(23) >= 0
anim = 6400 + var(23)
ID = 24
postype = left
pos = ceil((fvar(36) + fvar(9) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 5]
type = explod
trigger1 = !numexplod(25) && var(24) >= 0
anim = 6400 + var(24)
ID = 25
postype = left
pos = ceil((fvar(36) + fvar(8) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 6]
type = explod
trigger1 = !numexplod(26) && var(25) >= 0
anim = 6400 + var(25)
ID = 26
postype = left
pos = ceil((fvar(36) + fvar(7) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 7]
type = explod
trigger1 = !numexplod(27) && var(26) >= 0
anim = 6400 + var(26)
ID = 27
postype = left
pos = ceil((fvar(36) + fvar(6) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Motion Slot 8]
type = explod
trigger1 = !numexplod(28) && var(27) >= 0
anim = 6400 + var(27)
ID = 28
postype = left
pos = ceil((fvar(36) + fvar(5) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Display Super Art Arrows on Screen >========================

[state 6365, Super Art Up Arrow]
type = explod
trigger1 = !numexplod(29)
anim = 6425 + (fvar(0) = -1)
ID = 29
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6365, Super Art Down Arrow]
type = explod
trigger1 = !numexplod(30)
anim = 6427 + (fvar(0) = 1)
ID = 30
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Sounds and Special Effects >========================

[state 6365, Still Selecting]
type = null
triggerall = cond(numhelper(4000), !helper(4000),var(12), 0) || !numhelper(6350)
trigger1 = !time
trigger1 = var(59) := 120
trigger2 = fvar(0) && var(59) = (0, 120)
trigger2 = var(59) := var(59) + 40
trigger2 = var(59) > 120
trigger2 = var(59) := 120

[state 6365, Still Selecting]
type = varadd
trigger1 = var(59)
var(59) = -1

[state 6365, Still Selecting]
type = assertspecial
trigger1 = var(59)
flag = intro

[state 6365, Super Art Selection Sound]
type = playsnd
trigger1 = fvar(0)
value = 6365, 0
volumescale = 100

;========================< Buffer Super Art Selection >========================

[state 6365, Reset Limit]
type = varset
trigger1 = 1
fvar(0) = 0

[state 6365, Reset Limit]
type = varset
trigger1 = root,command != "holdup" && root,command != "holddown"
fvar(1) = 0

;========================< Implement Chosen Super Art >========================

[state 6365, Super Art Selection Sound]
type = playsnd
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"
value = 6365, 1
volumescale = 100

[state 6365, Destroy Explod]
type = removeexplod
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"

[state 6365, Destroy Helper]
type = destroyself
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"

;=========================================================================
; SF3 Selector Stacked
;=========================================================================
[Statedef 6366]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6366, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(15), 0)

[state 6366, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(15), 0)

[state 6366, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6366, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -24

;========================< Initialize Super Art Selection >========================

[state 6366, Initialize Super Art]
type = parentvarset
trigger1 = !time
var(21) = cond(numhelper(4000), helper(4000),var(15) + (helper(4000),var(15) = 1 && !helper(4000),var(22)), 2)
persistent = 0

[state 6366, Position & Size of Super Art Selection]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(16), cond(teamside = 1, 80, 240)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(17), 200) || 1
trigger1 = fvar(37) := fvar(37) - 40 * cond(root,var(55) && numpartner, partner,ID > root,ID, 0) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(6), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(7), 1.0)

;========================< Detect Super Art Selection >========================

[state 6366, Button Detect]
type = varset
trigger1 = !var(36)
trigger1 = root,command = "up" || root,command = "down"
fvar(0) = -1 + 2 * root,command = "down"

[state 6366, Button Hold Detect]
type = varadd
trigger1 = root,command = "holdup" || root,command = "holddown"
fvar(1) = 1

[state 6366, Button Hold Buffer Detect]
type = varset
trigger1 = root,command = "holdup" || root,command = "holddown"
trigger1 = fvar(1) >= 32 && !var(36)
fvar(0) = -1 + 2 * root,command = "holddown"

[state 6366, Restart Panel Positioning]
type = varset
trigger1 = fvar(0)
var(36) = 0

[state 6366, Increment Panel Positioning]
type = varadd
trigger1 = fvar(0) = 1 || var(36) = [1, 28)
var(36) = 2

[state 6366, Increment Panel Positioning]
type = varadd
trigger1 = fvar(0) = -1 || var(36) = (-28, -1]
var(36) = -2

[state 6366, Panel Starting Position]
type = null
trigger1 = !time
trigger1 = var(37) := 0 || var(38) := 1 || var(39) := 2

[state 6366, Super Art Panel Position]
type = null
trigger1 = fvar(0) && var(36) > 0
trigger1 = var(37) := cond(var(37) + 1 > 2, 0, var(37) + 1) || 1
trigger1 = var(38) := cond(var(38) + 1 > 2, 0, var(38) + 1) || 1
trigger1 = var(39) := cond(var(39) + 1 > 2, 0, var(39) + 1)

[state 6366, Super Art Panel Position]
type = null
trigger1 = fvar(0) && var(36) < 0
trigger1 = var(37) := cond(var(37) - 1 < 0, 2, var(37) - 1) || 1
trigger1 = var(38) := cond(var(38) - 1 < 0, 2, var(38) - 1) || 1
trigger1 = var(39) := cond(var(39) - 1 < 0, 2, var(39) - 1)

[state 6366, Super Art Selection]
type = parentvaradd
trigger1 = fvar(0)
var(21) = floor(fvar(0))

;========================< Prevent Super Art Selection from Going out of Bounds >========================

[state 6366, Limit Super Art Selection]
type = parentvarset
trigger1 = root,var(21) != [1, 5]
var(21) = cond(root,var(21) < 1, 5, 1)

;========================< Configure Super Art Name >========================
; 01 = A || 14 = N || 27 = [space]
; 02 = B || 15 = O
; 03 = C || 16 = P
; 04 = D || 17 = Q
; 05 = E || 18 = R
; 06 = F || 19 = S
; 07 = G || 20 = T
; 08 = H || 21 = U
; 09 = I || 22 = V
; 10 = J || 23 = W
; 11 = K || 24 = X
; 12 = L || 25 = Y
; 13 = M || 26 = Z
[state 6366, Characters of Super Art String]
type = null
triggerall = !time || var(36) = 14 || var(36) = -14

; Disable Bars
trigger1 = root,var(21) = 1
trigger1 = var(00) := 04 || var(01) := 09 || var(02) := 19 || var(03) := 01 || var(04) := 02 || 1
trigger1 = var(05) := 12 || var(06) := 05 || var(07) := 27 || var(08) := 02 || var(09) := 01 || 1
trigger1 = var(10) := 18 || var(11) := 19 || var(12) := 00 || var(13) := 00 || var(14) := 00 || 1
trigger1 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; All Super Arts
trigger2 = root,var(21) = 2
trigger2 = var(00) := 01 || var(01) := 12 || var(02) := 12 || var(03) := 27 || var(04) := 19 || 1
trigger2 = var(05) := 21 || var(06) := 16 || var(07) := 05 || var(08) := 18 || var(09) := 27 || 1
trigger2 = var(10) := 01 || var(11) := 18 || var(12) := 20 || var(13) := 19 || var(14) := 00 || 1
trigger2 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art I: Tyrant Slaughter
trigger3 = root,var(21) = 3
trigger3 = var(00) := 20 || var(01) := 25 || var(02) := 18 || var(03) := 01 || var(04) := 14 || 1
trigger3 = var(05) := 20 || var(06) := 27 || var(07) := 19 || var(08) := 12 || var(09) := 01 || 1
trigger3 = var(10) := 21 || var(11) := 07 || var(12) := 08 || var(13) := 20 || var(14) := 05 || 1
trigger3 = var(15) := 18 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art II: Temporal Thunder
trigger4 = root,var(21) = 4
trigger4 = var(00) := 20 || var(01) := 05 || var(02) := 13 || var(03) := 16 || var(04) := 15 || 1
trigger4 = var(05) := 18 || var(06) := 01 || var(07) := 12 || var(08) := 27 || var(09) := 20 || 1
trigger4 = var(10) := 08 || var(11) := 21 || var(12) := 14 || var(13) := 04 || var(14) := 05 || 1
trigger4 = var(15) := 18 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art III: Aegis Reflector
trigger5 = root,var(21) = 5
trigger5 = var(00) := 01 || var(01) := 05 || var(02) := 07 || var(03) := 09 || var(04) := 19 || 1
trigger5 = var(05) := 27 || var(06) := 18 || var(07) := 05 || var(08) := 06 || var(09) := 12 || 1
trigger5 = var(10) := 05 || var(11) := 03 || var(12) := 20 || var(13) := 15 || var(14) := 18 || 1
trigger5 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art IV: ???
trigger6 = root,var(21) = 6
trigger6 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || 1
trigger6 = var(05) := 00 || var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || 1
trigger6 = var(10) := 00 || var(11) := 00 || var(12) := 00 || var(13) := 00 || var(14) := 00 || 1
trigger6 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1
; Super Art V: ???
trigger7 = root,var(21) = 7
trigger7 = var(00) := 00 || var(01) := 00 || var(02) := 00 || var(03) := 00 || var(04) := 00 || 1
trigger7 = var(05) := 00 || var(06) := 00 || var(07) := 00 || var(08) := 00 || var(09) := 00 || 1
trigger7 = var(10) := 00 || var(11) := 00 || var(12) := 00 || var(13) := 00 || var(14) := 00 || 1
trigger7 = var(15) := 00 || var(16) := 00 || var(17) := 00 || var(18) := 00 || var(19) := 00 || 1

[state 6366, Length of Super Art String]
type = null
trigger1 = fvar(2) := 0 || 1
trigger1 = fvar(2) := fvar(2) + (var(00) > 0) + (var(01) > 0) + (var(02) > 0) + (var(03) > 0) + (var(04) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(05) > 0) + (var(06) > 0) + (var(07) > 0) + (var(08) > 0) + (var(09) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(10) > 0) + (var(11) > 0) + (var(12) > 0) + (var(13) > 0) + (var(14) > 0) || 1
trigger1 = fvar(2) := fvar(2) + (var(15) > 0) + (var(16) > 0) + (var(17) > 0) + (var(18) > 0) + (var(19) > 0) || 1
trigger1 = fvar(2) := fvar(2) * (fvar(3) := 4.0) || 1 ; fvar(3) is the spacing between characters
trigger1 = fvar(2) := fvar(2) + cond(teamside = 1, 32 - 8 * (root,var(21) <= 2), 32 + 8 * (root,var(21) <= 2)) || 1 ; arbitrary positioning
trigger1 = fvar(4) := fvar(2) / 2.0 ; center the text

;========================< Select Position of Super Art Command >========================
; var(20) - var(27):
; 00 = 236
; 01 = 214
; 02 = 623
; 03 = 421
; 04 = 41236
; 05 = 63214
; 06 = 63214789
; 07 = Punch
; 08 = Kick
; 09 = punch or kick
; 10 = And (+) 
; 11 = Approach
; 12 = Charge
; 13 = In the Air
; 14 = Push
; 15 = Rapidly
; 16 = Then

[state 6366, Images of Super Art Command String]
type = null
triggerall = !time || var(36) = 14 || var(36) = -14

; Disable Bars
trigger1 = root,var(21) = 1
trigger1 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger1 = var(27) := cond(teamside = 1, -1, -1) || 1

; All Super Arts
trigger2 = root,var(21) = 2
trigger2 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger2 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art I: Tyrant Slaughter
trigger3 = root,var(21) = 3
trigger3 = var(20) := cond(teamside = 1, 0, 1) || 1
trigger3 = var(21) := cond(teamside = 1, 0, 1) || 1
trigger3 = var(22) := cond(teamside = 1, 10, 10) || 1
trigger3 = var(23) := cond(teamside = 1, 7, 7) || 1
trigger3 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger3 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger3 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger3 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art II: Temporal Thunder
trigger4 = root,var(21) = 4
trigger4 = var(20) := cond(teamside = 1, 0, 1) || 1
trigger4 = var(21) := cond(teamside = 1, 0, 1) || 1
trigger4 = var(22) := cond(teamside = 1, 10, 10) || 1
trigger4 = var(23) := cond(teamside = 1, 7, 7) || 1
trigger4 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger4 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger4 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger4 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art III: Aegis Reflector
trigger5 = root,var(21) = 5
trigger5 = var(20) := cond(teamside = 1, 0, 1) || 1
trigger5 = var(21) := cond(teamside = 1, 0, 1) || 1
trigger5 = var(22) := cond(teamside = 1, 10, 10) || 1
trigger5 = var(23) := cond(teamside = 1, 7, 7) || 1
trigger5 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger5 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger5 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger5 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art IV: ???
trigger6 = root,var(21) = 6
trigger6 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger6 = var(27) := cond(teamside = 1, -1, -1) || 1

; Supert Art V: ???
trigger7 = root,var(21) = 7
trigger7 = var(20) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(21) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(22) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(23) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(24) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(25) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(26) := cond(teamside = 1, -1, -1) || 1
trigger7 = var(27) := cond(teamside = 1, -1, -1) || 1

[state 6366, Size of Each Command Object]
type = null
trigger1 = var(28) := 09 * (var(20) = 00) + 09 * (var(20) = 01) + 09 * (var(20) = 02) + 09 * (var(20) = 03) + 12 * (var(20) = 04)
trigger2 = var(28) := 12 * (var(20) = 05) + 11 * (var(20) = 06) + 09 * (var(20) = 07) + 09 * (var(20) = 08) + 13 * (var(20) = 09)
trigger3 = var(28) := 06 * (var(20) = 10) + 22 * (var(20) = 11) + 19 * (var(20) = 12) + 15 * (var(20) = 13) + 12 * (var(20) = 14)
trigger4 = var(28) := 19 * (var(20) = 15) + 11 * (var(20) = 16) + 00 * (var(20) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(29) := 09 * (var(21) = 00) + 09 * (var(21) = 01) + 09 * (var(21) = 02) + 09 * (var(21) = 03) + 12 * (var(21) = 04)
trigger2 = var(29) := 12 * (var(21) = 05) + 11 * (var(21) = 06) + 09 * (var(21) = 07) + 09 * (var(21) = 08) + 13 * (var(21) = 09)
trigger3 = var(29) := 06 * (var(21) = 10) + 22 * (var(21) = 11) + 19 * (var(21) = 12) + 15 * (var(21) = 13) + 12 * (var(21) = 14)
trigger4 = var(29) := 19 * (var(21) = 15) + 11 * (var(21) = 16) + 00 * (var(21) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(30) := 09 * (var(22) = 00) + 09 * (var(22) = 01) + 09 * (var(22) = 02) + 09 * (var(22) = 03) + 12 * (var(22) = 04)
trigger2 = var(30) := 12 * (var(22) = 05) + 11 * (var(22) = 06) + 09 * (var(22) = 07) + 09 * (var(22) = 08) + 13 * (var(22) = 09)
trigger3 = var(30) := 06 * (var(22) = 10) + 22 * (var(22) = 11) + 19 * (var(22) = 12) + 15 * (var(22) = 13) + 12 * (var(22) = 14)
trigger4 = var(30) := 19 * (var(22) = 15) + 11 * (var(22) = 16) + 00 * (var(22) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(31) := 09 * (var(23) = 00) + 09 * (var(23) = 01) + 09 * (var(23) = 02) + 09 * (var(23) = 03) + 12 * (var(23) = 04)
trigger2 = var(31) := 12 * (var(23) = 05) + 11 * (var(23) = 06) + 09 * (var(23) = 07) + 09 * (var(23) = 08) + 13 * (var(23) = 09)
trigger3 = var(31) := 06 * (var(23) = 10) + 22 * (var(23) = 11) + 19 * (var(23) = 12) + 15 * (var(23) = 13) + 12 * (var(23) = 14)
trigger4 = var(31) := 19 * (var(23) = 15) + 11 * (var(23) = 16) + 00 * (var(23) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(32) := 09 * (var(24) = 00) + 09 * (var(24) = 01) + 09 * (var(24) = 02) + 09 * (var(24) = 03) + 12 * (var(24) = 04)
trigger2 = var(32) := 12 * (var(24) = 05) + 11 * (var(24) = 06) + 09 * (var(24) = 07) + 09 * (var(24) = 08) + 13 * (var(24) = 09)
trigger3 = var(32) := 06 * (var(24) = 10) + 22 * (var(24) = 11) + 19 * (var(24) = 12) + 15 * (var(24) = 13) + 12 * (var(24) = 14)
trigger4 = var(32) := 19 * (var(24) = 15) + 11 * (var(24) = 16) + 00 * (var(24) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(33) := 09 * (var(25) = 00) + 09 * (var(25) = 01) + 09 * (var(25) = 02) + 09 * (var(25) = 03) + 12 * (var(25) = 04)
trigger2 = var(33) := 12 * (var(25) = 05) + 11 * (var(25) = 06) + 09 * (var(25) = 07) + 09 * (var(25) = 08) + 13 * (var(25) = 09)
trigger3 = var(33) := 06 * (var(25) = 10) + 22 * (var(25) = 11) + 19 * (var(25) = 12) + 15 * (var(25) = 13) + 12 * (var(25) = 14)
trigger4 = var(33) := 19 * (var(25) = 15) + 11 * (var(25) = 16) + 00 * (var(25) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(34) := 09 * (var(26) = 00) + 09 * (var(26) = 01) + 09 * (var(26) = 02) + 09 * (var(26) = 03) + 12 * (var(26) = 04)
trigger2 = var(34) := 12 * (var(26) = 05) + 11 * (var(26) = 06) + 09 * (var(26) = 07) + 09 * (var(26) = 08) + 13 * (var(26) = 09)
trigger3 = var(34) := 06 * (var(26) = 10) + 22 * (var(26) = 11) + 19 * (var(26) = 12) + 15 * (var(26) = 13) + 12 * (var(26) = 14)
trigger4 = var(34) := 19 * (var(26) = 15) + 11 * (var(26) = 16) + 00 * (var(26) = -1)
[state 6366, Size of Each Command Object]
type = null
trigger1 = var(35) := 09 * (var(27) = 00) + 09 * (var(27) = 01) + 09 * (var(27) = 02) + 09 * (var(27) = 03) + 12 * (var(27) = 04)
trigger2 = var(35) := 12 * (var(27) = 05) + 11 * (var(27) = 06) + 09 * (var(27) = 07) + 09 * (var(27) = 08) + 13 * (var(27) = 09)
trigger3 = var(35) := 06 * (var(27) = 10) + 22 * (var(27) = 11) + 19 * (var(27) = 12) + 15 * (var(27) = 13) + 12 * (var(27) = 14)
trigger4 = var(35) := 19 * (var(27) = 15) + 11 * (var(27) = 16) + 00 * (var(27) = -1)

[state 6366, Length of Command String]
type = null
trigger1 = fvar(05) := 0 || fvar(13) := 0 || 1
trigger1 = fvar(05) := var(28) + var(29) + var(30) + var(31) + var(32) + var(33) + var(34) || 1
trigger1 = fvar(06) := var(28) + var(29) + var(30) + var(31) + var(32) + var(33) || 1
trigger1 = fvar(07) := var(28) + var(29) + var(30) + var(31) + var(32) || 1
trigger1 = fvar(08) := var(28) + var(29) + var(30) + var(31) || 1
trigger1 = fvar(09) := var(28) + var(29) + var(30) || 1
trigger1 = fvar(10) := var(28) + var(29) || 1
trigger1 = fvar(11) := var(28) || 1
trigger1 = fvar(12) := 0 || 1
trigger1 = fvar(13) := -fvar(5) / 2.0 ; center the command string

;========================< Reset Super Art Selection Objects >========================

[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 0
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 1
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 2
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 3
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 4
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 5
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 6
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 7
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 8
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 9
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 10
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 11
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 12
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 13
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 14
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 15
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 16
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 17
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 18
[state 6366, Reset Super Art Character]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 19
[state 6366, Reset Super Art Roman Numeral]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 20

[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 21
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 22
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 23
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 24
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 25
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 26
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 27
[state 6366, Reset Super Art Command]
type = removeexplod
trigger1 = var(36) = 14 || var(36) = -14
id = 28

[state 6366, Reset Super Art Up Arrow]
type = removeexplod
trigger1 = fvar(0) || var(36) = 14 || var(36) = -14
id = 29
[state 6366, Reset Super Art Down Arrow]
type = removeexplod
trigger1 = fvar(0) || var(36) = 14 || var(36) = -14
id = 30

;========================< Display Super Art Selection on Screen >========================

[state 6366, Super Art Panel 3]
type = explod
trigger1 = !numexplod(33)
anim = 6365
ID = 33
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 0
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Super Art Panel 2]
type = explod
trigger1 = !numexplod(32)
anim = 6365
ID = 32
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 0
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Super Art Panel 1]
type = explod
trigger1 = !numexplod(31)
anim = 6365
ID = 31
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 0
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Panel 1]
type = modifyexplod
trigger1 = numexplod(31)
postype = left
pos = ceil((var(37) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(37) + fvar(37)) * fvar(39))
; ontop = cond(var(37) = 2 && (var(36) = [1, 14]), 1, 0)
sprpriority = var(40) := cond(var(37) = 0, 65540, cond(var(37) = 1, 65539, 65538))
ID = 31
[state 6366, Modify Super Art Panel 1]
type = modifyexplod
trigger1 = numexplod(31) && var(36) > 0
trigger1 = var(37) = 2
postype = left
pos = ceil((var(37) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(37) + fvar(37) + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = var(40) + 5 * (var(36) < 14)
ID = 31
[state 6366, Modify Super Art Panel 1]
type = modifyexplod
trigger1 = numexplod(31) && var(36) < 0
trigger1 = var(37) = 0
postype = left
pos = ceil((var(37) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(37) + fvar(37) + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = var(40) - 5 * (var(36) > -14)
ID = 31

[state 6366, Modify Super Art Panel 2]
type = modifyexplod
trigger1 = numexplod(32)
postype = left
pos = ceil((var(38) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(38) + fvar(37)) * fvar(39))
; ontop = cond(var(38) = 2 && (var(36) = [1, 14]), 1, 0)
sprpriority = var(41) := cond(var(38) = 0, 65540, cond(var(38) = 1, 65539, 65538))
ID = 32
[state 6366, Modify Super Art Panel 2]
type = modifyexplod
trigger1 = numexplod(32) && var(36) > 0
trigger1 = var(38) = 2
postype = left
pos = ceil((var(38) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(38) + fvar(37) + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = var(41) + 5 * (var(36) < 14)
ID = 32
[state 6366, Modify Super Art Panel 2]
type = modifyexplod
trigger1 = numexplod(32) && var(36) < 0
trigger1 = var(38) = 0
postype = left
pos = ceil((var(38) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(38) + fvar(37) + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = var(41) - 5 * (var(36) > -14)
ID = 32

[state 6366, Modify Super Art Panel 3]
type = modifyexplod
trigger1 = numexplod(33)
postype = left
pos = ceil((var(39) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(39) + fvar(37)) * fvar(39))
; ontop = cond(var(39) = 2 && (var(36) = [1, 14]), 1, 0)
sprpriority = var(42) := cond(var(39) = 0, 65540, cond(var(39) = 1, 65539, 65538))
ID = 33
[state 6366, Modify Super Art Panel 3]
type = modifyexplod
trigger1 = numexplod(33) && var(36) > 0
trigger1 = var(39) = 2
postype = left
pos = ceil((var(39) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(39) + fvar(37) + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = var(42) + 5 * (var(36) < 14)
ID = 33
[state 6366, Modify Super Art Panel 3]
type = modifyexplod
trigger1 = numexplod(33) && var(36) < 0
trigger1 = var(39) = 0
postype = left
pos = ceil((var(39) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (var(39) + fvar(37) + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = var(42) - 5 * (var(36) > -14)
ID = 33

;========================< Display Super Art Text on Screen >========================

[state 6366, Super Art Roman Numeral]
type = explod
trigger1 = teamside = 2 && !numexplod(20)
anim = cond(root,var(21) < 3, 9999, 6420 + (root,var(21) - 3))
ID = 20
postype = left
pos = ceil(fvar(18) := (fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Super Art Character 19]
type = explod
trigger1 = var(abs(19 - 19 * (teamside = 2))) && !numexplod(abs(19 - 19 * (teamside = 2)))
anim = 6370 + var(abs(19 - 19 * (teamside = 2))) - 1
ID = abs(19 - 19 * (teamside = 2))
postype = left
pos = var(43) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 19]
type = modifyexplod
trigger1 = numexplod(abs(19 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(43)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(19 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 19]
type = modifyexplod
trigger1 = numexplod(abs(19 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(43)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(19 - 19 * (teamside = 2))

[state 6366, Super Art Character 18]
type = explod
trigger1 = var(abs(18 - 19 * (teamside = 2))) && !numexplod(abs(18 - 19 * (teamside = 2)))
anim = 6370 + var(abs(18 - 19 * (teamside = 2))) - 1
ID = abs(18 - 19 * (teamside = 2))
postype = left
pos = var(44) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 18]
type = modifyexplod
trigger1 = numexplod(abs(18 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(44)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(18 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 18]
type = modifyexplod
trigger1 = numexplod(abs(18 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(44)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(18 - 19 * (teamside = 2))

[state 6366, Super Art Character 17]
type = explod
trigger1 = var(abs(17 - 19 * (teamside = 2))) && !numexplod(abs(17 - 19 * (teamside = 2)))
anim = 6370 + var(abs(17 - 19 * (teamside = 2))) - 1
ID = abs(17 - 19 * (teamside = 2))
postype = left
pos = var(45) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 17]
type = modifyexplod
trigger1 = numexplod(abs(17 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(45)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(17 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 17]
type = modifyexplod
trigger1 = numexplod(abs(17 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(45)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(17 - 19 * (teamside = 2))

[state 6366, Super Art Character 16]
type = explod
trigger1 = var(abs(16 - 19 * (teamside = 2))) && !numexplod(abs(16 - 19 * (teamside = 2)))
anim = 6370 + var(abs(16 - 19 * (teamside = 2))) - 1
ID = abs(16 - 19 * (teamside = 2))
postype = left
pos = var(46) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 16]
type = modifyexplod
trigger1 = numexplod(abs(16 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(46)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(16 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 16]
type = modifyexplod
trigger1 = numexplod(abs(16 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(46)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(16 - 19 * (teamside = 2))

[state 6366, Super Art Character 15]
type = explod
trigger1 = var(abs(15 - 19 * (teamside = 2))) && !numexplod(abs(15 - 19 * (teamside = 2)))
anim = 6370 + var(abs(15 - 19 * (teamside = 2))) - 1
ID = abs(15 - 19 * (teamside = 2))
postype = left
pos = var(47) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 15]
type = modifyexplod
trigger1 = numexplod(abs(15 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(47)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(15 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 15]
type = modifyexplod
trigger1 = numexplod(abs(15 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(47)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(15 - 19 * (teamside = 2))

[state 6366, Super Art Character 14]
type = explod
trigger1 = var(abs(14 - 19 * (teamside = 2))) && !numexplod(abs(14 - 19 * (teamside = 2)))
anim = 6370 + var(abs(14 - 19 * (teamside = 2))) - 1
ID = abs(14 - 19 * (teamside = 2))
postype = left
pos = var(48) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 14]
type = modifyexplod
trigger1 = numexplod(abs(14 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(48)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(14 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 14]
type = modifyexplod
trigger1 = numexplod(abs(14 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(48)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(14 - 19 * (teamside = 2))

[state 6366, Super Art Character 13]
type = explod
trigger1 = var(abs(13 - 19 * (teamside = 2))) && !numexplod(abs(13 - 19 * (teamside = 2)))
anim = 6370 + var(abs(13 - 19 * (teamside = 2))) - 1
ID = abs(13 - 19 * (teamside = 2))
postype = left
pos = var(49) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 13]
type = modifyexplod
trigger1 = numexplod(abs(13 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(49)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(13 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 13]
type = modifyexplod
trigger1 = numexplod(abs(13 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(49)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(13 - 19 * (teamside = 2))

[state 6366, Super Art Character 12]
type = explod
trigger1 = var(abs(12 - 19 * (teamside = 2))) && !numexplod(abs(12 - 19 * (teamside = 2)))
anim = 6370 + var(abs(12 - 19 * (teamside = 2))) - 1
ID = abs(12 - 19 * (teamside = 2))
postype = left
pos = var(50) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 12]
type = modifyexplod
trigger1 = numexplod(abs(12 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(50)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(12 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 12]
type = modifyexplod
trigger1 = numexplod(abs(12 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(50)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(12 - 19 * (teamside = 2))

[state 6366, Super Art Character 11]
type = explod
trigger1 = var(abs(11 - 19 * (teamside = 2))) && !numexplod(abs(11 - 19 * (teamside = 2)))
anim = 6370 + var(abs(11 - 19 * (teamside = 2))) - 1
ID = abs(11 - 19 * (teamside = 2))
postype = left
pos = var(51) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 11]
type = modifyexplod
trigger1 = numexplod(abs(11 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(51)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(11 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 11]
type = modifyexplod
trigger1 = numexplod(abs(11 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(51)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(11 - 19 * (teamside = 2))

[state 6366, Super Art Character 10]
type = explod
trigger1 = var(abs(10 - 19 * (teamside = 2))) && !numexplod(abs(10 - 19 * (teamside = 2)))
anim = 6370 + var(abs(10 - 19 * (teamside = 2))) - 1
ID = abs(10 - 19 * (teamside = 2))
postype = left
pos = var(52) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 10]
type = modifyexplod
trigger1 = numexplod(abs(10 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(52)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(10 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 10]
type = modifyexplod
trigger1 = numexplod(abs(10 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(52)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(10 - 19 * (teamside = 2))

[state 6366, Super Art Character 9]
type = explod
trigger1 = var(abs(9 - 19 * (teamside = 2))) && !numexplod(abs(9 - 19 * (teamside = 2)))
anim = 6370 + var(abs(9 - 19 * (teamside = 2))) - 1
ID = abs(9 - 19 * (teamside = 2))
postype = left
pos = var(53) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 9]
type = modifyexplod
trigger1 = numexplod(abs(9 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(53)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(9 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 9]
type = modifyexplod
trigger1 = numexplod(abs(9 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(53)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(9 - 19 * (teamside = 2))

[state 6366, Super Art Character 8]
type = explod
trigger1 = var(abs(8 - 19 * (teamside = 2))) && !numexplod(abs(8 - 19 * (teamside = 2)))
anim = 6370 + var(abs(8 - 19 * (teamside = 2))) - 1
ID = abs(8 - 19 * (teamside = 2))
postype = left
pos = var(54) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 8]
type = modifyexplod
trigger1 = numexplod(abs(8 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(54)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(8 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 8]
type = modifyexplod
trigger1 = numexplod(abs(8 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(54)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(8 - 19 * (teamside = 2))

[state 6366, Super Art Character 7]
type = explod
trigger1 = var(abs(7 - 19 * (teamside = 2))) && !numexplod(abs(7 - 19 * (teamside = 2)))
anim = 6370 + var(abs(7 - 19 * (teamside = 2))) - 1
ID = abs(7 - 19 * (teamside = 2))
postype = left
pos = var(55) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 7]
type = modifyexplod
trigger1 = numexplod(abs(7 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(55)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(7 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 7]
type = modifyexplod
trigger1 = numexplod(abs(7 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(55)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(7 - 19 * (teamside = 2))

[state 6366, Super Art Character 6]
type = explod
trigger1 = var(abs(6 - 19 * (teamside = 2))) && !numexplod(abs(6 - 19 * (teamside = 2)))
anim = 6370 + var(abs(6 - 19 * (teamside = 2))) - 1
ID = abs(6 - 19 * (teamside = 2))
postype = left
pos = var(56) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 6]
type = modifyexplod
trigger1 = numexplod(abs(6 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(56)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(6 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 6]
type = modifyexplod
trigger1 = numexplod(abs(6 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(56)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(6 - 19 * (teamside = 2))

[state 6366, Super Art Character 5]
type = explod
trigger1 = var(abs(5 - 19 * (teamside = 2))) && !numexplod(abs(5 - 19 * (teamside = 2)))
anim = 6370 + var(abs(5 - 19 * (teamside = 2))) - 1
ID = abs(5 - 19 * (teamside = 2))
postype = left
pos = var(57) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 5]
type = modifyexplod
trigger1 = numexplod(abs(5 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(57)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(5 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 5]
type = modifyexplod
trigger1 = numexplod(abs(5 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(57)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(5 - 19 * (teamside = 2))

[state 6366, Super Art Character 4]
type = explod
trigger1 = var(abs(4 - 19 * (teamside = 2))) && !numexplod(abs(4 - 19 * (teamside = 2)))
anim = 6370 + var(abs(4 - 19 * (teamside = 2))) - 1
ID = abs(4 - 19 * (teamside = 2))
postype = left
pos = var(58) := ceil((fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 4]
type = modifyexplod
trigger1 = numexplod(abs(4 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(var(58)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(4 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 4]
type = modifyexplod
trigger1 = numexplod(abs(4 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(var(58)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(4 - 19 * (teamside = 2))

[state 6366, Super Art Character 3]
type = explod
trigger1 = var(abs(3 - 19 * (teamside = 2))) && !numexplod(abs(3 - 19 * (teamside = 2)))
anim = 6370 + var(abs(3 - 19 * (teamside = 2))) - 1
ID = abs(3 - 19 * (teamside = 2))
postype = left
pos = ceil(fvar(14) := (fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 3]
type = modifyexplod
trigger1 = numexplod(abs(3 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(14)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(3 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 3]
type = modifyexplod
trigger1 = numexplod(abs(3 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(fvar(14)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(3 - 19 * (teamside = 2))

[state 6366, Super Art Character 2]
type = explod
trigger1 = var(abs(2 - 19 * (teamside = 2))) && !numexplod(abs(2 - 19 * (teamside = 2)))
anim = 6370 + var(abs(2 - 19 * (teamside = 2))) - 1
ID = abs(2 - 19 * (teamside = 2))
postype = left
pos = ceil(fvar(15) := (fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 2]
type = modifyexplod
trigger1 = numexplod(abs(2 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(15)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(2 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 2]
type = modifyexplod
trigger1 = numexplod(abs(2 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(fvar(15)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(2 - 19 * (teamside = 2))

[state 6366, Super Art Character 1]
type = explod
trigger1 = var(abs(1 - 19 * (teamside = 2))) && !numexplod(abs(1 - 19 * (teamside = 2)))
anim = 6370 + var(abs(1 - 19 * (teamside = 2))) - 1
ID = abs(1 - 19 * (teamside = 2))
postype = left
pos = ceil(fvar(16) := (fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 1]
type = modifyexplod
trigger1 = numexplod(abs(1 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(16)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(1 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 1]
type = modifyexplod
trigger1 = numexplod(abs(1 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(fvar(16)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(1 - 19 * (teamside = 2))

[state 6366, Super Art Character 0]
type = explod
trigger1 = var(abs(0 - 19 * (teamside = 2))) && !numexplod(abs(0 - 19 * (teamside = 2)))
anim = 6370 + var(abs(0 - 19 * (teamside = 2))) - 1
ID = abs(0 - 19 * (teamside = 2))
postype = left
pos = ceil(fvar(17) := (fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Art Character 0]
type = modifyexplod
trigger1 = numexplod(abs(0 - 19 * (teamside = 2))) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(17)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = abs(0 - 19 * (teamside = 2))
[state 6366, Modify Super Art Character 0]
type = modifyexplod
trigger1 = numexplod(abs(0 - 19 * (teamside = 2))) && var(36) <= -14
postype = left
pos = ceil(fvar(17)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = abs(0 - 19 * (teamside = 2))

[state 6366, Super Art Roman Numeral]
type = explod
trigger1 = teamside = 1 && !numexplod(20)
anim = cond(root,var(21) < 3, 9999, 6420 + (root,var(21) - 3))
ID = 20
postype = left
pos = ceil(fvar(18) := (fvar(36) + cond(teamside = 1, -fvar(3), fvar(3)) * numexplod + cond(teamside = 1, fvar(4), -fvar(4))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Roman Numeral]
type = modifyexplod
trigger1 = numexplod(20) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(18)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 20
[state 6366, Modify Super Roman Numeral]
type = modifyexplod
trigger1 = numexplod(20) && var(36) <= -14
postype = left
pos = ceil(fvar(18)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 20

;========================< Display Super Art Commands on Screen >========================

[state 6366, Super Art Motion Slot 1]
type = explod
trigger1 = !numexplod(21) && var(20) >= 0
anim = 6400 + var(20)
ID = 21
postype = left
pos = ceil(fvar(19) := (fvar(36) + fvar(12) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 1]
type = modifyexplod
trigger1 = numexplod(21) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(19)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 21
[state 6366, Modify Super Motion Slot 1]
type = modifyexplod
trigger1 = numexplod(21) && var(36) <= -14
postype = left
pos = ceil(fvar(19)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 21

[state 6366, Super Art Motion Slot 2]
type = explod
trigger1 = !numexplod(22) && var(21) >= 0
anim = 6400 + var(21)
ID = 22
postype = left
pos = ceil(fvar(20) := (fvar(36) + fvar(11) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 2]
type = modifyexplod
trigger1 = numexplod(22) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(20)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 22
[state 6366, Modify Super Motion Slot 2]
type = modifyexplod
trigger1 = numexplod(22) && var(36) <= -14
postype = left
pos = ceil(fvar(20)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 22

[state 6366, Super Art Motion Slot 3]
type = explod
trigger1 = !numexplod(23) && var(22) >= 0
anim = 6400 + var(22)
ID = 23
postype = left
pos = ceil(fvar(21) := (fvar(36) + fvar(10) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 3]
type = modifyexplod
trigger1 = numexplod(23) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(21)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 23
[state 6366, Modify Super Motion Slot 3]
type = modifyexplod
trigger1 = numexplod(23) && var(36) <= -14
postype = left
pos = ceil(fvar(21)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 23

[state 6366, Super Art Motion Slot 4]
type = explod
trigger1 = !numexplod(24) && var(23) >= 0
anim = 6400 + var(23)
ID = 24
postype = left
pos = ceil(fvar(22) := (fvar(36) + fvar(9) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 4]
type = modifyexplod
trigger1 = numexplod(24) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(22)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 24
[state 6366, Modify Super Motion Slot 4]
type = modifyexplod
trigger1 = numexplod(24) && var(36) <= -14
postype = left
pos = ceil(fvar(22)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 24

[state 6366, Super Art Motion Slot 5]
type = explod
trigger1 = !numexplod(25) && var(24) >= 0
anim = 6400 + var(24)
ID = 25
postype = left
pos = ceil(fvar(23) := (fvar(36) + fvar(8) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 5]
type = modifyexplod
trigger1 = numexplod(25) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(23)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 25
[state 6366, Modify Super Motion Slot 5]
type = modifyexplod
trigger1 = numexplod(25) && var(36) <= -14
postype = left
pos = ceil(fvar(23)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 25

[state 6366, Super Art Motion Slot 6]
type = explod
trigger1 = !numexplod(26) && var(25) >= 0
anim = 6400 + var(25)
ID = 26
postype = left
pos = ceil(fvar(24) := (fvar(36) + fvar(7) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 6]
type = modifyexplod
trigger1 = numexplod(26) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(24)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 26
[state 6366, Modify Super Motion Slot 6]
type = modifyexplod
trigger1 = numexplod(26) && var(36) <= -14
postype = left
pos = ceil(fvar(24)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 26

[state 6366, Super Art Motion Slot 7]
type = explod
trigger1 = !numexplod(27) && var(26) >= 0
anim = 6400 + var(26)
ID = 27
postype = left
pos = ceil(fvar(25) := (fvar(36) + fvar(6) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 7]
type = modifyexplod
trigger1 = numexplod(27) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(25)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 27
[state 6366, Modify Super Motion Slot 7]
type = modifyexplod
trigger1 = numexplod(27) && var(36) <= -14
postype = left
pos = ceil(fvar(25)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 27

[state 6366, Super Art Motion Slot 8]
type = explod
trigger1 = !numexplod(28) && var(27) >= 0
anim = 6400 + var(27)
ID = 28
postype = left
pos = ceil(fvar(26) := (fvar(36) + fvar(5) + fvar(13)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Modify Super Motion Slot 8]
type = modifyexplod
trigger1 = numexplod(28) && var(36) = [1, 14)
postype = left
pos = ceil(fvar(26)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) < 14, var(36) * 2, 28 - var(36))) * fvar(39))
sprpriority = 65539 + cond(var(36) < 14, var(36), 14 - var(36))
ID = 28
[state 6366, Modify Super Motion Slot 8]
type = modifyexplod
trigger1 = numexplod(28) && var(36) <= -14
postype = left
pos = ceil(fvar(26)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 3 + cond(var(36) > -14, -var(36) * 2, 28 + var(36))) * fvar(39))
sprpriority = 65539 - cond(var(36) > -14, var(36), 14 - var(36))
ID = 28

;========================< Display Super Art Arrows on Screen >========================

[state 6366, Super Art Up Arrow]
type = explod
trigger1 = !numexplod(29)
anim = 6425 + (fvar(0) = -1)
ID = 29
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6366, Super Art Down Arrow]
type = explod
trigger1 = !numexplod(30)
anim = 6427 + (fvar(0) = 1)
ID = 30
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Sounds and Special Effects >========================

[state 6366, Still Selecting]
type = null
triggerall = cond(numhelper(4000), !helper(4000),var(12), 0) || !numhelper(6350)
trigger1 = !time
trigger1 = var(59) := 120
trigger2 = fvar(0) && var(59) = (0, 120)
trigger2 = var(59) := var(59) + 40
trigger2 = var(59) > 120
trigger2 = var(59) := 120

[state 6366, Still Selecting]
type = varadd
trigger1 = var(59)
var(59) = -1

[state 6366, Still Selecting]
type = assertspecial
trigger1 = var(59)
flag = intro

[state 6366, Super Art Selection Sound]
type = playsnd
trigger1 = fvar(0)
value = 6365, 0
volumescale = 100

;========================< Buffer Super Art Selection >========================

[state 6366, Reset Limit]
type = varset
trigger1 = 1
fvar(0) = 0

[state 6366, Reset Limit]
type = varset
trigger1 = root,command != "holdup" && root,command != "holddown"
fvar(1) = 0

[state 6366, Reset Panel Position]
type = varset
trigger1 = var(36) >= 28 || var(36) <= -28
var(36) = 0

;========================< Implement Chosen Super Art >========================

[state 6366, Super Art Selection Sound]
type = playsnd
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"
value = 6365, 1
volumescale = 100

[state 6366, Destroy Explod]
type = removeexplod
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"

[state 6366, Destroy Helper]
type = destroyself
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"

;=========================================================================
; SF3 Palette Selector
;=========================================================================
[Statedef 6430]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6430, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(19), 0)

[state 6430, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(19), 0)

[state 6430, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6430, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -28

;========================< Initialize Palette Selection >========================

[state 6430, Position & Size of Palette Selection]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(20), cond(teamside = 1, 104, 264)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(21), 188) || 1
trigger1 = fvar(37) := fvar(37) - 40 * cond(root,var(55) && numpartner, partner,ID > root,ID, 0) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(8), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(9), 1.0)

;========================< Detect Palette Selection >========================

[state 6430, Button Detect]
type = varset
trigger1 = root,command = "back" || root,command = "fwd"
var(0) = -1 + 2 * cond(teamside = 1, root,command = "fwd", root,command = "back")

[state 6430, Button Hold Detect]
type = varadd
trigger1 = root,command = "holdback" || root,command = "holdfwd"
var(1) = 1

[state 6430, Button Hold Buffer Detect]
type = varset
trigger1 = root,command = "holdback" || root,command = "holdfwd"
trigger1 = var(1) >= 32 && var(1) % 8 = 0
var(0) = -1 + 2 * cond(teamside = 1, root,command = "holdfwd", root,command = "holdback")

[state 6430, Palette Maximum]
type = varset
trigger1 = 1
var(3) = 13 ; max palettes

[state 6430, Palette Selection]
type = parentvaradd
trigger1 = var(0)
var(19) = var(0)

;========================< Prevent Palette Selection from Going out of Bounds >========================

[state 6430, Limit Palette Selection]
type = parentvarset
trigger1 = root,var(19) != [1, var(3)]
var(19) = cond(root,var(19) < 1, var(3), 1)

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 1 && var(0)
trigger1 = enemy,name = "Urien"
trigger1 = enemy,var(19) = root,var(19)
var(19) = enemy,var(19) + var(0)

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 2 && var(0) = 1
trigger1 = enemy(0),name = "Urien" && enemy(1),name = "Urien"
trigger1 = (enemy(0),var(19) = 1 || enemy(0),var(19) = var(3)) && (enemy(1),var(19) = 1 || enemy(1),var(19) = var(3))
trigger1 = root,var(19) = enemy(0),var(19) || root,var(19) = enemy(1),var(19)
var(19) = cond(enemy(0),var(19) > enemy(1),var(19), enemy(1),var(19) + var(0), enemy(0),var(19) + var(0))
[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 2 && var(0) = -1
trigger1 = enemy(0),name = "Urien" && enemy(1),name = "Urien"
trigger1 = (enemy(0),var(19) = 1 || enemy(0),var(19) = var(3)) && (enemy(1),var(19) = 1 || enemy(1),var(19) = var(3))
trigger1 = root,var(19) = enemy(0),var(19) || root,var(19) = enemy(1),var(19)
var(19) = cond(enemy(0),var(19) < enemy(1),var(19), enemy(1),var(19) + var(0), enemy(0),var(19) + var(0))

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 2 && var(0)
trigger1 = enemy(0),name = "Urien"
trigger1 = enemy(0),var(19) = root,var(19)
var(19) = enemy(0),var(19) + var(0)
[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 2 && var(0)
trigger1 = enemy(1),name = "Urien"
trigger1 = enemy(1),var(19) = root,var(19)
var(19) = enemy(1),var(19) + var(0)

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 2 && var(0) = 1
trigger1 = enemy(0),name = "Urien" && enemy(1),name = "Urien"
trigger1 = enemy(0),var(19) = [enemy(1),var(19) - 1, enemy(1),var(19) + 1]
trigger1 = root,var(19) = enemy(0),var(19) || root,var(19) = enemy(1),var(19)
var(19) = cond(enemy(0),var(19) > enemy(1),var(19), enemy(0),var(19) + var(0), enemy(1),var(19) + var(0))
[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 2 && var(0) = -1
trigger1 = enemy(0),name = "Urien" && enemy(1),name = "Urien"
trigger1 = enemy(0),var(19) = [enemy(1),var(19) - 1, enemy(1),var(19) + 1]
trigger1 = root,var(19) = enemy(0),var(19) || root,var(19) = enemy(1),var(19)
var(19) = cond(enemy(0),var(19) < enemy(1),var(19), enemy(0),var(19) + var(0), enemy(1),var(19) + var(0))

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 3 && var(0)
trigger1 = enemy(0),name = "Urien"
trigger1 = enemy(0),var(19) = root,var(19)
var(19) = enemy(0),var(19) + var(0)

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(54) = 4 && var(0)
trigger1 = enemy(1),name = "Urien"
trigger1 = enemy(1),var(19) = root,var(19)
var(19) = enemy(1),var(19) + var(0)

[state 6430, Palette Selection: No Identical Palettes]
type = parentvarset
trigger1 = root,var(55) && var(0)
trigger1 = partner,name = "Urien"
trigger1 = partner,var(19) = root,var(19)
var(19) = partner,var(19) + var(0)

[state 6430, Limit Palette Selection]
type = parentvarset
trigger1 = root,var(19) != [1, var(3)]
var(19) = cond(root,var(19) < 1, var(3), 1)

;========================< Display Palette Selection on Screen >========================

[state 6430, Reset]
type = removeexplod
trigger1 = var(0)

[state 6430, Palette Panel]
type = explod
trigger1 = !numexplod(0)
anim = 6430
ID = 0
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6430, Palette Ones Place]
type = explod
trigger1 = !numexplod(1)
anim = 6440 + floor(root,var(19) / 1) % 10
ID = 1
postype = left
pos = ceil((fvar(36) - 0) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.425 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6430, Palette Tens Place]
type = explod
trigger1 = !numexplod(2)
anim = 6440 + floor(root,var(19) / 10) % 10
ID = 2
postype = left
pos = ceil((fvar(36) - 4) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 3) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.425 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6430, Palette Left Arrow]
type = explod
trigger1 = !numexplod(3)
anim = 6435 + (var(0) = -1)
ID = 3
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6430, Palette Right Arrow]
type = explod
trigger1 = !numexplod(4)
anim = 6437 + (var(0) = 1)
ID = 4
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Sounds and Special Effects >========================

[state 6430, Still Selecting]
type = null
triggerall = cond(numhelper(4000), !helper(4000),var(12), 0) || !numhelper(6350)
trigger1 = !time
trigger1 = var(59) := 120
trigger2 = var(0) && var(59) = (0, 120)
trigger2 = var(59) := var(59) + 40
trigger2 = var(59) > 120
trigger2 = var(59) := 120

[state 6430, Still Selecting]
type = varadd
trigger1 = var(59)
var(59) = -1

[state 6430, Still Selecting]
type = assertspecial
trigger1 = var(59)
flag = intro

[state 6430, Super Art Selection Sound]
type = playsnd
trigger1 = var(0)
value = 6365, 0
volumescale = 100

;========================< Buffer Palette Selection >========================

[state 6430, Reset Limit]
type = varset
trigger1 = 1
var(0) = 0

[state 6430, Reset Limit]
type = varset
trigger1 = root,command != "holdback" && root,command != "holdfwd"
var(1) = 0

;========================< Implement Chosen Palette >========================

[state 6430, Super Art Selection Sound]
type = playsnd
trigger1 = roundstate >= 2 && !numhelper(6365)
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"
value = 6365, 1
volumescale = 100

[state 6430, Destroy Explod]
type = removeexplod
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"

[state 6430, Destroy Helper]
type = destroyself
trigger1 = roundstate >= 2
trigger2 = root,command = "a" || root,command = "b" || root,command = "c"
trigger3 = root,command = "x" || root,command = "y" || root,command = "z"
trigger4 = root,command = "start"

;=========================================================================
; SF3 Super Bar
;=========================================================================
[Statedef 6450]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6450, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(22), 0)
trigger2 = numhelper(6610) || root,var(21) = 1
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6450, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(22), 0)
trigger2 = numhelper(6610) || root,var(21) = 1
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6450, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6450, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -20

;========================< Initialize Super Bar >========================

[state 6450, Initialize Super Bar]
type = null
trigger1 = var(0) := root,var(22) || var(1) := root,var(23) || var(2) := root,var(24) || 1
trigger1 = var(3) := root,var(28) || fvar(2) := root,fvar(5) || fvar(3) := root,fvar(6) || 1

[state 6450, Position & Size of Super Bar]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(23), cond(teamside = 1, 40, 280)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(24), 216) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(10), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(11), 1.0)

 ; change "root,stateno != -1" to the state that activates the time countdown super art and add other conditions as necessary.
[state 6450, Detect Super Art Timer]
type = null
triggerall = root,var(29)
triggerall = var(8) := 2
trigger1 = root,stateno = -1
trigger1 = cond(numhelper(6205), helper(6205),time = 1, root,time = 1)
trigger1 = var(9) := 1 || var(11) := 1
trigger2 = cond(var(11) >= 1 && var(11) <= 48, var(11) := var(11) + 1, 0)
trigger2 = cond(var(11) = 49, var(10) := 2, var(10) := var(10))

[state 6450, Reset Super Art Timer]
type = null
trigger1 = !root,var(29) && var(8) = 2
trigger1 = var(8) := 1

;========================< Play Stock Max Sound >========================

[state 6450, Power Level Sound]
type = playsnd
triggerall = roundstate = 2 && !var(8)
trigger1 = floor(var(3) / (var(1) / var(0))) >= 1
trigger1 = var(6) = 0
trigger2 = floor(var(3) / (var(1) / var(0))) >= 2
trigger2 = var(6) = 1
trigger3 = floor(var(3) / (var(1) / var(0))) >= 3
trigger3 = var(6) = 2
value = 6450, 0
volumescale = 100
channel = 1

;========================< Display Super Bar on Screen >========================

[state 6450, Change Super Bar Number]
type = removeexplod
triggerall = numexplod
trigger1 = numhelper(6365) || roundstate < 2 || sysvar(0) != root,var(21)
; trigger2 = cond(numhelper(4000) && numhelper(6365), helper(4000),var(32), 0)

[state 6450, Change Super Bar Number]
type = removeexplod
triggerall = numexplod(0) && !var(8)
trigger1 = floor(var(3) / (var(1) / var(0))) >= 1
trigger1 = var(6) = 0
trigger2 = floor(var(3) / (var(1) / var(0))) >= 2
trigger2 = var(6) = 1
trigger3 = floor(var(3) / (var(1) / var(0))) >= 3
trigger3 = var(6) = 2
trigger4 = floor(var(3) / (var(1) / var(0))) < 1
trigger4 = var(6) > 0
trigger4 = var(7) := 5
trigger5 = floor(var(3) / (var(1) / var(0))) < 2
trigger5 = var(6) > 1
trigger5 = var(7) := 5
trigger6 = floor(var(3) / (var(1) / var(0))) < 3
trigger6 = var(6) > 2
trigger6 = var(7) := 5
ID = 0

[state 6450, Change Super Bar Timer]
type = removeexplod
trigger1 = numexplod(0)
trigger1 = var(8) = 1 || var(9) = 1
ID = 0

[state 6450, Super Bar Number]
type = explod
trigger1 = var(9) != 1
trigger1 = !numexplod(0)
anim = 6450 + 10 * (var(0) - 1) + floor(var(3) / (var(1) / var(0))) + var(7) + 30 * (teamside = 2)
ID = 0
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65538
pausemovetime = -1
supermovetime = -1

[state 6450, Super Bar Timer]
type = explod
trigger1 = var(9) = 1
trigger1 = !numexplod(0)
anim = 6510 + 1 * (var(0) = 2) + 3 * (var(0) = 3) + floor(root,var(29) / (var(1) / var(0)) - 1) + 10 * (teamside = 2)
ID = 0
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65538
pausemovetime = -1
supermovetime = -1

[state 6450, Super Bar Connecter]
type = explod
trigger1 = !numexplod(1)
anim = 6530
ID = 1
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1 - 2 * (teamside = 2)
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6450, Super Bar Container]
type = explod
trigger1 = !numexplod(2)
anim = 6531
ID = 2
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1 - 2 * (teamside = 2)
ownpal = 0
scale = 0.5 * var(2) * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65538
pausemovetime = -1
supermovetime = -1

[state 6450, Super Bar End]
type = explod
trigger1 = !numexplod(3)
anim = 6532
ID = 3
postype = left
pos =  ceil((cond(teamside = 1, var(2), -var(2)) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1 - 2 * (teamside = 2)
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65538
pausemovetime = -1
supermovetime = -1

[state 6450, Reset Super Bar Meter]
type = removeexplod
triggerall = cond(numhelper(6200), helper(6200),time >= 16, 1) && !numhelper(6205)
triggerall = numexplod(4) && !var(8)
trigger1 = !var(10)
trigger1 = var(3) >= root,var(26)
trigger1 = var(10) := 1
trigger2 = !var(10)
trigger2 = var(3) < root,var(26)
ID = 4

[state 6450, Reset Super Bar Meter Timer]
type = removeexplod
trigger1 = numexplod(4) && var(10) = 2
trigger1 = var(10) := 3
ID = 4

[state 6450, Super Bar Meter]
type = explod
trigger1 = !numexplod(4)
anim = 6535 + 1 * (var(10) = 1) + 2 * (var(10) = 3)
ID = 4
postype = left
pos = ceil((cond(teamside = 1, var(2), -var(2)) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = -1 + 2 * (teamside = 2)
ownpal = 0
ontop = 1
sprpriority = 65538
pausemovetime = -1
supermovetime = -1

[state 6450, Modify Super Bar Meter]
type = modifyexplod
triggerall = numexplod(4)
trigger1 = cond(numhelper(6200), helper(6200),time >= 16, 1) && !numhelper(6205) && !var(8)
trigger2 = var(10) = 3 
scale = fvar(3) * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 4

[state 6450, Super Bar Roman Numeral]
type = explod
trigger1 = root,var(21) >= 3
trigger1 = !numexplod(5)
anim = 6540 + root,var(21) - 3
ID = 5
postype = left
pos = ceil((cond(teamside = 1, var(2) + 10, -var(2) - 10) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65538
pausemovetime = -1
supermovetime = -1

[state 6450, Super Bar Max]
type = explod
trigger1 = !numexplod(6)
trigger1 = var(3) >= var(1)
anim = 6545
ID = 6
postype = left
pos = ceil((cond(teamside = 1, floor(var(2) * 0.5), -floor(var(2) * 0.5)) + fvar(36)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) - 2) * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6450, Reset Super Bar Max]
type = removeexplod
triggerall = numexplod(6)
trigger1 = cond(numhelper(6200), helper(6200),time >= 16, 1) && !numhelper(6205)
trigger1 = var(3) < var(1) && !var(8)
trigger2 = var(10) = 3
ID = 6

;========================< Reset Power Level >========================

[state 6450, Reset Super Bar]
type = varset
trigger1 = sysvar(0) != root,var(21)
sysvar(0) = root,var(21)

[state 6450, Reset Power Level]
type = null
trigger1 = floor(var(3) / (var(1) / var(0))) = 0
trigger1 = var(6) := 0
trigger2 = floor(var(3) / (var(1) / var(0))) = 1
trigger2 = var(6) := 1
trigger3 = floor(var(3) / (var(1) / var(0))) = 2
trigger3 = var(6) := 2
trigger4 = floor(var(3) / (var(1) / var(0))) = 3
trigger4 = var(6) := 3

[state 6450, Reset Super Bar Number]
type = null
trigger1 = var(7)
trigger1 = var(7) := 0

[state 6450, Reset Super Bar Timer]
type = null
trigger1 = var(8) = 1
trigger1 = var(8) := 0

[state 6450, Reset Super Bar Meter Timer]
type = null
trigger1 = var(9)
trigger1 = var(9) := 0

[state 6450, Reset Meter Animation]
type = null
triggerall = !var(8)
trigger1 = var(10)
trigger1 = var(3) < (var(1) / var(0)) / 3.0
trigger1 = var(10) := 0 || var(11) := 0

;========================< Reset Super Bar >========================

[state 6450, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6450, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Stun Bar
;=========================================================================
[Statedef 6550]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6550, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(25), 0)
trigger2 = numhelper(6610) || root,var(21) = 1
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6550, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(25), 0)
trigger2 = numhelper(6610) || root,var(21) = 1
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6550, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6550, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -24

;========================< Initialize Stun Bar >========================

[state 6550, Stun Bar Length]
type = varset
trigger1 = 1
fvar(0) = cond(root,stateno != 5300, root,fvar(7), root,fvar(8)) * (64.0 / root,fvar(8))

[state 6550, Stun Bar Flag]
type = varset
trigger1 = 1
var(0) = cond(root,stateno != 5300, root,var(30), 1)

[state 6550, Position & Size of Stun Bar]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(26), cond(teamside = 1, 136, 184)) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(27), 40) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(12), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(13), 1.0) || 1
; Simul Mode
trigger1 = root,var(55)
trigger1 = fvar(36) := (fvar(36) + cond(teamside = 1, -40.0, 40.0) * (root,var(55) > root,ID)) * fvar(38) || 1
trigger1 = fvar(36) := (fvar(36) + cond(teamside = 1, 20.0, -20.0) * (root,var(55) < root,ID)) * fvar(38) || 1

;========================< Display Stun Bar on Screen >========================

[state 6550, Reset]
type = removeexplod
trigger1 = 1

[state 6550, Stun Bar Meter]
type = explod
trigger1 = !numexplod(2)
anim = 6560 ; + (teamside = 2)
ID = 2
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = -1 + 2 * (teamside = 2)
ownpal = 0
scale = 0.5125 * fvar(0) * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6550, Stun Bar Canvas]
type = explod
trigger1 = !numexplod(0)
anim = 6550 + (teamside = 2)
ID = 0
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6550, Stun Bar Blinker]
type = explod
trigger1 = !numexplod(1) && var(0)
anim = 6555 + (teamside = 2)
ID = 1
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 0.5 * fvar(38), 0.5 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6550, Make Stun Bar Blink]
type = removeexplod
trigger1 = numexplod(1)
trigger1 = var(0) && cond(gametime % 4 <= 1, 1, 0) || !var(0)
ID = 1

;========================< Reset Stun Bar >========================

[state 6550, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6550, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;========================< Activate Stun Effect/Sound >========================

[state 6550, Reset Stars & Ducks]
type = null ; removeexplod
triggerall = numexplod(3)
trigger1 = var(0) && root,stateno = 5300 && root,time <= 1
trigger2 = root,stateno != 5300
ID = 3

[state 6550, Stars & Ducks]
type = null ; explod
trigger1 = !numexplod(3)
trigger1 = var(0) && root,stateno = 5300
anim = 6655 + random % 2
ID = 3
postype = p1
pos = ceil(root,const(size.head.pos.x) * root,const(size.xscale)), ceil((root,const(size.head.pos.y) + 24) * root,const(size.yscale))
bindtime = -1
removetime = -1
facing = root,facing
ownpal = 0
scale = 1.0, 1.0 * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 0
sprpriority = 4

[state 6550, Play Stun Sound]
type = null ; playsnd
trigger1 = var(0) && root,stateno = 5300
trigger1 = root,time % 16 = 1
value = 5300, 1

;=========================================================================
; SF3 Stun Idols
;=========================================================================
[Statedef 6565]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 6565, Change Animation]
type = changeanim
trigger1 = anim != [6565, 6570]
value = 6568 ; 6565 + random % 4

[state 6565, Change Animation]
type = changeanim
triggerall = root,var(0) > 0 && root,sysvar(0) >= 6
triggerall = animelemtime(animelemno(0)) >= 4
trigger1 = root,command = "a" || root,command = "b" || root,command = "c"
trigger2 = root,command = "x" || root,command = "y" || root,command = "z"
trigger3 = root,command = "fwd" || root,command = "back" || root,command = "up" || root,command = "down"
value = anim
elem = cond(!animelemtime(animelemno(0) + 1), 1, animelemno(0) + 1)

[state 6565, Root Bind]
type = bindtoroot
trigger1 = 1
pos = root,const(size.head.pos.x) * root,const(size.xscale), (root,const(size.head.pos.y) - 8.0) * root,const(size.yscale)

[state 6565, Play Stun Sound]
type = playsnd
trigger1 = time % cond(root,var(0) > 0 && root,sysvar(0) >= 6, 8, 16) = 0
value = 5300, 1

[state 6565, Destroy Helper]
type = destroyself
trigger1 = root,stateno != 5300 || !root,var(59)

;=========================================================================
; SF3 Win Score System
;=========================================================================
[Statedef 6575]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6575, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(28), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6575, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(28), 0)
trigger2 = numhelper(6610)
trigger3 = cond(root,var(54) = 1 && numenemy, enemy,numhelper(6610), 0)
trigger4 = cond(root,var(54) = 2 && numenemy = 2, enemy(0),numhelper(6610) || enemy(1),numhelper(6610), 0)
trigger5 = cond(root,var(54) = 3 && numenemy = 2, enemy(0),numhelper(6610), 0)
trigger6 = cond(root,var(54) = 4 && numenemy = 2, enemy(1),numhelper(6610), 0)
trigger7 = cond(root,var(55) && playeridexist(root,var(55)), playerid(root,var(55)),numhelper(6610), 0)

[state 6575, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6575, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -28

;========================< Initialize Win Score System >========================

[state 6575, Calculate Score]
type = null
triggerall = cond(numhelper(6305), !helper(6305),sysvar(0), 1)
triggerall = cond(numhelper(6306), !helper(6306),sysvar(0), 1)
triggerall = cond(numhelper(6307), !helper(6307),sysvar(0), 1)
; Perfect Score
trigger1 = var(0) := 50000 * root,var(31) || 1
; Vital Score
trigger1 = var(1) := 100 * root,life || 1
; Time Score
trigger1 = var(2) := ceil(600 * cond(root,var(32) >= 5940, 1, 99 - (root,var(32) / 60))) || 1
; Complete Score
trigger1 = var(3) := 30000 * !root,var(33)

[state 6575, Calculate Score]
type = varrangeset
trigger1 = cond(numhelper(6305), helper(6305),sysvar(0), 0)
trigger2 = cond(numhelper(6306), helper(6306),sysvar(0), 0)
trigger3 = cond(numhelper(6307), helper(6307),sysvar(0), 0)
first = 0
last = 3
value = 0

[state 6575, Position & Size of Score Bars]
type = null
trigger1 = fvar(36) := cond(numhelper(4000), helper(4000),var(29), 320) || 1
trigger1 = fvar(37) := cond(numhelper(4000), -helper(4000),var(30), 48) || 1
trigger1 = fvar(38) := cond(numhelper(4000), helper(4000),fvar(14), 1.0) || 1
trigger1 = fvar(39) := cond(numhelper(4000), helper(4000),fvar(15), 1.0)

;========================< Detect Place Values >========================

[state 6575, Score For Ones Place]
type = null
trigger1 = var(10) := floor(abs(var(0)) / 1) % 10 || 1
trigger1 = var(20) := floor(abs(var(1)) / 1) % 10 || 1
trigger1 = var(30) := floor(abs(var(2)) / 1) % 10 || 1
trigger1 = var(40) := floor(abs(var(3)) / 1) % 10

[state 6575, Score For Tens Place]
type = null
trigger1 = var(11) := floor(abs(var(0)) / 10) % 10 || 1
trigger1 = var(21) := floor(abs(var(1)) / 10) % 10 || 1
trigger1 = var(31) := floor(abs(var(2)) / 10) % 10 || 1
trigger1 = var(41) := floor(abs(var(3)) / 10) % 10

[state 6575, Score For Hundreds Place]
type = null
trigger1 = var(12) := floor(abs(var(0)) / 100) % 10 || 1
trigger1 = var(22) := floor(abs(var(1)) / 100) % 10 || 1
trigger1 = var(32) := floor(abs(var(2)) / 100) % 10 || 1
trigger1 = var(42) := floor(abs(var(3)) / 100) % 10

[state 6575, Score For Thousands Place]
type = null
trigger1 = var(13) := floor(abs(var(0)) / 1000) % 10 || 1
trigger1 = var(23) := floor(abs(var(1)) / 1000) % 10 || 1
trigger1 = var(33) := floor(abs(var(2)) / 1000) % 10 || 1
trigger1 = var(43) := floor(abs(var(3)) / 1000) % 10

[state 6575, Score For Ten Thousands Place]
type = null
trigger1 = var(14) := floor(abs(var(0)) / 10000) % 10 || 1
trigger1 = var(24) := floor(abs(var(1)) / 10000) % 10 || 1
trigger1 = var(34) := floor(abs(var(2)) / 10000) % 10 || 1
trigger1 = var(44) := floor(abs(var(3)) / 10000) % 10

[state 6575, Score For Hundred Thousands Place]
type = null
trigger1 = var(15) := floor(abs(var(0)) / 100000) % 10 || 1
trigger1 = var(25) := floor(abs(var(1)) / 100000) % 10 || 1
trigger1 = var(35) := floor(abs(var(2)) / 100000) % 10 || 1
trigger1 = var(45) := floor(abs(var(3)) / 100000) % 10

[state 6575, Score For Millions Place]
type = null
trigger1 = var(16) := floor(abs(var(0)) / 1000000) % 10 || 1
trigger1 = var(26) := floor(abs(var(1)) / 1000000) % 10 || 1
trigger1 = var(36) := floor(abs(var(2)) / 1000000) % 10 || 1
trigger1 = var(46) := floor(abs(var(3)) / 1000000) % 10

[state 6575, Score For Ten Millions Place]
type = null
trigger1 = var(17) := floor(abs(var(0)) / 10000000) % 10 || 1
trigger1 = var(27) := floor(abs(var(1)) / 10000000) % 10 || 1
trigger1 = var(37) := floor(abs(var(2)) / 10000000) % 10 || 1
trigger1 = var(47) := floor(abs(var(3)) / 10000000) % 10

[state 6575, Score For Hundred Millions Place]
type = null
trigger1 = var(18) := floor(abs(var(0)) / 100000000) % 10 || 1
trigger1 = var(28) := floor(abs(var(1)) / 100000000) % 10 || 1
trigger1 = var(38) := floor(abs(var(2)) / 100000000) % 10 || 1
trigger1 = var(48) := floor(abs(var(3)) / 100000000) % 10

[state 6575, Score For Billions Place]
type = null
trigger1 = var(19) := floor(abs(var(0)) / 1000000000) % 10 || 1
trigger1 = var(29) := floor(abs(var(1)) / 1000000000) % 10 || 1
trigger1 = var(39) := floor(abs(var(2)) / 1000000000) % 10 || 1
trigger1 = var(49) := floor(abs(var(3)) / 1000000000) % 10

;========================< Display Bars on Screen >========================

[state 6575, Reset White Line]
type = removeexplod
; trigger1 = numexplod(0)
trigger1 = fvar(0) <= 320
trigger1 = fvar(0) := fvar(0) + 22.857142857142857142857142857143
ID = 0

[state 6575, White Line]
type = explod
trigger1 = !numexplod(0)
anim = 6575
ID = 0
postype = left
pos = ceil(fvar(36) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * fvar(37) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = -fvar(0) * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Perfect Bar]
type = removeexplod
; trigger1 = numexplod(1)
trigger1 = fvar(0) >= 320 && fvar(1) < 191
trigger1 = fvar(1) := fvar(1) + 31.833333333333333333333333333333
ID = 1

[state 6575, Perfect Bar]
type = explod
trigger1 = !numexplod(1) && var(0)
anim = 6580
ID = 1
postype = left
pos = ceil((fvar(36) - fvar(1)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Vital Bar]
type = removeexplod
; trigger1 = numexplod(2)
trigger1 = (fvar(1) >= 191 || fvar(0) >= 320 && !numexplod(1)) && fvar(2) < 175
trigger1 = fvar(2) := fvar(2) + 29.166666666666666666666666666667
ID = 2

[state 6575, Vital Bar]
type = explod
trigger1 = !numexplod(2) ; && var(1)
anim = 6581
ID = 2
postype = left
pos = ceil((fvar(36) - fvar(2)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Time Bar]
type = removeexplod
; trigger1 = numexplod(3)
trigger1 = fvar(2) >= 175 && fvar(3) < 159
trigger1 = fvar(3) := fvar(3) + 26.5
ID = 3

[state 6575, Time Bar]
type = explod
trigger1 = !numexplod(3) ; && var(2)
anim = 6582
ID = 3
postype = left
pos = ceil((fvar(36) - fvar(3)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Complete Bar]
type = removeexplod
; trigger1 = numexplod(4)
trigger1 = fvar(3) >= 159 && fvar(4) < 143
trigger1 = fvar(4) := fvar(4) + 23.833333333333333333333333333333
ID = 4

[state 6575, Complete Bar]
type = explod
trigger1 = !numexplod(4) ; && var(3)
anim = 6583
ID = 4
postype = left
pos = ceil((fvar(36) - fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

;========================< Add All Score to Current Score  >========================

[state 6575, Delay Score Incease]
type = varadd
trigger1 = fvar(4) >= 143 && fvar(5) <= 20
fvar(5) = 1

[state 6575, Delay Grade Screen]
type = varadd
trigger1 = fvar(5) = 21
fvar(6) = 1

[state 6575, Increase Score]
type = parentvaradd
trigger1 = fvar(5) = 20
var(20) = var(0) + var(1) + var(2) + var(3)
persistent = 0

[state 6575, Play Blink Sound]
type = playsnd
trigger1 = fvar(5) = 20
value = 6575, 0 
volumescale = 100
persistent = 0

;========================< Display Perfect Score  >========================

[state 6575, Starting X Position]
type = varset
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
var(50) = -8 + 0 * (var(0) >= 0) + 8 * (var(0) >= 10) + 8 * (var(0) >= 100) + 8 * (var(0) >= 1000) + 8 * (var(0) >= 10000) + 8 * (var(0) >= 100000) + 8 * (var(0) >= 1000000) + 8 * (var(0) >= 10000000) + 8 * (var(0) >= 100000000) + 8 * (var(0) >= 1000000000)

[state 6575, Increase X Position]
type = varadd
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
var(51) = 2 * ((var(50) + 16) / 8) 

[state 6575, Reset Ones]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 5
[state 6575, Ones]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(5) && var(0) >= 0
anim = 6590 + 10 * (fvar(5) = 20) + var(10)
ID = 5
postype = left
pos = ceil((fvar(36) - 0 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Tens]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 6
[state 6575, Tens]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(6) && var(0) >= 10
anim = 6590 + 10 * (fvar(5) = 20) + var(11)
ID = 6
postype = left
pos = ceil((fvar(36) - 8 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundreds]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 7
[state 6575, Hundreds]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(7) && var(0) >= 100
anim = 6590 + 10 * (fvar(5) = 20) + var(12)
ID = 7
postype = left
pos = ceil((fvar(36) - 16 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Thousands]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 8
[state 6575, Thousands]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(8) && var(0) >= 1000
anim = 6590 + 10 * (fvar(5) = 20) + var(13)
ID = 8
postype = left
pos = ceil((fvar(36) - 24 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Thousands]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 9
[state 6575, Ten Thousands]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(9) && var(0) >= 10000
anim = 6590 + 10 * (fvar(5) = 20) + var(14)
ID = 9
postype = left
pos = ceil((fvar(36) - 32 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Thousands]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 10
[state 6575, Hundred Thousands]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(10) && var(0) >= 100000
anim = 6590 + 10 * (fvar(5) = 20) + var(15)
ID = 10
postype = left
pos = ceil((fvar(36) - 40 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Millions]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 11
[state 6575, Millions]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(11) && var(0) >= 1000000
anim = 6590 + 10 * (fvar(5) = 20) + var(16)
ID = 11
postype = left
pos = ceil((fvar(36) - 48 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Millions]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 12
[state 6575, Ten Millions]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(12) && var(0) >= 10000000
anim = 6590 + 10 * (fvar(5) = 20) + var(17)
ID = 12
postype = left
pos = ceil((fvar(36) - 56 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Millions]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 13
[state 6575, Hundred Millions]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(13) && var(0) >= 100000000
anim = 6590 + 10 * (fvar(5) = 20) + var(18)
ID = 13
postype = left
pos = ceil((fvar(36) - 64 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Billions]
type = removeexplod
trigger1 = fvar(1) >= 191 * 0.25 && fvar(1) < 191
trigger2 = fvar(5) = 20
ID = 14
[state 6575, Billions]
type = explod
trigger1 = fvar(1) >= 191 * 0.25
trigger1 = !numexplod(14) && var(0) >= 1000000000
anim = 6590 + 10 * (fvar(5) = 20) + var(19)
ID = 14
postype = left
pos = ceil((fvar(36) - 72 + var(50) - var(51)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Display Vital Score  >========================

[state 6575, Starting X Position]
type = varset
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
var(52) = -8 + 0 * (var(1) >= 0) + 8 * (var(1) >= 10) + 8 * (var(1) >= 100) + 8 * (var(1) >= 1000) + 8 * (var(1) >= 10000) + 8 * (var(1) >= 100000) + 8 * (var(1) >= 1000000) + 8 * (var(1) >= 10000000) + 8 * (var(1) >= 100000000) + 8 * (var(1) >= 1000000000)

[state 6575, Increase X Position]
type = varadd
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
var(53) = 2 * ((var(52) + 16) / 8) 

[state 6575, Reset Ones]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 15
[state 6575, Ones]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(15) && var(1) >= 0
anim = 6590 + 10 * (fvar(5) = 20) + var(20)
ID = 15
postype = left
pos = ceil((fvar(36) - 0 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Tens]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 16
[state 6575, Tens]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(16) && var(1) >= 10
anim = 6590 + 10 * (fvar(5) = 20) + var(21)
ID = 16
postype = left
pos = ceil((fvar(36) - 8 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundreds]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 17
[state 6575, Hundreds]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(17) && var(1) >= 100
anim = 6590 + 10 * (fvar(5) = 20) + var(22)
ID = 17
postype = left
pos = ceil((fvar(36) - 16 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Thousands]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 18
[state 6575, Thousands]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(18) && var(1) >= 1000
anim = 6590 + 10 * (fvar(5) = 20) + var(23)
ID = 18
postype = left
pos = ceil((fvar(36) - 24 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Thousands]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 19
[state 6575, Ten Thousands]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(19) && var(1) >= 10000
anim = 6590 + 10 * (fvar(5) = 20) + var(24)
ID = 19
postype = left
pos = ceil((fvar(36) - 32 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Thousands]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 20
[state 6575, Hundred Thousands]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(20) && var(1) >= 100000
anim = 6590 + 10 * (fvar(5) = 20) + var(25)
ID = 20
postype = left
pos = ceil((fvar(36) - 40 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Millions]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 21
[state 6575, Millions]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(21) && var(1) >= 1000000
anim = 6590 + 10 * (fvar(5) = 20) + var(26)
ID = 21
postype = left
pos = ceil((fvar(36) - 48 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Millions]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 22
[state 6575, Ten Millions]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(22) && var(1) >= 10000000
anim = 6590 + 10 * (fvar(5) = 20) + var(27)
ID = 22
postype = left
pos = ceil((fvar(36) - 56 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Millions]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 23
[state 6575, Hundred Millions]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(23) && var(1) >= 100000000
anim = 6590 + 10 * (fvar(5) = 20) + var(28)
ID = 23
postype = left
pos = ceil((fvar(36) - 64 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Billions]
type = removeexplod
trigger1 = fvar(2) >= 175 * 0.25 && fvar(2) < 175
trigger2 = fvar(5) = 20
ID = 24
[state 6575, Billions]
type = explod
trigger1 = fvar(2) >= 175 * 0.25
trigger1 = !numexplod(24) && var(1) >= 1000000000
anim = 6590 + 10 * (fvar(5) = 20) + var(29)
ID = 24
postype = left
pos = ceil((fvar(36) - 72 + var(52) - var(53)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * numexplod(1)) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Display Time Score  >========================

[state 6575, Starting X Position]
type = varset
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
var(54) = -8 + 0 * (var(2) >= 0) + 8 * (var(2) >= 10) + 8 * (var(2) >= 100) + 8 * (var(2) >= 1000) + 8 * (var(2) >= 10000) + 8 * (var(2) >= 100000) + 8 * (var(2) >= 1000000) + 8 * (var(2) >= 10000000) + 8 * (var(2) >= 100000000) + 8 * (var(2) >= 1000000000)

[state 6575, Increase X Position]
type = varadd
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
var(55) = 2 * ((var(54) + 16) / 8) 

[state 6575, Reset Ones]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 25
[state 6575, Ones]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(25) && var(2) >= 0
anim = 6590 + 10 * (fvar(5) = 20) + var(30)
ID = 25
postype = left
pos = ceil((fvar(36) - 0 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Tens]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 26
[state 6575, Tens]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(26) && var(2) >= 10
anim = 6590 + 10 * (fvar(5) = 20) + var(31)
ID = 26
postype = left
pos = ceil((fvar(36) - 8 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundreds]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 27
[state 6575, Hundreds]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(27) && var(2) >= 100
anim = 6590 + 10 * (fvar(5) = 20) + var(32)
ID = 27
postype = left
pos = ceil((fvar(36) - 16 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Thousands]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 28
[state 6575, Thousands]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(28) && var(2) >= 1000
anim = 6590 + 10 * (fvar(5) = 20) + var(33)
ID = 28
postype = left
pos = ceil((fvar(36) - 24 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Thousands]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 29
[state 6575, Ten Thousands]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(29) && var(2) >= 10000
anim = 6590 + 10 * (fvar(5) = 20) + var(34)
ID = 29
postype = left
pos = ceil((fvar(36) - 32 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Thousands]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 30
[state 6575, Hundred Thousands]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(30) && var(2) >= 100000
anim = 6590 + 10 * (fvar(5) = 20) + var(35)
ID = 30
postype = left
pos = ceil((fvar(36) - 40 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Millions]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 31
[state 6575, Millions]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(31) && var(2) >= 1000000
anim = 6590 + 10 * (fvar(5) = 20) + var(36)
ID = 31
postype = left
pos = ceil((fvar(36) - 48 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Millions]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 32
[state 6575, Ten Millions]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(32) && var(2) >= 10000000
anim = 6590 + 10 * (fvar(5) = 20) + var(37)
ID = 32
postype = left
pos = ceil((fvar(36) - 56 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Millions]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 33
[state 6575, Hundred Millions]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(33) && var(2) >= 100000000
anim = 6590 + 10 * (fvar(5) = 20) + var(38)
ID = 33
postype = left
pos = ceil((fvar(36) - 64 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Billions]
type = removeexplod
trigger1 = fvar(3) >= 159 * 0.25 && fvar(3) < 159
trigger2 = fvar(5) = 20
ID = 34
[state 6575, Billions]
type = explod
trigger1 = fvar(3) >= 159 * 0.25
trigger1 = !numexplod(34) && var(2) >= 1000000000
anim = 6590 + 10 * (fvar(5) = 20) + var(39)
ID = 34
postype = left
pos = ceil((fvar(36) - 72 + var(54) - var(55)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Display Complete Score  >========================

[state 6575, Starting X Position]
type = varset
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
var(56) = -8 + 0 * (var(0) >= 0) + 8 * (var(0) >= 10) + 8 * (var(0) >= 100) + 8 * (var(0) >= 1000) + 8 * (var(0) >= 10000) + 8 * (var(0) >= 100000) + 8 * (var(0) >= 1000000) + 8 * (var(0) >= 10000000) + 8 * (var(0) >= 100000000) + 8 * (var(0) >= 1000000000)

[state 6575, Increase X Position]
type = varadd
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
var(57) = 2 * ((var(56) + 16) / 8) 

[state 6575, Reset Ones]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 35
[state 6575, Ones]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(35) && var(3) >= 0
anim = 6590 + 10 * (fvar(5) = 20) + var(40)
ID = 35
postype = left
pos = ceil((fvar(36) - 0 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Tens]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 36
[state 6575, Tens]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(36) && var(3) >= 10
anim = 6590 + 10 * (fvar(5) = 20) + var(41)
ID = 36
postype = left
pos = ceil((fvar(36) - 8 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundreds]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 37
[state 6575, Hundreds]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(37) && var(3) >= 100
anim = 6590 + 10 * (fvar(5) = 20) + var(42)
ID = 37
postype = left
pos = ceil((fvar(36) - 16 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Thousands]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 38
[state 6575, Thousands]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(38) && var(3) >= 1000
anim = 6590 + 10 * (fvar(5) = 20) + var(43)
ID = 38
postype = left
pos = ceil((fvar(36) - 24 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Thousands]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 39
[state 6575, Ten Thousands]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(39) && var(3) >= 10000
anim = 6590 + 10 * (fvar(5) = 20) + var(44)
ID = 39
postype = left
pos = ceil((fvar(36) - 32 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Thousands]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 40
[state 6575, Hundred Thousands]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(40) && var(3) >= 100000
anim = 6590 + 10 * (fvar(5) = 20) + var(45)
ID = 40
postype = left
pos = ceil((fvar(36) - 40 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Millions]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 41
[state 6575, Millions]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(41) && var(3) >= 1000000
anim = 6590 + 10 * (fvar(5) = 20) + var(46)
ID = 41
postype = left
pos = ceil((fvar(36) - 48 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Ten Millions]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 42
[state 6575, Ten Millions]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(42) && var(3) >= 10000000
anim = 6590 + 10 * (fvar(5) = 20) + var(47)
ID = 42
postype = left
pos = ceil((fvar(36) - 56 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Hundred Millions]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 43
[state 6575, Hundred Millions]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(43) && var(3) >= 100000000
anim = 6590 + 10 * (fvar(5) = 20) + var(48)
ID = 43
postype = left
pos = ceil((fvar(36) - 64 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

[state 6575, Reset Billions]
type = removeexplod
trigger1 = fvar(4) >= 143 * 0.25 && fvar(4) < 143
trigger2 = fvar(5) = 20
ID = 44
[state 6575, Billions]
type = explod
trigger1 = fvar(4) >= 143 * 0.25
trigger1 = !numexplod(44) && var(3) >= 1000000000
anim = 6590 + 10 * (fvar(5) = 20) + var(49)
ID = 44
postype = left
pos = ceil((fvar(36) - 72 + var(56) - var(57)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * (fvar(37) + 1 + 16 * (numexplod(1) + numexplod(2) + numexplod(3))) * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1

;========================< Sounds and Special Effects >========================

[state 6575, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), cond(!helper(4000),var(31), fvar(6) < 72, !numhelper(6610)), fvar(6) < 72)
flag = roundnotover

;========================< Reset Win Score System >========================

[state 6575, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6575, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Grade Screen
;=========================================================================
[Statedef 6610]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6610, Stop Sound]
type = stopsnd
trigger1 = cond(numhelper(4000), !helper(4000),var(31), 0)
channel = 0

[state 6610, Destroy Explod]
type = removeexplod
trigger1 = cond(numhelper(4000), !helper(4000),var(31), 0)

[state 6610, Destroy Helper]
type = destroyself
trigger1 = cond(numhelper(4000), !helper(4000),var(31), 0)

[state 6610, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6610, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -8

;========================< Initialize Grade Screen >========================

[state 6610, Initialize Grade Screen]
type = null
trigger1 = var(0) := root,var(20) || var(1) := root,var(34) || var(2) := root,var(35) || 1
trigger1 = var(3) := root,var(36) || var(4) := root,var(37) || 1
trigger1 = var(5) := var(1) + var(2) + var(3) + var(4) + 15 * root,var(31) + 30 * !root,var(33) || 1
trigger1 = var(5) := cond(var(5) >= 660, 659, var(5))

[state 6610, Size of Grade Sceen]
type = null
trigger1 = fvar(36) := 1.0 ; screen width
trigger1 = fvar(37) := 1.0 ; screen height
trigger1 = fvar(38) := 0.83333333333333333333333333333333 ; portrait width
trigger1 = fvar(39) := 1.0 ; height

;========================< Character Name on Grade Screen >========================

; 01 = A || 14 = N || 27 = [space]
; 02 = B || 15 = O || 28 = hyphen
; 03 = C || 16 = P
; 04 = D || 17 = Q 
; 05 = E || 18 = R 
; 06 = F || 19 = S
; 07 = G || 20 = T
; 08 = H || 21 = U
; 09 = I || 22 = V
; 10 = J || 23 = W
; 11 = K || 24 = X
; 12 = L || 25 = Y
; 13 = M || 26 = Z
[state 6610, Characters of Name String]
type = null
trigger1 = var(06) := 21 || var(07) := 18 || var(08) := 09 || var(09) := 05 || var(10) := 14 || 1
trigger1 = var(11) := 00 || var(12) := 00 || var(13) := 00 || var(14) := 00 || var(15) := 00

[state 6610, Size of Each Character Object]
type = null
trigger1 = var(16) := 30 * (var(06) = 01) + 33 * (var(06) = 02) + 31 * (var(06) = 03) + 34 * (var(06) = 04) + 35 * (var(06) = 05)
trigger2 = var(16) := 35 * (var(06) = 06) + 30 * (var(06) = 07) + 40 * (var(06) = 08) + 19 * (var(06) = 09) + 34 * (var(06) = 10) 
trigger3 = var(16) := 39 * (var(06) = 11) + 24 * (var(06) = 12) + 48 * (var(06) = 13) + 40 * (var(06) = 14) + 31 * (var(06) = 15)
trigger4 = var(16) := 33 * (var(06) = 16) + 31 * (var(06) = 17) + 35 * (var(06) = 18) + 28 * (var(06) = 19) + 26 * (var(06) = 20)
trigger5 = var(16) := 34 * (var(06) = 21) + 30 * (var(06) = 22) + 48 * (var(06) = 23) + 39 * (var(06) = 24) + 28 * (var(06) = 25)
trigger6 = var(16) := 39 * (var(06) = 26) + 16 * (var(06) = 27) + 28 * (var(06) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(17) := 30 * (var(07) = 01) + 33 * (var(07) = 02) + 31 * (var(07) = 03) + 34 * (var(07) = 04) + 35 * (var(07) = 05)
trigger2 = var(17) := 35 * (var(07) = 06) + 30 * (var(07) = 07) + 40 * (var(07) = 08) + 19 * (var(07) = 09) + 34 * (var(07) = 10)
trigger3 = var(17) := 39 * (var(07) = 11) + 24 * (var(07) = 12) + 48 * (var(07) = 13) + 40 * (var(07) = 14) + 31 * (var(07) = 15)
trigger4 = var(17) := 33 * (var(07) = 16) + 31 * (var(07) = 17) + 35 * (var(07) = 18) + 28 * (var(07) = 19) + 26 * (var(07) = 20)
trigger5 = var(17) := 34 * (var(07) = 21) + 30 * (var(07) = 22) + 48 * (var(07) = 23) + 39 * (var(07) = 24) + 28 * (var(07) = 25)
trigger6 = var(17) := 39 * (var(07) = 26) + 16 * (var(07) = 27) + 28 * (var(07) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(18) := 30 * (var(08) = 01) + 33 * (var(08) = 02) + 31 * (var(08) = 03) + 34 * (var(08) = 04) + 35 * (var(08) = 05)
trigger2 = var(18) := 35 * (var(08) = 06) + 30 * (var(08) = 07) + 40 * (var(08) = 08) + 19 * (var(08) = 09) + 34 * (var(08) = 10)
trigger3 = var(18) := 39 * (var(08) = 11) + 24 * (var(08) = 12) + 48 * (var(08) = 13) + 40 * (var(08) = 14) + 31 * (var(08) = 15)
trigger4 = var(18) := 33 * (var(08) = 16) + 31 * (var(08) = 17) + 35 * (var(08) = 18) + 28 * (var(08) = 19) + 26 * (var(08) = 20)
trigger5 = var(18) := 34 * (var(08) = 21) + 30 * (var(08) = 22) + 48 * (var(08) = 23) + 39 * (var(08) = 24) + 28 * (var(08) = 25)
trigger6 = var(18) := 39 * (var(08) = 26) + 16 * (var(08) = 27) + 28 * (var(08) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(19) := 30 * (var(09) = 01) + 33 * (var(09) = 02) + 31 * (var(09) = 03) + 34 * (var(09) = 04) + 35 * (var(09) = 05)
trigger2 = var(19) := 35 * (var(09) = 06) + 30 * (var(09) = 07) + 40 * (var(09) = 08) + 19 * (var(09) = 09) + 34 * (var(09) = 10)
trigger3 = var(19) := 39 * (var(09) = 11) + 24 * (var(09) = 12) + 48 * (var(09) = 13) + 40 * (var(09) = 14) + 31 * (var(09) = 15)
trigger4 = var(19) := 33 * (var(09) = 16) + 31 * (var(09) = 17) + 35 * (var(09) = 18) + 28 * (var(09) = 19) + 26 * (var(09) = 20)
trigger5 = var(19) := 34 * (var(09) = 21) + 30 * (var(09) = 22) + 48 * (var(09) = 23) + 39 * (var(09) = 24) + 28 * (var(09) = 25)
trigger6 = var(19) := 39 * (var(09) = 26) + 16 * (var(09) = 27) + 28 * (var(09) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(20) := 30 * (var(10) = 01) + 33 * (var(10) = 02) + 31 * (var(10) = 03) + 34 * (var(10) = 04) + 35 * (var(10) = 05)
trigger2 = var(20) := 35 * (var(10) = 06) + 30 * (var(10) = 07) + 40 * (var(10) = 08) + 19 * (var(10) = 09) + 34 * (var(10) = 10)
trigger3 = var(20) := 39 * (var(10) = 11) + 24 * (var(10) = 12) + 48 * (var(10) = 13) + 40 * (var(10) = 14) + 31 * (var(10) = 15)
trigger4 = var(20) := 33 * (var(10) = 16) + 31 * (var(10) = 17) + 35 * (var(10) = 18) + 28 * (var(10) = 19) + 26 * (var(10) = 20)
trigger5 = var(20) := 34 * (var(10) = 21) + 30 * (var(10) = 22) + 48 * (var(10) = 23) + 39 * (var(10) = 24) + 28 * (var(10) = 25)
trigger6 = var(20) := 39 * (var(10) = 26) + 16 * (var(10) = 27) + 28 * (var(10) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(21) := 30 * (var(11) = 01) + 33 * (var(11) = 02) + 31 * (var(11) = 03) + 34 * (var(11) = 04) + 35 * (var(11) = 05)
trigger2 = var(21) := 35 * (var(11) = 06) + 30 * (var(11) = 07) + 40 * (var(11) = 08) + 19 * (var(11) = 09) + 34 * (var(11) = 10)
trigger3 = var(21) := 39 * (var(11) = 11) + 24 * (var(11) = 12) + 48 * (var(11) = 13) + 40 * (var(11) = 14) + 31 * (var(11) = 15)
trigger4 = var(21) := 33 * (var(11) = 16) + 31 * (var(11) = 17) + 35 * (var(11) = 18) + 28 * (var(11) = 19) + 26 * (var(11) = 20)
trigger5 = var(21) := 34 * (var(11) = 21) + 30 * (var(11) = 22) + 48 * (var(11) = 23) + 39 * (var(11) = 24) + 28 * (var(11) = 25)
trigger6 = var(21) := 39 * (var(11) = 26) + 16 * (var(11) = 27) + 28 * (var(11) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(22) := 30 * (var(12) = 01) + 33 * (var(12) = 02) + 31 * (var(12) = 03) + 34 * (var(12) = 04) + 35 * (var(12) = 05)
trigger2 = var(22) := 35 * (var(12) = 06) + 30 * (var(12) = 07) + 40 * (var(12) = 08) + 19 * (var(12) = 09) + 34 * (var(12) = 10)
trigger3 = var(22) := 39 * (var(12) = 11) + 24 * (var(12) = 12) + 48 * (var(12) = 13) + 40 * (var(12) = 14) + 31 * (var(12) = 15)
trigger4 = var(22) := 33 * (var(12) = 16) + 31 * (var(12) = 17) + 35 * (var(12) = 18) + 28 * (var(12) = 19) + 26 * (var(12) = 20)
trigger5 = var(22) := 34 * (var(12) = 21) + 30 * (var(12) = 22) + 48 * (var(12) = 23) + 39 * (var(12) = 24) + 28 * (var(12) = 25)
trigger6 = var(22) := 39 * (var(12) = 26) + 16 * (var(12) = 27) + 28 * (var(12) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(23) := 30 * (var(13) = 01) + 33 * (var(13) = 02) + 31 * (var(13) = 03) + 34 * (var(13) = 04) + 35 * (var(13) = 05)
trigger2 = var(23) := 35 * (var(13) = 06) + 30 * (var(13) = 07) + 40 * (var(13) = 08) + 19 * (var(13) = 09) + 34 * (var(13) = 10)
trigger3 = var(23) := 39 * (var(13) = 11) + 24 * (var(13) = 12) + 48 * (var(13) = 13) + 40 * (var(13) = 14) + 31 * (var(13) = 15)
trigger4 = var(23) := 33 * (var(13) = 16) + 31 * (var(13) = 17) + 35 * (var(13) = 18) + 28 * (var(13) = 19) + 26 * (var(13) = 20)
trigger5 = var(23) := 34 * (var(13) = 21) + 30 * (var(13) = 22) + 48 * (var(13) = 23) + 39 * (var(13) = 24) + 28 * (var(13) = 25)
trigger6 = var(23) := 39 * (var(13) = 26) + 16 * (var(13) = 27) + 28 * (var(13) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(24) := 30 * (var(14) = 01) + 33 * (var(14) = 02) + 31 * (var(14) = 03) + 34 * (var(14) = 04) + 35 * (var(14) = 05)
trigger2 = var(24) := 35 * (var(14) = 06) + 30 * (var(14) = 07) + 40 * (var(14) = 08) + 19 * (var(14) = 09) + 34 * (var(14) = 10)
trigger3 = var(24) := 39 * (var(14) = 11) + 24 * (var(14) = 12) + 48 * (var(14) = 13) + 40 * (var(14) = 14) + 31 * (var(14) = 15)
trigger4 = var(24) := 33 * (var(14) = 16) + 31 * (var(14) = 17) + 35 * (var(14) = 18) + 28 * (var(14) = 19) + 26 * (var(14) = 20)
trigger5 = var(24) := 34 * (var(14) = 21) + 30 * (var(14) = 22) + 48 * (var(14) = 23) + 39 * (var(14) = 24) + 28 * (var(14) = 25)
trigger6 = var(24) := 39 * (var(14) = 26) + 16 * (var(14) = 27) + 28 * (var(14) = 28)
[state 6610, Size of Each Character Object]
type = null
trigger1 = var(25) := 30 * (var(15) = 01) + 33 * (var(15) = 02) + 31 * (var(15) = 03) + 34 * (var(15) = 04) + 35 * (var(15) = 05)
trigger2 = var(25) := 35 * (var(15) = 06) + 30 * (var(15) = 07) + 40 * (var(15) = 08) + 19 * (var(15) = 09) + 34 * (var(15) = 10)
trigger3 = var(25) := 39 * (var(15) = 11) + 24 * (var(15) = 12) + 48 * (var(15) = 13) + 40 * (var(15) = 14) + 31 * (var(15) = 15)
trigger4 = var(25) := 33 * (var(15) = 16) + 31 * (var(15) = 17) + 35 * (var(15) = 18) + 28 * (var(15) = 19) + 26 * (var(15) = 20)
trigger5 = var(25) := 34 * (var(15) = 21) + 30 * (var(15) = 22) + 48 * (var(15) = 23) + 39 * (var(15) = 24) + 28 * (var(15) = 25)
trigger6 = var(25) := 39 * (var(15) = 26) + 16 * (var(15) = 27) + 28 * (var(15) = 28)

[state 6610, Set Aspect Ratio of Character Objects]
type = null
trigger1 = var(16) := ceil(var(16) * fvar(38)) || var(17) := ceil(var(17) * fvar(38))
trigger1 = var(18) := ceil(var(18) * fvar(38)) || var(19) := ceil(var(19) * fvar(38))
trigger1 = var(20) := ceil(var(20) * fvar(38)) || var(21) := ceil(var(21) * fvar(38))
trigger1 = var(22) := ceil(var(22) * fvar(38)) || var(23) := ceil(var(23) * fvar(38))
trigger1 = var(24) := ceil(var(24) * fvar(38)) || var(25) := ceil(var(25) * fvar(38))

[state 6610, Length of Message String]
type = null
; adjacent position of characters
trigger1 = var(26) := 0 || 1
trigger1 = var(27) := var(16) || 1
trigger1 = var(28) := var(16) + var(17) || 1
trigger1 = var(29) := var(16) + var(17) + var(18) || 1
trigger1 = var(30) := var(16) + var(17) + var(18) + var(19) || 1
trigger1 = var(31) := var(16) + var(17) + var(18) + var(19) + var(20) || 1
trigger1 = var(32) := var(16) + var(17) + var(18) + var(19) + var(20) + var(21) || 1
trigger1 = var(33) := var(16) + var(17) + var(18) + var(19) + var(20) + var(21) + var(22) || 1
trigger1 = var(34) := var(16) + var(17) + var(18) + var(19) + var(20) + var(21) + var(22) + var(23) || 1
trigger1 = var(35) := var(16) + var(17) + var(18) + var(19) + var(20) + var(21) + var(22) + var(23) + var(24) || 1
trigger1 = var(36) := var(16) + var(17) + var(18) + var(19) + var(20) + var(21) + var(22) + var(23) + var(24) + var(25) || 1
; screen position of characters
trigger1 = fvar(5) := 0 || fvar(6) := 0 || 1
trigger1 = fvar(5) := fvar(5) + (var(06) > 0) + (var(07) > 0) + (var(08) > 0) + (var(09) > 0) + (var(10) > 0) || 1
trigger1 = fvar(5) := fvar(5) + (var(11) > 0) + (var(12) > 0) + (var(13) > 0) + (var(14) > 0) + (var(15) > 0) || 1
trigger1 = fvar(6) := 220.0 * fvar(36) + var(36) * 0.5 || 1 ; use to center the string.
trigger1 = fvar(6) := fvar(6) + cond(fvar(6) > 320.0 * fvar(36), 320.0 * fvar(36) - fvar(6), 0) || 1 ; prevent string from leaving screen
trigger1 = fvar(7) := 0.0 ; spacing between characters 

;========================< Detect Place Values >========================

[state 6610, Place Values]
type = null
trigger1 = var(37) := floor(abs(var(0)) / 1) % 10 || 1
trigger1 = var(38) := floor(abs(var(0)) / 10) % 10 || 1
trigger1 = var(39) := floor(abs(var(0)) / 100) % 10 || 1
trigger1 = var(40) := floor(abs(var(0)) / 1000) % 10 || 1
trigger1 = var(41) := floor(abs(var(0)) / 10000) % 10 || 1
trigger1 = var(42) := floor(abs(var(0)) / 100000) % 10 || 1
trigger1 = var(43) := floor(abs(var(0)) / 1000000) % 10 || 1
trigger1 = var(44) := floor(abs(var(0)) / 10000000) % 10 || 1
trigger1 = var(45) := floor(abs(var(0)) / 100000000) % 10 || 1
trigger1 = var(46) := floor(abs(var(0)) / 1000000000) % 10 || 1

;========================< Display Grade Screen >========================

[state 6610, Transition 1]
type = explod
trigger1 = time = 80
anim = 6610
ID = 0
postype = left
pos = ceil(160 * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 120 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(36), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Transitional Time]
type = varadd
trigger1 = time > 80 && !numexplod(0)
var(47) = 1

[state 6610, Background]
type = explod
trigger1 = var(47)
anim = 6615
ID = 1
postype = left
pos = ceil(160 * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 120 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(36), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0

[state 6610, Portrait]
type = explod
trigger1 = var(47)
anim = 6620
ID = 2
postype = left
pos = ceil(320 * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 240 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(36), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Portrait]
type = varadd
trigger1 = var(47) && fvar(1) < 32.0
fvar(1) = 1.0
[state 6610, Modify Portrait]
type = modifyexplod
trigger1 = numexplod(2)
postype = left
pos = ceil((320 + fvar(1)) * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 240 * fvar(39))
ID = 2

[state 6610, Transition 2]
type = explod
trigger1 = var(47)
anim = 6611
ID = 3
postype = left
pos = ceil(160 * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 120 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(36), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0

[state 6610, Quote Box]
type = explod
trigger1 = var(47) = 13
anim = 6625
ID = 4
postype = left
pos = ceil(320 * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 232 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(36), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Quote Box]
type = varadd
trigger1 = var(47) >= 13 && fvar(2) < 288.0
fvar(2) = 13.090909090909090909090909090909
[state 6610, Modify Quote Box]
type = modifyexplod
trigger1 = numexplod(4)
postype = left
pos = ceil((320 - fvar(2)) * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 232 * fvar(39))
trans = addalpha
alpha = 256, 128
ID = 4

[state 6610, Quote Text]
type = explod
trigger1 = 0 ; var(47) = 43
anim = 6630
ID = 5
postype = left
pos = ceil(320 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 228 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Quote Text]
type = varadd
trigger1 = 0 ; vvar(47) >= 43 && fvar(3) < 264.0
fvar(3) = 14.666666666666666666666666666667
[state 6610, Modify Quote Text]
type = modifyexplod
trigger1 = 0 ; v numexplod(5)
postype = left
pos = ceil((320 - fvar(3)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 228 * fvar(39))
ID = 5

[state 6610, Data Shadow]
type = explod
trigger1 = var(47) = 36
anim = 6635
ID = 6
postype = left
pos = ceil(-16 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Data Shadow]
type = varadd
trigger1 = var(47) >= 44 && fvar(4) < 257.0
fvar(4) = 16.0625
[state 6610, Modify Data Shadow]
type = modifyexplod
trigger1 = numexplod(6) && var(47) >= 44
postype = left
pos = ceil((125 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
trans = addalpha
alpha = 256, 128
ID = 6

[state 6610, Data]
type = explod
trigger1 = var(47) = 36
anim = 6636
ID = 7
postype = left
pos = ceil(-16 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Data]
type = modifyexplod
trigger1 = numexplod(7) && var(47) >= 47
postype = left
pos = ceil((125 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
ID = 7

;========================< Display Character Name on Grade Screen >========================

[state 6610, Modify Name]
type = varadd
trigger1 = var(47) >= 36 && fvar(8) < fvar(6)
fvar(8) = (fvar(6) / 24.0)

[state 6610, Name Shadow Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 8
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 9
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 10
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 11
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 12
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 13
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 14
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 15
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 16
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 17
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 18
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 19
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 20
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 21
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 22
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 23
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 24
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 25
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 26
[state 6610, Name Reset]
type = removeexplod
trigger1 = fvar(8) < fvar(6)
ID = 27

[state 6610, Name Shadow Characters]
type = varset
trigger1 = var(47) >= 36 
sysvar(0) = numexplod
persistent = 0

[state 6610, Name Shadow Character 0]
type = explod
trigger1 = var(47) >= 36 && !numexplod(8)
trigger1 = var(6)
anim = 6640 + var(6) - 1
ID = 8
postype = left
pos = ceil(-var(36) + var(26) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 1]
type = explod
trigger1 = var(47) >= 36 && !numexplod(9)
trigger1 = var(7)
anim = 6640 + var(7) - 1
ID = 9
postype = left
pos = ceil(-var(36) + var(27) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 2]
type = explod
trigger1 = var(47) >= 36 && !numexplod(10)
trigger1 = var(8)
anim = 6640 + var(8) - 1
ID = 10
postype = left
pos = ceil(-var(36) + var(28) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 3]
type = explod
trigger1 = var(47) >= 36 && !numexplod(11)
trigger1 = var(9)
anim = 6640 + var(9) - 1
ID = 11
postype = left
pos = ceil(-var(36) + var(29) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 4]
type = explod
trigger1 = var(47) >= 36 && !numexplod(12)
trigger1 = var(10)
anim = 6640 + var(10) - 1
ID = 12
postype = left
pos = ceil(-var(36) + var(30) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 5]
type = explod
trigger1 = var(47) >= 36 && !numexplod(13)
trigger1 = var(11)
anim = 6640 + var(11) - 1
ID = 13
postype = left
pos = ceil(-var(36) + var(31) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 6]
type = explod
trigger1 = var(47) >= 36 && !numexplod(14)
trigger1 = var(12)
anim = 6640 + var(12) - 1
ID = 14
postype = left
pos = ceil(-var(36) + var(32) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 7]
type = explod
trigger1 = var(47) >= 36 && !numexplod(15)
trigger1 = var(13)
anim = 6640 + var(13) - 1
ID = 15
postype = left
pos = ceil(-var(36) + var(33) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 8]
type = explod
trigger1 = var(47) >= 36 && !numexplod(16)
trigger1 = var(14)
anim = 6640 + var(14) - 1
ID = 16
postype = left
pos = ceil(-var(36) + var(34) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Shadow Character 9]
type = explod
trigger1 = var(47) >= 36 && !numexplod(17)
trigger1 = var(15)
anim = 6640 + var(15) - 1
ID = 17
postype = left
pos = ceil(-var(36) + var(35) + fvar(7) * (numexplod - sysvar(0)) + (fvar(8) + 2)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 192 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
trans = addalpha
alpha = 0, 128
pausemovetime = -1
supermovetime = -1

[state 6610, Name Characters]
type = varset
trigger1 = var(47) >= 36 
sysvar(1) = numexplod
persistent = 0

[state 6610, Name Character 0]
type = explod
trigger1 = var(47) >= 36 && !numexplod(18)
trigger1 = var(6)
anim = 6640 + var(6) - 1
ID = 18
postype = left
pos = ceil(-var(36) + var(26) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 1]
type = explod
trigger1 = var(47) >= 36 && !numexplod(19)
trigger1 = var(7)
anim = 6640 + var(7) - 1
ID = 19
postype = left
pos = ceil(-var(36) + var(27) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 2]
type = explod
trigger1 = var(47) >= 36 && !numexplod(20)
trigger1 = var(8)
anim = 6640 + var(8) - 1
ID = 20
postype = left
pos = ceil(-var(36) + var(28) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 3]
type = explod
trigger1 = var(47) >= 36 && !numexplod(21)
trigger1 = var(9)
anim = 6640 + var(9) - 1
ID = 21
postype = left
pos = ceil(-var(36) + var(29) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 4]
type = explod
trigger1 = var(47) >= 36 && !numexplod(22)
trigger1 = var(10)
anim = 6640 + var(10) - 1
ID = 22
postype = left
pos = ceil(-var(36) + var(30) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 5]
type = explod
trigger1 = var(47) >= 36 && !numexplod(23)
trigger1 = var(11)
anim = 6640 + var(11) - 1
ID = 23
postype = left
pos = ceil(-var(36) + var(31) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 6]
type = explod
trigger1 = var(47) >= 36 && !numexplod(24)
trigger1 = var(12)
anim = 6640 + var(12) - 1
ID = 24
postype = left
pos = ceil(-var(36) + var(32) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 7]
type = explod
trigger1 = var(47) >= 36 && !numexplod(25)
trigger1 = var(13)
anim = 6640 + var(13) - 1
ID = 25
postype = left
pos = ceil(-var(36) + var(33) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 8]
type = explod
trigger1 = var(47) >= 36 && !numexplod(26)
trigger1 = var(14)
anim = 6640 + var(14) - 1
ID = 26
postype = left
pos = ceil(-var(36) + var(34) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

[state 6610, Name Character 9]
type = explod
trigger1 = var(47) >= 36 && !numexplod(27)
trigger1 = var(15)
anim = 6640 + var(15) - 1
ID = 27
postype = left
pos = ceil(-var(36) + var(35) + fvar(7) * (numexplod - sysvar(1)) + fvar(8)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 190 * fvar(39))
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

;========================< Display Grade Bars on Grade Screen >========================

[state 6610, Offence Bar]
type = explod
trigger1 = var(47) = 36
anim = 6670
ID = 28
postype = left
pos = ceil(-329 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 129 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = var(1) * 0.4 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Offence Bar]
type = modifyexplod
trigger1 = numexplod(28) && var(47) >= 47
postype = left
pos = ceil((-188 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 129 * fvar(39))
ID = 28

[state 6610, Defence Bar]
type = explod
trigger1 = var(47) = 36
anim = 6670
ID = 29
postype = left
pos = ceil(-329 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 133 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = var(2) * 0.4 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Defence Bar]
type = modifyexplod
trigger1 = numexplod(29) && var(47) >= 47
postype = left
pos = ceil((-188 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 133 * fvar(39))
ID = 29

[state 6610, Tech Bar]
type = explod
trigger1 = var(47) = 36
anim = 6670
ID = 30
postype = left
pos = ceil(-329 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 137 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = var(3) * 0.4 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify Tech Bar]
type = modifyexplod
trigger1 = numexplod(30) && var(47) >= 47
postype = left
pos = ceil((-188 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 137 * fvar(39))
ID = 30

[state 6610, EX Point Bar]
type = explod
trigger1 = var(47) = 36
anim = 6670
ID = 31
postype = left
pos = ceil(-329 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 141 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = var(4) * 0.4 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
persistent = 0
[state 6610, Modify EX Point Bar]
type = modifyexplod
trigger1 = numexplod(31) && var(47) >= 47
postype = left
pos = ceil((-188 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 141 * fvar(39))
ID = 31

;========================< Display Grade Score >========================

[state 6610, Ones]
type = explod
trigger1 = !numexplod(32) && var(47) >= 36
anim = 6675 + var(37)
ID = 32
postype = left
pos = ceil(-271 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Ones]
type = modifyexplod
trigger1 = numexplod(32) && var(47) >= 47
postype = left
pos = ceil((-130 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 32

[state 6610, Tens]
type = explod
trigger1 = !numexplod(33) && var(47) >= 36
anim = 6675 + var(38)
ID = 33
postype = left
pos = ceil(-279 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Tens]
type = modifyexplod
trigger1 = numexplod(33) && var(47) >= 47
postype = left
pos = ceil((-138 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 33

[state 6610, Hundreds]
type = explod
trigger1 = !numexplod(34) && var(47) >= 36
anim = 6675 + var(39)
ID = 34
postype = left
pos = ceil(-287 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Hundreds]
type = modifyexplod
trigger1 = numexplod(34) && var(47) >= 47
postype = left
pos = ceil((-146 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 34

[state 6610, Thousands]
type = explod
trigger1 = !numexplod(35) && var(47) >= 36
anim = 6675 + var(40)
ID = 35
postype = left
pos = ceil(-295 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Thousands]
type = modifyexplod
trigger1 = numexplod(35) && var(47) >= 47
postype = left
pos = ceil((-154 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 35

[state 6610, Ten Thousands]
type = explod
trigger1 = !numexplod(36) && var(47) >= 36
anim = 6675 + var(41)
ID = 36
postype = left
pos = ceil(-303 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Ten Thousands]
type = modifyexplod
trigger1 = numexplod(36) && var(47) >= 47
postype = left
pos = ceil((-162 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 36

[state 6610, Hundred Thousands]
type = explod
trigger1 = !numexplod(37) && var(47) >= 36
anim = 6675 + var(42)
ID = 37
postype = left
pos = ceil(-311 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Hundred Thousands]
type = modifyexplod
trigger1 = numexplod(37) && var(47) >= 47
postype = left
pos = ceil((-170 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 37

[state 6610, Millions]
type = explod
trigger1 = !numexplod(38) && var(47) >= 36
anim = 6675 + var(43)
ID = 38
postype = left
pos = ceil(-319 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Millions]
type = modifyexplod
trigger1 = numexplod(38) && var(47) >= 47
postype = left
pos = ceil((-178 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 38

[state 6610, Ten Millions]
type = explod
trigger1 = !numexplod(39) && var(47) >= 36
anim = 6675 + var(44)
ID = 39
postype = left
pos = ceil(-327 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Ten Millions]
type = modifyexplod
trigger1 = numexplod(39) && var(47) >= 47
postype = left
pos = ceil((-186 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 39

[state 6610, Hundred Millions]
type = null ; explod
trigger1 = !numexplod(40) && var(47) >= 36
anim = 6675 + var(45)
ID = 40
postype = left
pos = ceil(-335 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Hundred Millions]
type = null ; modifyexplod
trigger1 = numexplod(40) && var(47) >= 47
postype = left
pos = ceil((-194 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 40

[state 6610, Billions]
type = null ; explod
trigger1 = !numexplod(41) && var(47) >= 36
anim = 6675 + var(46)
ID = 41
postype = left
pos = ceil(-343 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(38), 1.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Billions]
type = null ; modifyexplod
trigger1 = numexplod(41) && var(47) >= 47
postype = left
pos = ceil((-202 + fvar(4)) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 151 * fvar(39))
ID = 41

;========================< Call Win Quote Helper >========================

[state 6610, Win Quote]
type = helper
trigger1 = var(47) = 43
name = "Win Quote"
ID = 6615
stateno = 6615
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647

;========================< Display Actual Grade >========================

[state 6610, Grade]
type = explod
trigger1 = var(47) = 80
anim = 6685 + floor(var(5) / 60.0)
ID = 42 + floor(var(5) / 60.0)
postype = left
pos = ceil(163 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Grade]
type = varadd
trigger1 = var(47) >= 80 && fvar(9) < 1.0
fvar(9) = 0.07692307692307692307692307692308
[state 6610, Modify Grade]
type = modifyexplod
trigger1 = numexplod(42 + floor(var(5) / 60.0))
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 42 + floor(var(5) / 60.0)

[state 6610, Grade Plus 1]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) < 8
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.3, 0, 1)
anim = 6700
ID = 60
postype = left
pos = ceil(163 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Grade Plus 1]
type = modifyexplod
trigger1 = numexplod(60)
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 60

[state 6610, Grade Plus 2]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) < 8
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.6, 0, 1)
anim = 6700
ID = 61
postype = left
pos = ceil((163 + 12 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Grade Plus 2]
type = modifyexplod
trigger1 = numexplod(61)
postype = left
pos = ceil((163 + 12 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 61

[state 6610, Bronze Grade Plus 1]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) = 8
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.3, 0, 1)
anim = 6701
ID = 62
postype = left
pos = ceil(158 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Bronze Grade Plus 1]
type = modifyexplod
trigger1 = numexplod(62)
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 62

[state 6610, Bronze Grade Plus 2]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) = 8
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.6, 0, 1)
anim = 6701
ID = 63
postype = left
pos = ceil((158 - 13 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Bronze Grade Plus 2]
type = modifyexplod
trigger1 = numexplod(63)
postype = left
pos = ceil((158 - 13 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 63

[state 6610, Silver Grade Plus 1]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) = 9
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.3, 0, 1)
anim = 6701
ID = 64
postype = left
pos = ceil(163 * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Silver Grade Plus 1]
type = modifyexplod
trigger1 = numexplod(64)
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 64

[state 6610, Silver Grade Plus 2]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) = 9
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.6, 0, 1)
anim = 6701
ID = 65
postype = left
pos = ceil((163 - 13 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Silver Grade Plus 2]
type = modifyexplod
trigger1 = numexplod(65)
postype = left
pos = ceil((163 - 13 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 65

[state 6610, Silver Grade Plus 3]
type = explod
trigger1 = var(47) = 80
trigger1 = floor(var(5) / 60.0) = 9
trigger1 = cond((var(5) / 60.0) - floor(var(5) / 60.0) < 0.72, 0, 1)
anim = 6701
ID = 66
postype = left
pos = ceil((163 - 26 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 2.0 * fvar(38), 2.0 * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1
[state 6610, Modify Silver Grade Plus 3]
type = modifyexplod
trigger1 = numexplod(66)
postype = left
pos = ceil((163 - 26 * (2.0 - fvar(9))) * fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 136 * fvar(39))
scale = (2.0 - fvar(9)) * fvar(38), (2.0 - fvar(9)) * fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)
ID = 66

;========================< Finish Grade Screen >========================

[state 6610, Transition 2]
type = explod
trigger1 = var(47) = 928
anim = 6612
ID = 67
postype = left
pos = ceil(160 * fvar(36)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 120 * fvar(39))
bindtime = -1
facing = 1
ownpal = 0
scale = 1.0 * fvar(36), 1.0 * fvar(39)* (1.3333333333333333333333333333333 * gameheight / gamewidth)
ontop = 1
sprpriority = 65536
pausemovetime = -1
supermovetime = -1

;========================< Sounds and Special Effects >========================

[state 6610, Special Effect]
type = assertspecial
trigger1 = var(47) < 944
flag = roundnotover

[state 6610, Special Effect]
type = assertspecial
trigger1 = 1
flag = nobardisplay

[state 6610, Special Effect]
type = assertspecial
trigger1 = time > 80
flag = nomusic

[state 6610, Opaque]
type = envcolor
trigger1 = time > 96
value = 4, 2, 4
time = 1

[state 6610, Stop All Sounds]
type = stopsnd
trigger1 = var(47)
channel = -1
persistent = 0

[state 6610, Play Grade Screen Music]
type = playsnd
trigger1 = var(47)
value = 6610, 0
volumescale = 100
channel = 0
loop = 1
persistent = 0

;========================< Reset Grade Screen System >========================

[state 6610, Stop Sound]
type = stopsnd
trigger1 = time >= 2147483647
channel = 0

[state 6610, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 6610, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; SF3 Win Quote
;=========================================================================
[Statedef 6615]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;========================< Essential State Controllers >========================

[state 6615, Destroy Explod]
type = removeexplod
trigger1 = !numhelper(6610)

[state 6615, Destroy Helper]
type = destroyself
trigger1 = !numhelper(6610)

[state 6615, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6615, Parent Bind]
type = bindtoroot
trigger1 = 1
pos = 64, -8

;========================< Configure Win Quote >========================

[state 6615, Randomize Win Quote]
type = varset
trigger1 = !time
sysvar(0) = 1 + random % 8

; 1 - 26  = Lowercase Letters
; 31 - 56 = Uppercase Letters
; 61 - 70 = Numbers

; 71 = space
; 72 = Period
; 73 = Comma
; 74 = Apostrophe
; 75 = Question Mark
; 76 = Exclamation Point
; 77 = Hyphen

[state 6615, Characters of Win Quote String]
type = null

;========================< Win Quote 1 >========================
; How can you refuse to bow
; to a superior being?
trigger1 = sysvar(0) = 1
; Line 1
trigger1 = var(00) := 38 || var(01) := 15 || var(02) := 23 || var(03) := 71 || var(04) := 03 || var(05) := 01 || 1
trigger1 = var(06) := 14 || var(07) := 71 || var(08) := 25 || var(09) := 15 || var(10) := 21 || var(11) := 71 || 1
trigger1 = var(12) := 18 || var(13) := 05 || var(14) := 06 || var(15) := 21 || var(16) := 19 || var(17) := 05 || 1
trigger1 = var(18) := 71 || var(19) := 20 || var(20) := 15 || var(21) := 71 || var(22) := 02 || var(23) := 15 || 1
trigger1 = var(24) := 23 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
trigger1 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger1 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger1 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger1 = var(48) := 00 || 1
; Line 2
trigger1 = var(49) := 20 || var(50) := 15 || var(51) := 71 || var(52) := 01 || var(53) := 71 ||  var(54) := 19 || 1
trigger1 = var(55) := 21 || var(56) := 16 || var(57) := 05 || var(58) := 18 || var(59) := 09 || 1
trigger1 = fvar(00) := 15 || fvar(01) := 18 || fvar(02) := 71 || fvar(03) := 02 || fvar(04) := 05 || fvar(05) := 09 || 1
trigger1 = fvar(06) := 14 || fvar(07) := 07 || fvar(08) := 75 || fvar(09) := 00 || fvar(10) := 00 || fvar(11) := 00 || 1
trigger1 = fvar(12) := 00 || fvar(13) := 00 || fvar(14) := 00 || fvar(15) := 00 || fvar(16) := 00 || fvar(17) := 00 || 1
trigger1 = fvar(18) := 00 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger1 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger1 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1
trigger1 = fvar(36) := 00 || fvar(37) := 00

;========================< Win Quote 2 >========================
; How dost thou suck? Let me
; count thy wounds! 1,2,3...
trigger2 = sysvar(0) = 2
; Line 1
trigger2 = var(00) := 38 || var(01) := 15 || var(02) := 23 || var(03) := 71 || var(04) := 04 || var(05) := 15 || 1
trigger2 = var(06) := 19 || var(07) := 20 || var(08) := 71 || var(09) := 20 || var(10) := 08 || var(11) := 15 || 1
trigger2 = var(12) := 21 || var(13) := 71 || var(14) := 19 || var(15) := 21 || var(16) := 03 || var(17) := 11 || 1
trigger2 = var(18) := 75 || var(19) := 71 || var(20) := 42 || var(21) := 05 || var(22) := 20 || var(23) := 71 || 1
trigger2 = var(24) := 13 || var(25) := 05 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
trigger2 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger2 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger2 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger2 = var(48) := 00 || 1
; Line 2
trigger2 = var(49) := 03 || var(50) := 15 || var(51) := 21 || var(52) := 14 || var(53) := 20 ||  var(54) := 71 || 1
trigger2 = var(55) := 20 || var(56) := 08 || var(57) := 25 || var(58) := 71 || var(59) := 23 || 1
trigger2 = fvar(00) := 15 || fvar(01) := 21 || fvar(02) := 14 || fvar(03) := 04 || fvar(04) := 19 || fvar(05) := 76 || 1
trigger2 = fvar(06) := 71 || fvar(07) := 62 || fvar(08) := 73 || fvar(09) := 71 || fvar(10) := 63 || fvar(11) := 73 || 1
trigger2 = fvar(12) := 71 || fvar(13) := 64 || fvar(14) := 72 || fvar(15) := 72 || fvar(16) := 72 || fvar(17) := 00 || 1
trigger2 = fvar(18) := 00 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger2 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger2 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

;========================< Win Quote 3 >========================
; Look! Your cells have
; betrayed you to serve me!
trigger3 = sysvar(0) = 3
; Line 1
trigger3 = var(00) := 42 || var(01) := 15 || var(02) := 15 || var(03) := 11 || var(04) := 76 || var(05) := 71 || 1
trigger3 = var(06) := 55 || var(07) := 15 || var(08) := 21 || var(09) := 18 || var(10) := 71 || var(11) := 03 || 1
trigger3 = var(12) := 05 || var(13) := 12 || var(14) := 12 || var(15) := 19 || var(16) := 71 || var(17) := 08 || 1
trigger3 = var(18) := 01 || var(19) := 22 || var(20) := 05 || var(21) := 00 || var(22) := 00 || var(23) := 00 || 1
trigger3 = var(24) := 00 || var(25) := 00 || var(26) := 00 || var(27) := 00 || var(28) := 00 || var(29) := 00 || 1
trigger3 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger3 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger3 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger3 = var(48) := 00 || 1
; Line 2
trigger3 = var(49) := 02 || var(50) := 05 || var(51) := 20 || var(52) := 18 || var(53) := 01 ||  var(54) := 25 || 1
trigger3 = var(55) := 05 || var(56) := 04 || var(57) := 71 || var(58) := 25 || var(59) := 15 || 1
trigger3 = fvar(00) := 21 || fvar(01) := 71 || fvar(02) := 20 || fvar(03) := 15 || fvar(04) := 71 || fvar(05) := 19 || 1
trigger3 = fvar(06) := 05 || fvar(07) := 18 || fvar(08) := 22 || fvar(09) := 05 || fvar(10) := 71 || fvar(11) := 13 || 1
trigger3 = fvar(12) := 05 || fvar(13) := 76 || fvar(14) := 00 || fvar(15) := 00 || fvar(16) := 00 || fvar(17) := 00 || 1
trigger3 = fvar(18) := 00 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger3 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger3 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

;========================< Win Quote 4 >========================
; Pounding on you is satisfying,
; but I need something more...
trigger4 = sysvar(0) = 4
; Line 1
trigger4 = var(00) := 46 || var(01) := 15 || var(02) := 21 || var(03) := 14 || var(04) := 04 || var(05) := 09 || 1
trigger4 = var(06) := 14 || var(07) := 07 || var(08) := 71 || var(09) := 15 || var(10) := 14 || var(11) := 71 || 1
trigger4 = var(12) := 25 || var(13) := 15 || var(14) := 21 || var(15) := 71 || var(16) := 09 || var(17) := 19 || 1
trigger4 = var(18) := 71 || var(19) := 19 || var(20) := 01 || var(21) := 20 || var(22) := 09 || var(23) := 19 || 1
trigger4 = var(24) := 06 || var(25) := 25 || var(26) := 09 || var(27) := 14 || var(28) := 07 || var(29) := 73 || 1
trigger4 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger4 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger4 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger4 = var(48) := 00 || 1
; Line 2
trigger4 = var(49) := 02 || var(50) := 21 || var(51) := 20 || var(52) := 71 || var(53) := 39 ||  var(54) := 71 || 1
trigger4 = var(55) := 14 || var(56) := 05 || var(57) := 05 || var(58) := 04 || var(59) := 71 || 1
trigger4 = fvar(00) := 19 || fvar(01) := 15 || fvar(02) := 13 || fvar(03) := 05 || fvar(04) := 20 || fvar(05) := 08 || 1
trigger4 = fvar(06) := 09 || fvar(07) := 14 || fvar(08) := 07 || fvar(09) := 71 || fvar(10) := 13 || fvar(11) := 15 || 1
trigger4 = fvar(12) := 18 || fvar(13) := 05 || fvar(14) := 72 || fvar(15) := 72 || fvar(16) := 72 || fvar(17) := 00 || 1
trigger4 = fvar(18) := 00 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger4 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger4 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

;========================< Win Quote 5 >========================
; Your inferior vital fluids are
; tainting the ground! Clean it up!
trigger5 = sysvar(0) = 5
; Line 1
trigger5 = var(00) := 55 || var(01) := 15 || var(02) := 21 || var(03) := 18 || var(04) := 71 || var(05) := 09 || 1
trigger5 = var(06) := 14 || var(07) := 06 || var(08) := 05 || var(09) := 18 || var(10) := 09 || var(11) := 15 || 1
trigger5 = var(12) := 18 || var(13) := 71 || var(14) := 22 || var(15) := 09 || var(16) := 20 || var(17) := 01 || 1
trigger5 = var(18) := 12 || var(19) := 71 || var(20) := 06 || var(21) := 12 || var(22) := 21 || var(23) := 09 || 1
trigger5 = var(24) := 04 || var(25) := 19 || var(26) := 71 || var(27) := 01 || var(28) := 18 || var(29) := 05 || 1
trigger5 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger5 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger5 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger5 = var(48) := 00 || 1
; Line 2
trigger5 = var(49) := 20 || var(50) := 01 || var(51) := 09 || var(52) := 14 || var(53) := 20 ||  var(54) := 09 || 1
trigger5 = var(55) := 14 || var(56) := 07 || var(57) := 71 || var(58) := 20 || var(59) := 08 || 1
trigger5 = fvar(00) := 05 || fvar(01) := 71 || fvar(02) := 07 || fvar(03) := 18 || fvar(04) := 15 || fvar(05) := 21 || 1
trigger5 = fvar(06) := 14 || fvar(07) := 04 || fvar(08) := 76 || fvar(09) := 71 || fvar(10) := 33 || fvar(11) := 12 || 1
trigger5 = fvar(12) := 05 || fvar(13) := 01 || fvar(14) := 14 || fvar(15) := 71 || fvar(16) := 09 || fvar(17) := 20 || 1
trigger5 = fvar(18) := 71 || fvar(19) := 21 || fvar(20) := 16 || fvar(21) := 76 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger5 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger5 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

;========================< Win Quote 6 >========================
; Lie there as long as you want.
; I've had my fun with you.
trigger6 = sysvar(0) = 6
; Line 1
trigger6 = var(00) := 42 || var(01) := 09 || var(02) := 05 || var(03) := 71 || var(04) := 20 || var(05) := 08 || 1
trigger6 = var(06) := 05 || var(07) := 18 || var(08) := 05 || var(09) := 71 || var(10) := 01 || var(11) := 19 || 1
trigger6 = var(12) := 71 || var(13) := 12 || var(14) := 15 || var(15) := 14 || var(16) := 07 || var(17) := 71 || 1
trigger6 = var(18) := 01 || var(19) := 19 || var(20) := 71 || var(21) := 25 || var(22) := 15 || var(23) := 21 || 1
trigger6 = var(24) := 71 || var(25) := 23 || var(26) := 01 || var(27) := 14 || var(28) := 20 || var(29) := 72 || 1
trigger6 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger6 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger6 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger6 = var(48) := 00 || 1
; Line 2
trigger6 = var(49) := 39 || var(50) := 74 || var(51) := 22 || var(52) := 05 || var(53) := 71 ||  var(54) := 08 || 1
trigger6 = var(55) := 01 || var(56) := 04 || var(57) := 71 || var(58) := 13 || var(59) := 25 || 1
trigger6 = fvar(00) := 71 || fvar(01) := 06 || fvar(02) := 21 || fvar(03) := 14 || fvar(04) := 71 || fvar(05) := 23 || 1
trigger6 = fvar(06) := 09 || fvar(07) := 20 || fvar(08) := 08 || fvar(09) := 71 || fvar(10) := 25 || fvar(11) := 15 || 1
trigger6 = fvar(12) := 21 || fvar(13) := 72 || fvar(14) := 00 || fvar(15) := 00 || fvar(16) := 00 || fvar(17) := 00 || 1
trigger6 = fvar(18) := 00 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger6 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger6 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

;========================< Win Quote 7 >========================
; That's right... kneel before me!
; How do you like the view now?!
trigger7 = sysvar(0) = 7
; Line 1
trigger7 = var(00) := 50 || var(01) := 08 || var(02) := 01 || var(03) := 20 || var(04) := 74 || var(05) := 19 || 1
trigger7 = var(06) := 71 || var(07) := 18 || var(08) := 09 || var(09) := 07 || var(10) := 08 || var(11) := 20 || 1
trigger7 = var(12) := 72 || var(13) := 72 || var(14) := 72 || var(15) := 71 || var(16) := 41 || var(17) := 14 || 1
trigger7 = var(18) := 05 || var(19) := 05 || var(20) := 12 || var(21) := 71 || var(22) := 02 || var(23) := 05 || 1
trigger7 = var(24) := 06 || var(25) := 15 || var(26) := 18 || var(27) := 05 || var(28) := 71 || var(29) := 13 || 1
trigger7 = var(30) := 05 || var(31) := 76 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger7 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger7 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger7 = var(48) := 00 || 1
; Line 2
trigger7 = var(49) := 38 || var(50) := 15 || var(51) := 23 || var(52) := 71 || var(53) := 04 ||  var(54) := 15 || 1
trigger7 = var(55) := 71 || var(56) := 25 || var(57) := 15 || var(58) := 21 || var(59) := 71 || 1
trigger7 = fvar(00) := 12 || fvar(01) := 09 || fvar(02) := 11 || fvar(03) := 05 || fvar(04) := 71 || fvar(05) := 20 || 1
trigger7 = fvar(06) := 08 || fvar(07) := 05 || fvar(08) := 71 || fvar(09) := 22 || fvar(10) := 09 || fvar(11) := 05 || 1
trigger7 = fvar(12) := 23 || fvar(13) := 71 || fvar(14) := 14 || fvar(15) := 15 || fvar(16) := 23 || fvar(17) := 75 || 1
trigger7 = fvar(18) := 76 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger7 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger7 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

;========================< Win Quote 8 >========================
; You are not even worthy enough
; to do my bidding! Be gone!
trigger8 = sysvar(0) = 8
; Line 1
trigger8 = var(00) := 55 || var(01) := 15 || var(02) := 21 || var(03) := 71 || var(04) := 01 || var(05) := 18 || 1
trigger8 = var(06) := 05 || var(07) := 71 || var(08) := 14 || var(09) := 15 || var(10) := 20 || var(11) := 71 || 1
trigger8 = var(12) := 05 || var(13) := 22 || var(14) := 05 || var(15) := 14 || var(16) := 71 || var(17) := 23 || 1
trigger8 = var(18) := 15 || var(19) := 18 || var(20) := 20 || var(21) := 08 || var(22) := 25 || var(23) := 71 || 1
trigger8 = var(24) := 05 || var(25) := 14 || var(26) := 15 || var(27) := 21 || var(28) := 07 || var(29) := 08 || 1
trigger8 = var(30) := 00 || var(31) := 00 || var(32) := 00 || var(33) := 00 || var(34) := 00 || var(35) := 00 || 1
trigger8 = var(36) := 00 || var(37) := 00 || var(38) := 00 || var(39) := 00 || var(40) := 00 || var(41) := 00 || 1
trigger8 = var(42) := 00 || var(43) := 00 || var(44) := 00 || var(45) := 00 || var(46) := 00 || var(47) := 00 || 1
trigger8 = var(48) := 00 || 1
; Line 2
trigger8 = var(49) := 20 || var(50) := 15 || var(51) := 71 || var(52) := 04 || var(53) := 15 ||  var(54) := 71 || 1
trigger8 = var(55) := 13 || var(56) := 25 || var(57) := 71 || var(58) := 02 || var(59) := 09 || 1
trigger8 = fvar(00) := 04 || fvar(01) := 04 || fvar(02) := 09 || fvar(03) := 14 || fvar(04) := 07 || fvar(05) := 76 || 1
trigger8 = fvar(06) := 71 || fvar(07) := 32 || fvar(08) := 05 || fvar(09) := 71 || fvar(10) := 07 || fvar(11) := 15 || 1
trigger8 = fvar(12) := 14 || fvar(13) := 05 || fvar(14) := 76 || fvar(15) := 00 || fvar(16) := 00 || fvar(17) := 00 || 1
trigger8 = fvar(18) := 00 || fvar(19) := 00 || fvar(20) := 00 || fvar(21) := 00 || fvar(22) := 00 || fvar(23) := 00 || 1
trigger8 = fvar(24) := 00 || fvar(25) := 00 || fvar(26) := 00 || fvar(27) := 00 || fvar(28) := 00 || fvar(29) := 00 || 1
trigger8 = fvar(30) := 00 || fvar(31) := 00 || fvar(32) := 00 || fvar(33) := 00 || fvar(34) := 00 || fvar(35) := 00 || 1

[state 6615, Length of Win Quote String]
type = null
trigger1 = fvar(38) := 0 || 1
trigger1 = fvar(38) := fvar(38) + (var(00) != 0) + (var(01) != 0) + (var(02) != 0) + (var(03) != 0) + (var(04) != 0) + (var(05) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(06) != 0) + (var(07) != 0) + (var(08) != 0) + (var(09) != 0) + (var(10) != 0) + (var(11) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(12) != 0) + (var(13) != 0) + (var(14) != 0) + (var(15) != 0) + (var(16) != 0) + (var(17) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(18) != 0) + (var(19) != 0) + (var(20) != 0) + (var(21) != 0) + (var(22) != 0) + (var(23) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(24) != 0) + (var(25) != 0) + (var(26) != 0) + (var(27) != 0) + (var(28) != 0) + (var(29) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(30) != 0) + (var(31) != 0) + (var(32) != 0) + (var(33) != 0) + (var(34) != 0) + (var(35) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(36) != 0) + (var(37) != 0) + (var(38) != 0) + (var(39) != 0) + (var(40) != 0) + (var(41) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(42) != 0) + (var(43) != 0) + (var(44) != 0) + (var(45) != 0) + (var(46) != 0) + (var(47) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(48) != 0) + (var(49) != 0) + (var(50) != 0) + (var(52) != 0) + (var(52) != 0) + (var(53) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (var(54) != 0) + (var(55) != 0) + (var(56) != 0) + (var(57) != 0) + (var(58) != 0) + (var(59) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(00) != 0) + (fvar(01) != 0) + (fvar(02) != 0) + (fvar(03) != 0) + (fvar(04) != 0) + (fvar(05) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(06) != 0) + (fvar(07) != 0) + (fvar(08) != 0) + (fvar(09) != 0) + (fvar(10) != 0) + (fvar(11) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(12) != 0) + (fvar(13) != 0) + (fvar(14) != 0) + (fvar(15) != 0) + (fvar(16) != 0) + (fvar(17) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(18) != 0) + (fvar(19) != 0) + (fvar(20) != 0) + (fvar(21) != 0) + (fvar(22) != 0) + (fvar(23) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(24) != 0) + (fvar(25) != 0) + (fvar(26) != 0) + (fvar(27) != 0) + (fvar(28) != 0) + (fvar(29) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(30) != 0) + (fvar(31) != 0) + (fvar(32) != 0) + (fvar(33) != 0) + (fvar(34) != 0) + (fvar(35) != 0) || 1
trigger1 = fvar(38) := fvar(38) + (fvar(36) != 0) + (fvar(37) != 0)
trigger1 = fvar(38) := fvar(38) * (fvar(39) := 8.0) || 1 ; fvar(39) is the spacing between characters

;========================< Display Win Quote on Screen >========================

[state 6615, Modify Win Quote]
type = removeexplod
trigger1 = sysfvar(0) < 256.0
trigger2 = numexplod < (fvar(38) / fvar(39))

[state 6615, Modify Win Quote]
type = varadd
trigger1 = sysfvar(0) < 256.0
sysfvar(0) = 12.8

[state 6615, Line 1 Character 0]
type = explod
trigger1 = var(0) && !numexplod(0)
trigger1 = numhelper(6610)
anim = 6705 + var(0) - 1
ID = 0
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 1]
type = explod
trigger1 = var(1) && !numexplod(1)
trigger1 = numhelper(6610)
anim = 6705 + var(1) - 1
ID = 1
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 2]
type = explod
trigger1 = var(2) && !numexplod(2)
trigger1 = numhelper(6610)
anim = 6705 + var(2) - 1
ID = 2
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 3]
type = explod
trigger1 = var(3) && !numexplod(3)
trigger1 = numhelper(6610)
anim = 6705 + var(3) - 1
ID = 3
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 4]
type = explod
trigger1 = var(4) && !numexplod(4)
trigger1 = numhelper(6610)
anim = 6705 + var(4) - 1
ID = 4
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 5]
type = explod
trigger1 = var(5) && !numexplod(5)
trigger1 = numhelper(6610)
anim = 6705 + var(5) - 1
ID = 5
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 6]
type = explod
trigger1 = var(6) && !numexplod(6)
trigger1 = numhelper(6610)
anim = 6705 + var(6) - 1
ID = 6
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 7]
type = explod
trigger1 = var(7) && !numexplod(7)
trigger1 = numhelper(6610)
anim = 6705 + var(7) - 1
ID = 7
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 8]
type = explod
trigger1 = var(8) && !numexplod(8)
trigger1 = numhelper(6610)
anim = 6705 + var(8) - 1
ID = 8
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 9]
type = explod
trigger1 = var(9) && !numexplod(9)
trigger1 = numhelper(6610)
anim = 6705 + var(9) - 1
ID = 9
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 10]
type = explod
trigger1 = var(10) && !numexplod(10)
trigger1 = numhelper(6610)
anim = 6705 + var(10) - 1
ID = 10
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 11]
type = explod
trigger1 = var(11) && !numexplod(11)
trigger1 = numhelper(6610)
anim = 6705 + var(11) - 1
ID = 11
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 12]
type = explod
trigger1 = var(12) && !numexplod(12)
trigger1 = numhelper(6610)
anim = 6705 + var(12) - 1
ID = 12
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 13]
type = explod
trigger1 = var(13) && !numexplod(13)
trigger1 = numhelper(6610)
anim = 6705 + var(13) - 1
ID = 13
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 14]
type = explod
trigger1 = var(14) && !numexplod(14)
trigger1 = numhelper(6610)
anim = 6705 + var(14) - 1
ID = 14
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 15]
type = explod
trigger1 = var(15) && !numexplod(15)
trigger1 = numhelper(6610)
anim = 6705 + var(15) - 1
ID = 15
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 16]
type = explod
trigger1 = var(16) && !numexplod(16)
trigger1 = numhelper(6610)
anim = 6705 + var(16) - 1
ID = 16
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 17]
type = explod
trigger1 = var(17) && !numexplod(17)
trigger1 = numhelper(6610)
anim = 6705 + var(17) - 1
ID = 17
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 18]
type = explod
trigger1 = var(18) && !numexplod(18)
trigger1 = numhelper(6610)
anim = 6705 + var(18) - 1
ID = 18
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 19]
type = explod
trigger1 = var(19) && !numexplod(19)
trigger1 = numhelper(6610)
anim = 6705 + var(19) - 1
ID = 19
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 20]
type = explod
trigger1 = var(20) && !numexplod(20)
trigger1 = numhelper(6610)
anim = 6705 + var(20) - 1
ID = 20
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 21]
type = explod
trigger1 = var(21) && !numexplod(21)
trigger1 = numhelper(6610)
anim = 6705 + var(21) - 1
ID = 21
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 22]
type = explod
trigger1 = var(22) && !numexplod(22)
trigger1 = numhelper(6610)
anim = 6705 + var(22) - 1
ID = 22
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 23]
type = explod
trigger1 = var(23) && !numexplod(23)
trigger1 = numhelper(6610)
anim = 6705 + var(23) - 1
ID = 23
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 24]
type = explod
trigger1 = var(24) && !numexplod(24)
trigger1 = numhelper(6610)
anim = 6705 + var(24) - 1
ID = 24
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 25]
type = explod
trigger1 = var(25) && !numexplod(25)
trigger1 = numhelper(6610)
anim = 6705 + var(25) - 1
ID = 25
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 26]
type = explod
trigger1 = var(26) && !numexplod(26)
trigger1 = numhelper(6610)
anim = 6705 + var(26) - 1
ID = 26
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 27]
type = explod
trigger1 = var(27) && !numexplod(27)
trigger1 = numhelper(6610)
anim = 6705 + var(27) - 1
ID = 27
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 28]
type = explod
trigger1 = var(28) && !numexplod(28)
trigger1 = numhelper(6610)
anim = 6705 + var(28) - 1
ID = 28
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 29]
type = explod
trigger1 = var(29) && !numexplod(29)
trigger1 = numhelper(6610)
anim = 6705 + var(29) - 1
ID = 29
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 30]
type = explod
trigger1 = var(30) && !numexplod(30)
trigger1 = numhelper(6610)
anim = 6705 + var(30) - 1
ID = 30
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 31]
type = explod
trigger1 = var(31) && !numexplod(31)
trigger1 = numhelper(6610)
anim = 6705 + var(31) - 1
ID = 31
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 32]
type = explod
trigger1 = var(32) && !numexplod(32)
trigger1 = numhelper(6610)
anim = 6705 + var(32) - 1
ID = 32
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 33]
type = explod
trigger1 = var(33) && !numexplod(33)
trigger1 = numhelper(6610)
anim = 6705 + var(33) - 1
ID = 33
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 34]
type = explod
trigger1 = var(34) && !numexplod(34)
trigger1 = numhelper(6610)
anim = 6705 + var(34) - 1
ID = 34
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 35]
type = explod
trigger1 = var(35) && !numexplod(35)
trigger1 = numhelper(6610)
anim = 6705 + var(35) - 1
ID = 35
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 36]
type = explod
trigger1 = var(36) && !numexplod(36)
trigger1 = numhelper(6610)
anim = 6705 + var(36) - 1
ID = 36
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 37]
type = explod
trigger1 = var(37) && !numexplod(37)
trigger1 = numhelper(6610)
anim = 6705 + var(37) - 1
ID = 37
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 38]
type = explod
trigger1 = var(38) && !numexplod(38)
trigger1 = numhelper(6610)
anim = 6705 + var(38) - 1
ID = 38
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 39]
type = explod
trigger1 = var(39) && !numexplod(39)
trigger1 = numhelper(6610)
anim = 6705 + var(39) - 1
ID = 39
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 40]
type = explod
trigger1 = var(40) && !numexplod(40)
trigger1 = numhelper(6610)
anim = 6705 + var(40) - 1
ID = 40
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 41]
type = explod
trigger1 = var(41) && !numexplod(41)
trigger1 = numhelper(6610)
anim = 6705 + var(41) - 1
ID = 41
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 42]
type = explod
trigger1 = var(42) && !numexplod(42)
trigger1 = numhelper(6610)
anim = 6705 + var(42) - 1
ID = 42
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 43]
type = explod
trigger1 = var(43) && !numexplod(43)
trigger1 = numhelper(6610)
anim = 6705 + var(43) - 1
ID = 43
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 44]
type = explod
trigger1 = var(44) && !numexplod(44)
trigger1 = numhelper(6610)
anim = 6705 + var(44) - 1
ID = 44
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 45]
type = explod
trigger1 = var(45) && !numexplod(45)
trigger1 = numhelper(6610)
anim = 6705 + var(45) - 1
ID = 45
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 46]
type = explod
trigger1 = var(46) && !numexplod(46)
trigger1 = numhelper(6610)
anim = 6705 + var(46) - 1
ID = 46
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 47]
type = explod
trigger1 = var(47) && !numexplod(47)
trigger1 = numhelper(6610)
anim = 6705 + var(47) - 1
ID = 47
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6615, Line 1 Character 48]
type = explod
trigger1 = var(48) && !numexplod(48)
trigger1 = numhelper(6610)
anim = 6705 + var(48) - 1
ID = 48
postype = left
pos = ceil((320 + fvar(39) * numexplod - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 197 * helper(6610),fvar(39))

[state 6550, Line 1 Characters]
type = varset
trigger1 = numexplod
sysvar(1) = numexplod
persistent = 0

[state 6615, Line 2 Character 49]
type = explod
trigger1 = var(49) && !numexplod(49)
trigger1 = numhelper(6610)
anim = 6705 + var(49) - 1
ID = 49
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 50]
type = explod
trigger1 = var(50) && !numexplod(50)
trigger1 = numhelper(6610)
anim = 6705 + var(50) - 1
ID = 50
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 51]
type = explod
trigger1 = var(51) && !numexplod(51)
trigger1 = numhelper(6610)
anim = 6705 + var(51) - 1
ID = 51
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 52]
type = explod
trigger1 = var(52) && !numexplod(52)
trigger1 = numhelper(6610)
anim = 6705 + var(52) - 1
ID = 52
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 53]
type = explod
trigger1 = var(53) && !numexplod(53)
trigger1 = numhelper(6610)
anim = 6705 + var(53) - 1
ID = 53
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 54]
type = explod
trigger1 = var(54) && !numexplod(54)
trigger1 = numhelper(6610)
anim = 6705 + var(54) - 1
ID = 54
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 55]
type = explod
trigger1 = var(55) && !numexplod(55)
trigger1 = numhelper(6610)
anim = 6705 + var(55) - 1
ID = 55
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 56]
type = explod
trigger1 = var(56) && !numexplod(56)
trigger1 = numhelper(6610)
anim = 6705 + var(56) - 1
ID = 56
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 57]
type = explod
trigger1 = var(57) && !numexplod(57)
trigger1 = numhelper(6610)
anim = 6705 + var(57) - 1
ID = 57
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 58]
type = explod
trigger1 = var(58) && !numexplod(58)
trigger1 = numhelper(6610)
anim = 6705 + var(58) - 1
ID = 58
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 59]
type = explod
trigger1 = var(59) && !numexplod(59)
trigger1 = numhelper(6610)
anim = 6705 + var(59) - 1
ID = 59
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 60]
type = explod
trigger1 = fvar(0) && !numexplod(60)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(0) - 1)
ID = 60
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 61]
type = explod
trigger1 = fvar(1) && !numexplod(61)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(1) - 1)
ID = 61
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 62]
type = explod
trigger1 = fvar(2) && !numexplod(62)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(2) - 1)
ID = 62
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 63]
type = explod
trigger1 = fvar(3) && !numexplod(63)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(3) - 1)
ID = 63
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 64]
type = explod
trigger1 = fvar(4) && !numexplod(64)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(4) - 1)
ID = 64
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 65]
type = explod
trigger1 = fvar(5) && !numexplod(65)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(5) - 1)
ID = 65
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 66]
type = explod
trigger1 = fvar(6) && !numexplod(66)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(6) - 1)
ID = 66
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 67]
type = explod
trigger1 = fvar(7) && !numexplod(67)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(7) - 1)
ID = 67
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 68]
type = explod
trigger1 = fvar(8) && !numexplod(68)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(8) - 1)
ID = 68
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 69]
type = explod
trigger1 = fvar(9) && !numexplod(69)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(9) - 1)
ID = 69
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 70]
type = explod
trigger1 = fvar(10) && !numexplod(70)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(10) - 1)
ID = 70
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 71]
type = explod
trigger1 = fvar(11) && !numexplod(71)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(11) - 1)
ID = 71
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 72]
type = explod
trigger1 = fvar(12) && !numexplod(72)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(12) - 1)
ID = 72
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 73]
type = explod
trigger1 = fvar(13) && !numexplod(73)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(13) - 1)
ID = 73
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 74]
type = explod
trigger1 = fvar(14) && !numexplod(74)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(14) - 1)
ID = 74
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 75]
type = explod
trigger1 = fvar(15) && !numexplod(75)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(15) - 1)
ID = 75
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 76]
type = explod
trigger1 = fvar(16) && !numexplod(76)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(16) - 1)
ID = 76
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 77]
type = explod
trigger1 = fvar(17) && !numexplod(77)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(17) - 1)
ID = 77
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 78]
type = explod
trigger1 = fvar(18) && !numexplod(78)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(18) - 1)
ID = 78
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 79]
type = explod
trigger1 = fvar(19) && !numexplod(79)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(19) - 1)
ID = 79
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 80]
type = explod
trigger1 = fvar(20) && !numexplod(80)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(20) - 1)
ID = 80
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 81]
type = explod
trigger1 = fvar(21) && !numexplod(81)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(21) - 1)
ID = 81
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 82]
type = explod
trigger1 = fvar(22) && !numexplod(82)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(22) - 1)
ID = 82
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 83]
type = explod
trigger1 = fvar(23) && !numexplod(83)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(23) - 1)
ID = 83
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 84]
type = explod
trigger1 = fvar(24) && !numexplod(84)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(24) - 1)
ID = 84
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 85]
type = explod
trigger1 = fvar(25) && !numexplod(85)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(25) - 1)
ID = 85
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 86]
type = explod
trigger1 = fvar(26) && !numexplod(86)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(26) - 1)
ID = 86
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 87]
type = explod
trigger1 = fvar(27) && !numexplod(87)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(27) - 1)
ID = 87
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 88]
type = explod
trigger1 = fvar(28) && !numexplod(88)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(28) - 1)
ID = 88
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 89]
type = explod
trigger1 = fvar(29) && !numexplod(89)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(29) - 1)
ID = 89
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 90]
type = explod
trigger1 = fvar(30) && !numexplod(90)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(30) - 1)
ID = 90
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 91]
type = explod
trigger1 = fvar(31) && !numexplod(91)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(31) - 1)
ID = 91
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 92]
type = explod
trigger1 = fvar(32) && !numexplod(92)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(32) - 1)
ID = 92
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 93]
type = explod
trigger1 = fvar(33) && !numexplod(93)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(33) - 1)
ID = 93
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 94]
type = explod
trigger1 = fvar(34) && !numexplod(94)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(34) - 1)
ID = 94
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 95]
type = explod
trigger1 = fvar(35) && !numexplod(95)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(35) - 1)
ID = 95
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 96]
type = explod
trigger1 = fvar(36) && !numexplod(96)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(36) - 1)
ID = 96
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Line 2 Character 97]
type = explod
trigger1 = fvar(37) && !numexplod(97)
trigger1 = numhelper(6610)
anim = ceil(6705 + fvar(37) - 1)
ID = 97
postype = left
pos = ceil((320 + fvar(39) * (numexplod - sysvar(1)) - sysfvar(0)) * helper(6610),fvar(38)), ceil((1.3333333333333333333333333333333 * gameheight / gamewidth) * 215 * helper(6610),fvar(39))

[state 6615, Modify Win Quote]
type = modifyexplod
trigger1 = numexplod
trigger1 = numhelper(6610)
bindtime = -1
facing = 1
ownpal = 0
ontop = 1
sprpriority = 65539
pausemovetime = -1
supermovetime = -1
scale = 1.0 * helper(6610),fvar(38), 1.0 * helper(6610),fvar(39) * (1.3333333333333333333333333333333 * gameheight / gamewidth)

;========================< Reset Message System >========================

[state 6615, Destroy Explod]
type = removeexplod
trigger1 = !numhelper(6610)

[state 6615, Destroy Helper]
type = destroyself
trigger1 = !numhelper(6610)

;=========================================================================
; RJB Jump Dust
;=========================================================================
[Statedef 7000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 7000, Change Animation]
type = changeanim
trigger1 = anim != 7000
value = 7000

[state 7000, Angle]
type = null ; varset
trigger1 = time <= 1 && parentdist x
fvar(0) = atan((parentdist y + 56) / parentdist x) * (180.0 / pi)

[state 7000, Angle]
type = angledraw
trigger1 = 1
value = fvar(0)
scale = 0.125 + 0.046875 * time, 0.125 + 0.01171875 * time

[state 7000, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 22 * time, 256

[state 7000, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 7005
postype = left
pos = ceil(parent,screenpos x), ceil(parent,screenpos y)
random = 16, 8
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = 0.0, -1.171875
ownpal = 0
scale = 0.1, 0.1
sprpriority = 4

[state 7000, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.05 + 0.00390625 * time, 0.05 + 0.00390625 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 7000, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.05 + 0.00390625 * (time - 3), 0.05 + 0.00390625 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 7000, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.05 + 0.00390625 * (time - 6), 0.05 + 0.00390625 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 7000, Destroy]
type = removeexplod
trigger1 = time > 22

[state 7000, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; RJB Dust
;=========================================================================
[Statedef 7001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 7001, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7001, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 7001, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7001, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 7005
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
random = 16, 8
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = 0.0, -1.171875
ownpal = 0
scale = 0.1, 0.1
sprpriority = cond(random < 496, 4, -4)

[state 7001, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.1 + 0.00390625 * time, 0.1 + 0.00390625 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 7001, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.1 + 0.00390625 * (time - 3), 0.1 + 0.00390625 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 7001, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.1 + 0.00390625 * (time - 6), 0.1 + 0.00390625 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 7001, Destroy]
type = removeexplod
trigger1 = time > 22

[state 7001, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; RJB Spreading Dust
;=========================================================================
[Statedef 7010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 7010, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7010, Effect]
type = explod
trigger1 = !time
ID = 7010
anim = 7010
postype = p1
pos = 0, 2
bindtime = 1
ownpal = 1
sprpriority = -5

[state 7010, Modify Effect]
type = modifyexplod
trigger1 = numexplod(7010)
scale = 0.25 + 0.035 * time, 0.05
trans = addalpha
alpha = 256 - 22 * time, 256
ID = 7010

[state 7010, Destroy]
type = removeexplod
trigger1 = time > 12

[state 7010, Destroy]
type = destroyself
trigger1 = time > 12

;=========================================================================
; RJB Dash Dust
;=========================================================================
[Statedef 7015]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 7015, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7015, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 7005
postype = p1
pos = 0, 0
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = -3.125 - ((1 + random % 64) / 64.0), -1.171875 - ((1 + random % 64) / 32.0)
ownpal = 0
scale = 0.15, 0.15
sprpriority = 5

[state 7015, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.15 + 0.009375 * time, 0.15 + 0.009375 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 7015, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.15 + 0.009375 * (time - 3), 0.15 + 0.009375 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 7015, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.15 + 0.009375 * (time - 6), 0.15 + 0.009375 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 7015, Destroy]
type = removeexplod
trigger1 = time > 22

[state 7015, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; RJB Skid Dust
;=========================================================================
[Statedef 7016]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 7016, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7016, Parent Bind]
type = null
trigger1 = !time
trigger1 = fvar(0) := -parentdist x || fvar(1) := -parentdist y

[state 7016, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = fvar(0), fvar(1)

[state 7016, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 7005
postype = p1
pos = 0, 0
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = 2.34375 + ((1 + random % 64) / 64.0), -0.5859375 - ((1 + random % 64) / 32.0)
accel = 0.03125, 0.03125
ownpal = 0
scale = 0.075, 0.075
sprpriority = 5

[state 7016, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.075 + 0.0046875 * time, 0.075 + 0.0046875 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 7016, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.075 + 0.0046875 * (time - 3), 0.075 + 0.0046875 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 7016, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.15 + 0.0046875 * (time - 6), 0.15 + 0.0046875 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 7016, Destroy]
type = removeexplod
trigger1 = time > 22

[state 7016, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; RJB Slam Pressure
;=========================================================================
[Statedef 7065]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7065, Change Animation]
type = changeanim
trigger1 = !time
value = 7065

[state 7065, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7065, Angle]
type = angledraw
trigger1 = 1
scale = 0.5, 0.5

[state 7065, Angle]
type = angledraw
trigger1 = ishelper(6065)
value = 90

[state 7065, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[state 7065, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; RJB Hitspark - Base
;=========================================================================
[Statedef 7100]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; Var(5)'s values:
; 00 - 03 - Misc. Hit || 100 - 103 = Reversed
; 10 - 19 - Normal Hit || 110 - 119 = Reversed
; 20 - 28 - Special Hit || 120 - 128 = Reversed
; 30 - 38 - Super Hit || 130 - 138 = Reversed
; 40 - Circle Hit
; 41 - Pressure Hit
; 42 - Twist Hit
; 43 - 44 - Taunt Hit || 143 - 144 = Reversed
; 45 - Pulse Hit

[state 7100, Spark Angle, Type]
type = null
triggerall = !time
triggerall = var(0) := random % 12 || var(5) := parent,var(5) || 1
trigger1 = (var(5) = [00, 19]) || (var(5) = [100, 119]) || (var(5) = [43, 45]) || (var(5) = [143, 145])
trigger1 = var(5) := 1
trigger2 = (var(5) = [20, 29]) || (var(5) = [100, 129])
trigger2 = var(5) := 2
trigger3 = (var(5) = [30, 49]) || (var(5) = [100, 149])
trigger3 = (var(5) != [43, 45]) && (var(5) != [143, 145])
trigger3 = var(5) := 3

[state 7100, Destroy Helper]
type = destroyself
trigger1 = var(5) < 0

[state 7100, Destroy Helper]
type = destroyself
trigger1 = var(5) < 0

[state 7100, Change Animation]
type = changeanim
trigger1 = !time
value = 7100

[state 7100, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7100, Turn]
type = turn
trigger1 = !time && random < 496

[state 7100, Scale]
type = varset
trigger1 = !time
fvar(0) = (0.125 + 0.025 * var(5)) / 16.0

[state 7100, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(0)
scale = (0.125 + 0.025 * var(5)) - fvar(0) * time, (0.125 + 0.025 * var(5)) - fvar(0) * time

[state 7100, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = explod
trigger1 = !time
anim = 7103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)
ownpal = 0

[state 7100, Particles]
type = modifyexplod
trigger1 = numexplod && !time
ownpal = 0
removetime = 20
scale = 0.125 + 0.025 * var(5), 0.125 + 0.025 * var(5)
sprpriority = 5

[state 7100, Particles]
type = modifyexplod
trigger1 = numexplod
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 7100, Streaks]
type = helper
trigger1 = !time
name = "Streaks"
stateno = 7101
ID = 7101
postype = p1
ownpal = 0
keyctrl = 0

[state 7100, Surface]
type = helper
trigger1 = !time
name = "Surface"
stateno = 7102
ID = 7102
postype = p1
ownpal = 0
keyctrl = 0

[state 7100, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; RJB Hitspark - Streaks
;=========================================================================
[Statedef 7101]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7101, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(0) := random % 12 || var(5) := parent,var(5)

[state 7101, Change Animation]
type = changeanim
trigger1 = !time
value = 7101

[state 7101, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7101, Turn]
type = turn
trigger1 = !time && random < 496

[state 7101, Scale]
type = varset
trigger1 = !time
fvar(0) = (0.125 + 0.025 * var(5)) / 16.0

[state 7101, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(0)
scale = (0.125 + 0.025 * var(5)) + fvar(0) * time, (0.125 + 0.025 * var(5)) + fvar(0) * time

[state 7101, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 7101, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; RJB Hitspark - Surface
;=========================================================================
[Statedef 7102]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7102, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(5) := parent,var(5)

[state 7102, Change Animation]
type = changeanim
trigger1 = !time
value = 7102

[state 7102, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7102, Turn]
type = turn
trigger1 = !time && random < 496

[state 7102, Angle]
type = angledraw
trigger1 = 1
value = 30 * time
scale = (0.125 + 0.025 * var(5)) + fvar(0) * time, (0.125 + 0.025 * var(5)) + fvar(0) * time

[state 7102, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 7102, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; RJB Hitspark - Star
;=========================================================================
[Statedef 7103]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7103, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(5) := parent,var(5)

[state 7103, Change Animation]
type = changeanim
trigger1 = !time
value = 7103

[state 7103, Bind to Parent]
type = bindtoparent
trigger1 = !time
pos = var(0) := cond(random < 496, 4 + random % 4, -4 - random % 4), var(1) := cond(random < 496, 4 + random % 4, -4 - random % 4)

[state 7103, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7103, Angle]
type = angledraw
trigger1 = 1
value = 30 * time
scale = 0.125 + 0.025 * var(5), 0.125 + 0.025 * var(5)

[state 7103, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 7103, Set Velocity]
type = velset
trigger1 = !time
x = cond(var(0) > 0, 2.0 + random % 3, -2.0 - random % 3)
y = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3)

[state 7103, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; RJB Guardspark
;=========================================================================
[Statedef 7105]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; Var(6)'s values:
; 0 - Normal Hit
; 1 - Special Hit
; 2 - Super Hit

[state 7105, Palette]
type = varset
trigger1 = !time
var(6) = parent,var(6)

[state 7105, Destroy Helper]
type = destroyself
trigger1 = var(6) < 0

[state 7105, Change Animation]
type = changeanim
trigger1 = !time
value = 7150

[state 7105, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7105, Scale]
type = varset
trigger1 = !time
fvar(0) = (0.05 + 0.05 * (var(6) + 1)) / 8.0

[state 7105, Angle]
type = angledraw
trigger1 = 1
scale = (0.05 + 0.05 * (var(6) + 1)) + fvar(0) * time, (0.05 + 0.05 * (var(6) + 1)) + fvar(0) * time

[state 7105, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * time, 256

[state 7105, Destroy Helper]
type = destroyself
trigger1 = time > 8

;=========================================================================
; RJB Burnsparks
;=========================================================================
[Statedef 7165]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7165, Bind to Player]
type = varset
trigger1 = !time
var(58) = parent,var(58)

[state 7165, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7165, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7165, Flame 1]
type = explod
trigger1 = random < 496
trigger1 = !time && playeridexist(var(58))
ID = 0
anim = 7165
postype = left
pos = ceil(playerid(var(58)),screenpos x + (fvar(0) := playerid(var(58)),const(size.ground.front) * cos(random))), ceil(playerid(var(58)),screenpos y + (fvar(1) := playerid(var(58)),const(size.head.pos.y) * 0.75 + 16.0 * cos(random)))
bindtime = -1
ownpal = 0
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 7165, Modify Flame 1]
type = modifyexplod
trigger1 = numexplod(0)
postype = left
pos = ceil(playerid(var(58)),screenpos x + fvar(0)), ceil(playerid(var(58)),screenpos y + fvar(1))
trans = addalpha
alpha = 256 - 256 * (time % 4 = 0), 256
ID = 0

[state 7165, Flame 2]
type = explod
trigger1 = !time && playeridexist(var(58))
ID = 1
anim = 7170
postype = left
pos = ceil(playerid(var(58)),screenpos x + (fvar(2) := playerid(var(58)),const(size.ground.front) * cos(random))), ceil(playerid(var(58)),screenpos y + (fvar(3) := playerid(var(58)),const(size.mid.pos.y) * 0.5  + 16.0 * cos(random)))
bindtime = -1
ownpal = 0
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 7165, Modify Flame 2]
type = modifyexplod
trigger1 = numexplod(1)
postype = left
pos = ceil(playerid(var(58)),screenpos x + fvar(2)), ceil(playerid(var(58)),screenpos y + fvar(3))
trans = addalpha
alpha = 256 - 256 * (time % 4 = 0), 256
ID = 1

[state 7165, Flame 3]
type = explod
trigger1 = !time && playeridexist(var(58))
ID = 2
anim = 7170
postype = left
pos = ceil(playerid(var(58)),screenpos x + (fvar(4) := playerid(var(58)),const(size.ground.front) * cos(random))), ceil(playerid(var(58)),screenpos y + (fvar(5) := playerid(var(58)),const(size.mid.pos.y) * 0.5  + 16.0 * cos(random)))
bindtime = -1
ownpal = 0
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 7165, Modify Flame 3]
type = modifyexplod
trigger1 = numexplod(2)
postype = left
pos = ceil(playerid(var(58)),screenpos x + fvar(4)), ceil(playerid(var(58)),screenpos y + fvar(5))
trans = addalpha
alpha = 256 - 256 * (time % 4 = 0), 256
ID = 2

[state 7165, Destroy]
type = removeexplod
trigger1 = !numexplod || time >= 56
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H

[state 7165, Destroy]
type = destroyself
trigger1 = !numexplod || time >= 56
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H

;=========================================================================
; RJB Electricsparks
;=========================================================================
[Statedef 7175]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7175, Bind to Player]
type = varset
trigger1 = !time
var(58) = parent,var(58)

[state 7175, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7175, Bind to Player]
type = posset
trigger1 = playeridexist(var(58))
x = playerid(var(58)),pos x + playerid(var(58)),const(size.mid.pos.x)
y = playerid(var(58)),pos y + playerid(var(58)),const(size.mid.pos.y)

[state 7175, Bind to Player]
type = posset
trigger1 = playeridexist(var(58))
trigger1 = playerid(var(58)),statetype = L
x = playerid(var(58)),pos x + playerid(var(58)),const(size.mid.pos.x)
y = playerid(var(58)),pos y - 12

[state 7175, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7175, Sound]
type = playsnd
trigger1 = time <= 14
trigger1 = time % 7 = 0
value = 3, 3
volumescale = 100
channel = 1

[state 7175, Electricity]
type = explod
trigger1 = numexplod(0) < 4
ID = 0
anim = 7175
postype = p1
pos = 0, 0
random = 64, 64
bindtime = -1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
ownpal = 0
scale = 0.25, 0.25
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 7175, Destroy]
type = removeexplod
trigger1 = !numexplod || time > 32
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H || playerid(var(58)),statetype = L
trigger4 = time && numhelper(6175) > numenemy

[state 7175, Destroy]
type = destroyself
trigger1 = !numexplod || time > 32
trigger2 = !playeridexist(var(58))
trigger3 = playeridexist(var(58))
trigger3 = playerid(var(58)),movetype != H || playerid(var(58)),statetype = L
trigger4 = time && numhelper(6175) > numenemy

;=========================================================================
; RJB EX Effect
;=========================================================================
[StateDef 7200]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7200, Change Animation]
type = changeanim
trigger1 = anim != 7200
value = 7200

[state 7200, Special Effects]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7200, Size]
type = varset
trigger1 = !time
sysfvar(0) = 0.35

[state 7200, Angle]
type = angledraw
trigger1 = time <= 8
scale = 0.125 * time * sysfvar(0), 0.125 * time * sysfvar(0)

[state 7200, Angle]
type = angledraw
trigger1 = time > 8
scale = cond(time <= 16, 1.0 - 0.125 * (time - 8), 0.0) * sysfvar(0), cond(time <= 16, 0.125 * (time - 8), 0.0) * sysfvar(0)

[state 7200, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 12) * time, 256

[state 7200, Sound]
type = playsnd
trigger1 = !time
value = 7200, 0
volumescale = 100

[state 7200, Effect]
type = explod
trigger1 = !time
ID = 7201
anim = 7201
postype = p1
removetime = 24
bindtime = -1
ownpal = 0
sprpriority = 5
pausemovetime = -1
supermovetime = -1

[state 7200, Modify Effect]
type =  modifyexplod
trigger1 = numexplod(7201)
scale = 0.1 * time * sysfvar(0), 0.1 * time * sysfvar(0)
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 12) * time, 256
ID = 7201

[state 7200, Effect]
type = explod
trigger1 = !time
ID = 7202
anim = 7202
postype = p1
removetime = 24
bindtime = -1
ownpal = 0
sprpriority = 5
pausemovetime = -1
supermovetime = -1

[state 7200, Modify Effect]
type =  modifyexplod
trigger1 = numexplod(7202)
scale = (2.0 - 0.08333333333333333333333333333333 * time) * sysfvar(0), (2.0 - 0.08333333333333333333333333333333 * time) * sysfvar(0)
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 12) * time, 256
ID = 7202

[state 7200, Effect]
type = explod
trigger1 = !time
ID = 7203
anim = 7203
postype = p1
removetime = 24
bindtime = -1
ownpal = 0
sprpriority = 5
pausemovetime = -1
supermovetime = -1

[state 7200, Modify Effect]
type =  modifyexplod
trigger1 = numexplod(7203)
scale = 0.0625 * time * sysfvar(0), 0.0625 * time * sysfvar(0)
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 12) * time, 256
ID = 7203

[state 7200, Destroy Explod]
type = removeexplod
trigger1 = time >= 26
trigger2 = root,movetype = H || !root,var(59)

[state 7200, Destroy Helper]
type = destroyself
trigger1 = time >= 26
trigger2 = root,movetype = H || !root,var(59)

;=========================================================================
; RJB Super Art Charge
;=========================================================================
[StateDef 7205]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 7205, Root State]
type = null
triggerall = !time
triggerall = var(0) := parent,stateno || 1
trigger1 = var(0) = 3000
trigger1 = var(1) := 51 || var(2) := 16 || var(3) := -88 || var(4) := 1 ; I
trigger2 = var(0) = 3100
trigger2 = var(1) := 53 || var(2) := 0 || var(3) := -76 || var(4) := 2 ; II
trigger3 = var(0) = 3200
trigger3 = var(1) := 55 || var(2) := 16 || var(3) := -88 || var(4) := 3 ; III

[state 7205, Change Animation]
type = changeanim
trigger1 = !time
value = 7205

[state 7205, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = var(2), var(3)

[state 7205, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7205, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 7205, Angle]
type = angledraw
trigger1 = 1
scale = 1.0 - (1.0 / var(1)) * time, 1.0 - (1.0 / var(1)) * time

[state 7205, Angle]
type = angleadd
trigger1 = 1
value = 9

[state 7205, Transparency]
type = trans
trigger1 = time <= ceil(var(1) * 0.5)
trans = add

[state 7205, Transparency]
type = trans
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(0) := (256.0 / (var(1) * 0.5))
trans = addalpha
alpha = 256 - floor(fvar(0) * (time - (var(1) * 0.5))), 256

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 1
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = floor(256 - fvar(1) * time), floor(256 - fvar(1) * time), 256
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 1
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = ceil(0 + fvar(1) * (time - var(1) * 0.5)), ceil(0 + fvar(1) * (time - var(1) * 0.5)), 256
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 2
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = floor(256 - fvar(1) * time), 256, floor(256 - fvar(1) * time)
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 2
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = ceil(0 + fvar(1) * (time - var(1) * 0.5)), 256, ceil(0 + fvar(1) * (time - var(1) * 0.5))
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 3
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256, floor(256 - fvar(1) * time), 256
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 3
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256, ceil(0 + fvar(1) * (time - var(1) * 0.5)), 256
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 4
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256, floor(256 - fvar(1) * 0.5 * time), floor(256 - fvar(1) * time)
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 7205, Background Effect]
type = bgpalfx
trigger1 = var(4) = 4
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256,  ceil(128 + fvar(1) * 0.5 * (time - var(1) * 0.5)), ceil(0 + fvar(1) * (time - var(1) * 0.5))
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 7205, Sound]
type = playsnd
trigger1 = !time
value = 7205, 0
volumescale = 100

[state 7205, Super Art Effect]
type = helper
trigger1 = !time
name = "Super Art Effect"
ID = 7206
stateno = 7206
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 7205, Super Art Effect]
type = helper
trigger1 = time = ceil(var(1) * 0.0)
trigger2 = time = ceil(var(1) * 0.2)
trigger3 = time = ceil(var(1) * 0.4)
trigger4 = time = ceil(var(1) * 0.6)
name = "Super Art Effect"
ID = 7207
stateno = 7207
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 7205, Super Art Effect]
type = helper
trigger1 = time = ceil(var(1) * 0.0)
trigger2 = time = ceil(var(1) * 0.2)
trigger3 = time = ceil(var(1) * 0.4)
trigger4 = time = ceil(var(1) * 0.6)
name = "Super Art Effect"
ID = 7208
stateno = 7208
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 7205, Destroy Helper]
type = destroyself
trigger1 = time >= var(1) || root,stateno != var(0)
trigger2 = root,movetype = H || !root,var(59) || time && numhelper(6205) > 1

;=========================================================================
; RJB Super Art Swirl
;=========================================================================
[StateDef 7206]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 7206, Destroy Explod]
type = removeexplod
trigger1 = !numhelper(6205) || time && !numhelper(6205) > 1

[state 7206, Destroy Helper]
type = destroyself
trigger1 = !numhelper(6205) || time && !numhelper(6205) > 1

[state 7206, Root State]
type = null
triggerall = !time
trigger1 = var(0) := parent,var(0) || 1
trigger1 = var(1) := parent,var(1) || 1
trigger1 = var(2) := parent,var(2) || 1
trigger1 = var(3) := parent,var(3)

[state 7206, Change Animation]
type = changeanim
trigger1 = !time
value = 7206

[state 7206, Parent Bind]
type = bindtoparent
trigger1 = numhelper(6205)
pos = 0, 0

[state 7206, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7206, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 7206, Angle]
type = angledraw
trigger1 = 1
scale = 1.0 - (1.0 / var(1)) * time, 1.0 - (1.0 / var(1)) * time

[state 7206, Angle]
type = angleadd
trigger1 = 1
value = -12

[state 7206, Transparency]
type = trans
trigger1 = time <= ceil(var(1) * 0.5)
trans = add

[state 7206, Transparency]
type = trans
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(0) := (256.0 / (var(1) * 0.5))
trans = addalpha
alpha = 256 - floor(fvar(0) * (time - (var(1) * 0.5))), 256

[state 7206, Destroy Helper]
type = destroyself
trigger1 = time > var(1)

;=========================================================================
; RJB Super Art Cross
;=========================================================================
[StateDef 7207]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 7207, Destroy Explod]
type = removeexplod
trigger1 = !numhelper(6205) || time && !numhelper(6205) > 1

[state 7207, Destroy Helper]
type = destroyself
trigger1 = !numhelper(6205) || time && !numhelper(6205) > 1

[state 7207, Root State]
type = null
triggerall = !time
trigger1 = var(0) := parent,var(0) || 1
trigger1 = var(1) := parent,var(1) || 1
trigger1 = var(2) := parent,var(2) || 1
trigger1 = var(3) := parent,var(3) || 1
trigger1 = var(4) := 1 + random % 12

[state 7207, Change Animation]
type = changeanim
trigger1 = !time
value = 7207

[state 7207, Parent Bind]
type = bindtoparent
trigger1 = numhelper(6205)
pos = 0, 0

[state 7207, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7207, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 7207, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(4)
scale = 0.5 + 0.046875 * time, 0.5 + 0.046875 * time

[state 7207, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 7207, Destroy Helper]
type = destroyself
trigger1 = time > 32

;=========================================================================
; RJB Super Art Ring
;=========================================================================
[StateDef 7208]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 7208, Destroy Explod]
type = removeexplod
trigger1 = !numhelper(6205) || time && !numhelper(6205) > 1

[state 7208, Destroy Helper]
type = destroyself
trigger1 = !numhelper(6205) || time && !numhelper(6205) > 1

[state 7208, Root State]
type = null
triggerall = !time
trigger1 = var(0) := parent,var(0) || 1
trigger1 = var(1) := parent,var(1) || 1
trigger1 = var(2) := parent,var(2) || 1
trigger1 = var(3) := parent,var(3) || 1
trigger1 = var(4) := 1 + random % 12

[state 7208, Change Animation]
type = changeanim
trigger1 = !time
value = 7208

[state 7208, Parent Bind]
type = bindtoparent
trigger1 = numhelper(6205)
pos = 0, 0

[state 7208, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7208, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 7208, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(4)
scale = 0.5 + 0.03125 * time, 0.5 + 0.03125 * time

[state 7208, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 16 * time, 256

[state 7208, Destroy Helper]
type = destroyself
trigger1 = time > 16

;=========================================================================
; RJB Super Art KO Finish
;=========================================================================
[StateDef 7230]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 7230, Destroy Explod]
type = removeexplod
trigger1 = time && numhelper(6225) > 1

[state 7230, Destroy Helper]
type = destroyself
trigger1 = time && numhelper(6225) > 1

[state 7230, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 7230, Special Effect]
type = assertspecial
trigger1 = time <= 90
flag = nofg

[state 7230, Palette Effect]
type = palfx
trigger1 = 1
time = 1
mul = 256 - ceil(64.0 * cos(time * pi / 8.0)), 128 - ceil(64.0 * cos(time * pi / 8.0)), 0
add = 128 - ceil(64.0 * cos(time * pi / 8.0)), 64 - ceil(64.0 * cos(time * pi / 8.0)), 0
color = 0 

[state 7230, Pause]
type = pause
trigger1 = !time
time = 90
movetime = 90

[state 7230, Pause]
type = pause
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256
trigger1 = playerid(root,var(58)),gethitvar(hitshaketime)
time = 1
movetime = 1

[state 7230, Pause]
type = varadd
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256 && time % 9 = 1
trigger1 = playerid(root,var(58)),statetype != L && playerid(root,var(58)),stateno != 5150
var(1) = 1
[state 7230, Pause]
type = pause
trigger1 = var(1)
trigger1 = playeridexist(root,var(58)) && time > 90 && time < 256 && time % var(1) = 0
trigger1 = playerid(root,var(58)),statetype != L && playerid(root,var(58)),stateno != 5150
time = 1
movetime = 1

[state 7230, Sound]
type = playsnd
trigger1 = !time && parent,var(3) = [200, 330]
value = 200, parent,var(3) + 6000
volumescale = 100

[state 7230, Shake]
type = envshake
trigger1 = !time
time = 1
ampl = 0
freq = 0

[state 7230, KO Background]
type = explod
trigger1 = !time
anim = 7225
ID = 7225
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
bindtime = -1
facing = 1
ownpal = 0
sprpriority = -65536
pausemovetime = -1
supermovetime = -1

[state 7230, KO Message]
type = explod
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(11) != 2, 1)
anim = 6235
ID = 6235
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
bindtime = -1
facing = 1
ownpal = 1
ontop = 1
scale = 0.5, 0.5 * (1.33 * gameheight / gamewidth)
sprpriority = 65536
supermovetime = -1
pausemovetime = -1

[state 7230, Modify Effect]
type = modifyexplod
trigger1 = numexplod ; (6235)
trigger1 = time > 90
trans = addalpha
alpha = 256 - 16 * (time - 90), 256 ; 16 * (time - 90)

[state 7230, Destroy Explod]
type = removeexplod
trigger1 = p2life || time > 106

[state 7230, Destroy Helper]
type = destroyself
trigger1 = p2life

;=========================================================================
; SF3 Effects
;=========================================================================
[Statedef 8000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 8000, Change to Custom Effect]
type = changestate
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
value = 8500

;========================< Initialize Effect >========================

[state 8000, Level, Parent State, Parent Animation Element(For Synch(10))]
type = null
trigger1 = !time
trigger1 = var(0) := parent,stateno || var(1) := parent,anim || var(18) := parent,var(18) || var(19) := parent,animelemno(0) - 1

; 1 = Yes || -1 = No
; var(2) = Anim
; var(3) = Pos X
; var(4) = Pos Y
; var(5) = Bind || value of 2 means bind throughout different states
; var(6) = Palette
; var(7) = Priority
; var(8/9) = Hitpause
; var(10) = Synch
; var(11) = Destroy On hit
; var(12) = Destroy At beginning of state
; var(13) = Destroy At End of Animation
; var(14) = Destroy On state change
; var(15) = Destroy On anim change
; var(16) = Destroy In Custom state
; var(17) = Facing
; fvar(0) = scale x
; fvar(1) = scale y
[state 8000, Initialize]
type = null
triggerall = !time

; 821 - Neutral Throw
trigger1 = ishelper(821)
trigger1 = var(2) := 821 || var(3) := 0 || var(4) := 0 || var(5) := 2 || 1
trigger1 = var(6) := -1 || var(7) := 3 || var(8) := 1 || var(10) := -1 || 1
trigger1 = var(11) := 1 || var(12) := 0 || var(13) := 1 || var(14) := -1 || 1
trigger1 = var(15) := 1 || var(16) := 1 || var(17) := 1 || 1
trigger1 = fvar(0) := 1.0 || fvar(1) := 1.0 || fvar(2) := 0.0

; 831 - Forward Throw
trigger2 = ishelper(831)
trigger2 = var(2) := 831 || var(3) := 0 || var(4) := 0 || var(5) := 2 || 1
trigger2 = var(6) := -1 || var(7) := 3 || var(8) := 1 || var(10) := -1 || 1
trigger2 = var(11) := 1 || var(12) := 0 || var(13) := 1 || var(14) := -1 || 1
trigger2 = var(15) := 1 || var(16) := 1 || var(17) := 1 || 1
trigger2 = fvar(0) := 1.0 || fvar(1) := 1.0 || fvar(2) := 0.0

; 1010 - Charge Metallic Sphere
trigger3 = ishelper(1010)
trigger3 = var(2) := 1010 || var(3) := -7 || var(4) := -60 || var(5) := 2 || 1
trigger3 = var(6) := -1 || var(7) := 3 || var(8) := 1 || var(10) := -1 || 1
trigger3 = var(11) := 1 || var(12) := 0 || var(13) := 1 || var(14) := -1 || 1
trigger3 = var(15) := 1 || var(16) := 1 || var(17) := 1 || 1
trigger3 = fvar(0) := 1.0 || fvar(1) := 1.0 || fvar(2) := 0.0

;========================< General Effect Management >========================

[state 8000, Destroy on Hit]
type = destroyself
triggerall = parent,movetype = H 
trigger1 = var(11) > 0
[state 8000, Destroy on Hit]
type = removeexplod
triggerall = parent,movetype = H 
trigger1 = var(11) > 0

[state 8000, Destroy at Beginning of State]
type = destroyself
triggerall = parent,time <= 1 && time >= 1
trigger1 = var(12) > 0
[state 8000, Destroy at Beginning of State]
type = removeexplod
triggerall = parent,time <= 1 && time >= 1
trigger1 = var(12) > 0

[state 8000, Destroy at End of Animation]
type = destroyself
triggerall = !animtime
trigger1 = var(13) > 0
[state 8000, Destroy at End of Animation]
type = removeexplod
triggerall = !animtime
trigger1 = var(13) > 0

[state 8000, Destroy on State Change]
type = destroyself
triggerall = var(0) != parent,stateno
trigger1 = var(14) > 0
[state 8000, Destroy on State Change]
type = removeexplod
triggerall = var(0) != parent,stateno
trigger1 = var(14) > 0

[state 8000, Destroy on Anim Change]
type = destroyself
triggerall = var(1) != parent,anim
trigger1 = var(15) > 0
[state 8000, Destroy on Anim Change]
type = removeexplod
triggerall = var(1) != parent,anim
trigger1 = var(15) > 0

[state 8000, Destroy on Custom State]
type = destroyself
triggerall = !root,var(59)
trigger1 = var(16) > 0
[state 8000, Destroy on Custom State]
type = removeexplod
triggerall = !root,var(59)
trigger1 = var(16) > 0

[state 8000, Change Animation]
type = changeanim
trigger1 = !time
value = var(2)

[state 8000, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = var(0) || var(5) >= 2
trigger1 = cond(var(5) > 0, 1, !time)
pos = (var(3) + parent,vel x) * root,const(size.xscale), var(4) * root,const(size.yscale)

[state 8000, Synchronization]
type = changeanim
trigger1 = var(0) = parent,stateno && var(1) = parent,anim
trigger1 = var(10) > 0
trigger1 = animelemtime(animelemno(0) + 1) < 0
value = var(2)
elem = parent,animelemno(0) - var(19)

[state 8000, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 8000, Priority]
type = sprpriority
trigger1 = 1
value = var(7)

[state 8000, Hitpause]
type = varset
trigger1 = var(8) > 0
trigger1 = !parent,hitpausetime
var(9) = animelemno(0)

[state 8000, Hitpause]
type = changeanim
trigger1 = var(8) > 0
trigger1 = parent,hitpausetime
value = anim
elem = var(9)

[state 8000, Angle]
type = angledraw
trigger1 = 1
scale = fvar(0), fvar(1)
value = fvar(2)

[state 8000, Facing]
type = turn
trigger1 = var(17) > 0
trigger1 = facing != parent,facing
trigger2 = var(17) < 0
trigger2 = facing = parent,facing

;=========================================================================
; RJB Effects
;=========================================================================
[Statedef 8500]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

;========================< Initialize Effect >========================

[state 8500, Level, Parent State, Parent Animation Element(For Synch(10))]
type = null
trigger1 = !time
trigger1 = var(0) := parent,stateno || var(1) := parent,anim || var(18) := parent,var(18) || var(19) := parent,animelemno(0) - 1

; 1 = Yes || -1 = No
; var(2) = Anim
; var(3) = Pos X
; var(4) = Pos Y
; var(5) = Bind || value of 2 means bind throughout different states
; var(6) = Palette
; var(7) = Palette Source Group
; var(8/9) = Hitpause
; var(10) = Synch
; var(11) = Destroy On hit
; var(12) = Destroy At beginning of state
; var(13) = Destroy At End of Animation
; var(14) = Destroy On state change
; var(15) = Destroy On anim change
; var(16) = Destroy In Custom state
; var(17) = Priority
; var(20) = Facing
; fvar(0) = scale x
; fvar(1) = scale y
; fvar(2) = angle
; fvar(3) = trans
[state 8500, Initialize]
type = null
triggerall = !time

; 821 - Neutral Throw
trigger1 = ishelper(821)
trigger1 = var(2) := 821 || var(3) := 0 || var(4) := 0 || var(5) := 2 || 1
trigger1 = var(6) := -1 || var(7) := -1 || var(8) := 1 || var(10) := -1 || 1
trigger1 = var(11) := 1 || var(12) := 0 || var(13) := 1 || var(14) := -1 || 1
trigger1 = var(15) := 1 || var(16) := 1 || var(17) := 3 || var(20) := 1 || 1
trigger1 = fvar(0) := 1.0 || fvar(1) := 1.0 || fvar(2) := 0.0 || fvar(3) := -1.0

; 831 - Forward Throw
trigger2 = ishelper(831)
trigger2 = var(2) := 831 || var(3) := 0 || var(4) := 0 || var(5) := 2 || 1
trigger2 = var(6) := -1 || var(7) := -1 || var(8) := 1 || var(10) := -1 || 1
trigger2 = var(11) := 1 || var(12) := 0 || var(13) := 1 || var(14) := -1 || 1
trigger2 = var(15) := 1 || var(16) := 1 || var(17) := 3 || var(20) := 1 || 1
trigger2 = fvar(0) := 1.0 || fvar(1) := 1.0 || fvar(2) := 0.0 || fvar(3) := -1.0

; 1010 - Charge Metallic Sphere
trigger3 = ishelper(1010)
trigger3 = var(2) := 1011 || var(3) := -4 || var(4) := -64 || var(5) := 2 || 1
trigger3 = var(6) := -1 || var(7) := -1 || var(8) := -1 || var(10) := -1 || 1
trigger3 = var(11) := 1 || var(12) := 1 || var(13) := 1 || var(14) := 1 || 1
trigger3 = var(15) := 1 || var(16) := 1 || var(17) := 2 || var(20) := 1 || 1
trigger3 = fvar(0) := 0.4 || fvar(1) := 0.4 || fvar(2) := 0.0 || fvar(3) := 1.0

;========================< General Effect Management >========================

[state 8500, Destroy on Hit]
type = destroyself
triggerall = parent,movetype = H 
trigger1 = var(11) > 0
[state 8500, Destroy on Hit]
type = removeexplod
triggerall = parent,movetype = H 
trigger1 = var(11) > 0

[state 8500, Destroy at Beginning of State]
type = destroyself
triggerall = parent,time <= 1 && time >= 1
trigger1 = var(12) > 0
[state 8500, Destroy at Beginning of State]
type = removeexplod
triggerall = parent,time <= 1 && time >= 1
trigger1 = var(12) > 0

[state 8500, Destroy at End of Animation]
type = destroyself
triggerall = !animtime
trigger1 = var(13) > 0
[state 8500, Destroy at End of Animation]
type = removeexplod
triggerall = !animtime
trigger1 = var(13) > 0

[state 8500, Destroy on State Change]
type = destroyself
triggerall = var(0) != parent,stateno
trigger1 = var(14) > 0
[state 8500, Destroy on State Change]
type = removeexplod
triggerall = var(0) != parent,stateno
trigger1 = var(14) > 0

[state 8500, Destroy on Anim Change]
type = destroyself
triggerall = var(1) != parent,anim
trigger1 = var(15) > 0
[state 8500, Destroy on Anim Change]
type = removeexplod
triggerall = var(1) != parent,anim
trigger1 = var(15) > 0

[state 8500, Destroy on Custom State]
type = destroyself
triggerall = !root,var(59)
trigger1 = var(16) > 0
[state 8500, Destroy on Custom State]
type = removeexplod
triggerall = !root,var(59)
trigger1 = var(16) > 0

[state 8500, Change Animation]
type = changeanim
trigger1 = !time
value = var(2)

[state 8500, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = var(0) || var(5) >= 2
trigger1 = cond(var(5) > 0, 1, !time)
pos = (var(3) + parent,vel x) * root,const(size.xscale), var(4) * root,const(size.yscale)

[state 8500, Synchronization]
type = changeanim
trigger1 = var(0) = parent,stateno && var(1) = parent,anim
trigger1 = var(10) > 0
trigger1 = animelemtime(animelemno(0) + 1) < 0
value = var(2)
elem = parent,animelemno(0) - var(19)

[state 8500, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 8500, Priority]
type = sprpriority
trigger1 = 1
value = var(17)

[state 8500, Hitpause]
type = varset
trigger1 = var(8) > 0
trigger1 = !parent,hitpausetime
var(9) = animelemno(0)

[state 8500, Hitpause]
type = changeanim
trigger1 = var(8) > 0
trigger1 = parent,hitpausetime
value = anim
elem = var(9)

[state 8500, Angle]
type = angledraw
trigger1 = 1
scale = fvar(0), fvar(1)
value = fvar(2)

[state 8500, Angle]
type = trans
trigger1 = fvar(3) > 0
trans = addalpha
alpha = 256, 256

[state 8500, Facing]
type = turn
trigger1 = var(20) > 0
trigger1 = facing != parent,facing
trigger2 = var(20) < 0
trigger2 = facing = parent,facing

;=========================================================================
; Camera
;=========================================================================
[Statedef 9990]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 9990, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 9990, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 9990, Destroy Helper]
type = destroyself

; 4100 - Turns
trigger1 = ishelper(4100)
trigger1 = roundstate >= 2 || parent,anim = 4100

;=========================================================================
; Width Helper
;=========================================================================
[Statedef 9991]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -5

[state 9991, Change Animation]
type = changeanim
trigger1 = root,var(59)
value = root,anim
elem = root,animelemno(0)

[state 9991, Special Effect]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[state 9991, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0

[state 9991, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 9991, Vulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 9991, Set State Type]
type = statetypeset
trigger1 = root,statetype = S
statetype = S

[state 9991, Set State Type]
type = statetypeset
trigger1 = root,statetype = C
statetype = C

[state 9991, Set State Type]
type = statetypeset
trigger1 = root,statetype = A
statetype = A

[state 9991, Turn]
type= turn
trigger1 = facing != root,facing

[state 9991, Solidity]
type = playerpush
trigger1 = 1
value = 1

[state 9991, Width]
type = varset
trigger1 = 1
var(0) = (var(1) := 0)

[state 9991, Width]
type = width
trigger1 = root,anim = -1
trigger1 = root,animelemno(0) = -1
value = var(0) := 0, var(1) := 0

[state 9991, Width]
type = varset
trigger1 = !root,var(59)
var(0) = (var(1) := 0)

[state 9991, Destroy Helper]
type = destroyself
trigger1 = !var(0) && !var(1)
trigger2 = !root,var(59)

;=========================================================================
; Reflection Decider
;=========================================================================
[Statedef 9992]
type = U
movetype = H
physics = U
sprpriority = 0

[state 9992, Change Animation]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)

[state 9992, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 9992, Miss]
type = hitdef
trigger1 = 1
attr = 
hitflag = 

; Metallic Sphere
[state 9992, Destroy Helper]
type = changestate
trigger1 = time >= 7
trigger1 = ishelper(1015)
value = 1020 + 40 * (anim >= 1050)

; Temporal Thunder
[state 9992, Destroy Helper]
type = changestate
trigger1 = time >= 7
trigger1 = ishelper(3105)
value = 3110

[state 9992, Destroy Helper]
type = destroyself
trigger1 = time >= 7
trigger1 = ishelper
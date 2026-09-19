; Mugen 1.1 override states

;---------------------------------------------------------------------------
; KO Voice
[Statedef 179]
type = S
ctrl = 0
anim = 9741
velset = 0,0

; Super Art system select ;

[State 0, PlaySnd]
type = PlaySnd
triggerall = numexplod(4000)
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate = 2
trigger2 = parent,command="start"
value = S0,22
persistent = 0
[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4000)
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate = 2
trigger2 = parent,command="start"
id = 4000
[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4020)
trigger1 = parent,var(59) != 0
trigger2 = parent,roundsexisted = 0
trigger2 = roundstate = 2
trigger3 = !numexplod(4000)
id = 4020
[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4021)
trigger1 = parent,var(59) != 1
trigger2 = parent,roundsexisted = 0
trigger2 = roundstate = 2
trigger3 = !numexplod(4000)
id = 4021
[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4022)
trigger1 = parent,var(59) != 2
trigger2 = parent,roundsexisted = 0
trigger2 = roundstate = 2
trigger3 = !numexplod(4000)
id = 4022
[State for frame]
type = Explod
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate < 2
;trigger1 = !numexplod(4000)
anim = 4000
id = 4000
pos = ceil(screenpos x),ceil(screenpos y)
postype = left
bindtime = -1
removetime = -1
facing = 1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 70
persistent = 0
[State 0, ParentVarSet]
type = ParentVarSet
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
trigger1 = numexplod(4000)
var(59) = random%3
persistent = 0
[State for selection]
type = Explod
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate < 2
trigger1 = !numexplod(4020+(parent,var(59)))
trigger1 = numexplod(4000)
anim = 4020+(parent,var(59))
id = 4020+(parent,var(59))
pos = ceil(screenpos x),ceil(screenpos y)
postype = left
bindtime = -1
removetime = -1
facing = 1
supermovetime = 65535
pausemovetime = 65535
sprpriority = 72
[State update position]
type = ModifyExplod
trigger1 = numexplod(4000)
id = 4000
pos = ceil(screenpos x),ceil(screenpos y)
postype = left
facing = 1
bindtime = -1
[State update position]
type = ModifyExplod
trigger1 = numexplod(4010)
id = 4010
pos = ceil(screenpos x),ceil(screenpos y)
postype = left
facing = 1
bindtime = -1
[State update position]
type = ModifyExplod
trigger1 = numexplod(4020+(parent,var(59)))
id = 4020+(parent,var(59))
pos = ceil(screenpos x),ceil(screenpos y)
postype = left
facing = 1
bindtime = -1

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
triggerall = time = [0,180]
trigger1 = numexplod(4000)
flag = intro

[State 0, PlaySnd]
type = PlaySnd
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
triggerall = numexplod(4000)
trigger1 = parent,command = "tapu" || parent,command="tapd"
value = S0,44
[State 0, ParentVarSet]
type = ParentVarSet
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
triggerall = numexplod(4000)
trigger1 = parent,command = "tapu"
var(59) = ifelse((parent,var(59))-1<0,2,(parent,var(59))-1)
[State 0, ParentVarSet]
type = ParentVarSet
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
triggerall = numexplod(4000)
trigger1 = parent,command = "tapd"
var(59) = ifelse((parent,var(59))+1>2,0,(parent,var(59))+1)

;

;[State WHAM Timer]
;type = VarSet
;trigger1 = 1
;var(30) = parent,var(32)
;ignorehitpause = 1
;[State WHAM Timer]
;type = VarSet
;trigger1 = (parent,var(33)=0)
;v = 32
;value = 0
;ignorehitpause = 1
;[State WHAM Timer]
;type = VarAdd
;trigger1 = (parent,var(33)=1)
;v = 32
;value = 1
;ignorehitpause = 1
;[State WHAM]
;type = PlaySnd
;trigger1 = var(32) = 1
;value = S5,4
;freqmul = 1.0
;ignorehitpause = 1

[State Hyper Combo Finish]
type = ParentVarSet
triggerall = winko
triggerall = roundstate = 3
trigger1 = parent,stateno = [3000,3900]
trigger1 = parent,movehit
trigger2 = numhelper(3000)
trigger3 = parent,stateno = 3111 || parent,stateno = 3211
var(37) = (parent,var(37)) | floor(exp(6*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
triggerall = winko
triggerall = roundstate = 3
trigger1 = parent,stateno = [3000,3900]
trigger1 = parent,movehit
trigger2 = numhelper(3000)
trigger3 = parent,stateno = 3111 || parent,stateno = 3211
var(48) = 1
ignorehitpause = 1
persistent = 0


[State Perfect Finish]
type = ParentVarSet
trigger1 = win
trigger1 = roundstate = 4
trigger1 = parent,life = lifemax
var(37) = (parent,var(37)) | floor(exp(4*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State Low Life Bonus]
type = PowerAdd
trigger1 = roundstate = 2
trigger1 = parent,alive
trigger1 = parent,life <= (parent,lifemax * 0.25)
value = 500
ignorehitpause = 1
persistent = 0

[State Low Life Warning]
type = ParentVarSet
trigger1 = roundstate = 2
trigger1 = parent,alive
trigger1 = parent,life <= (parent,lifemax * 0.25)
var(37) = (parent,var(37)) | floor(exp(1*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State SOVIET DAMAGE]
type = ParentVarSet
trigger1 =(p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
trigger1 = p2life - var(13) <= -380
var(37) = (parent,var(37)) | floor(exp(5*ln(2)) + 0.5)
ignorehitpause = 1

[State remember p2 life]
type = VarSet
trigger1 = (p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
var(13) = p2life
ignorehitpause = 1

[State GFYS]
type = ParentVarSet
triggerall = loseko
triggerall = var(12) = parent,lifemax
trigger1 = numenemy
trigger1 = enemynear,movecontact
trigger2 = p2movetype = A
var(37) = (parent,var(37)) | floor(exp(9*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State remember p1 life]
type = VarSet
trigger1 = ((parent,movetype != H) && (parent,stateno != [5000,5110])) || roundstate = 4
var(12) = parent,life
ignorehitpause = 1

[State reset]
type = VarSet
trigger1 = parent,var(21) != 1
var(16) = -1
ignorehitpause = 1

[State reset]
type = VarSet
triggerall = parent,var(21) != 1
trigger1 = numenemy
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype = H
trigger1 = enemynear,gethitvar(fall) = 1
trigger1 = enemynear,canrecover
var(16) = 1;(enemynear,canrecover)
ignorehitpause = 1

[State INVALID COMBO]
type = ParentVarSet
trigger1 = parent,var(21) = 1
trigger1 = var(16) = 1
var(37) = (parent,var(37)) | floor(exp(7*ln(2)) + 0.5)
ignorehitpause = 1


[State COUNTER]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(0*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=1)
ignorehitpause = 1

[State DANGER]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(1*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=2)
ignorehitpause = 1

[State FIRST ATTACK]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(2*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=3)
ignorehitpause = 1

[State GUARD CANCEL]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(3*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=4)
ignorehitpause = 1

[State PERFECT]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(4*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=5)
ignorehitpause = 1

[State SUPER DAMAGE]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(5*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=6)
ignorehitpause = 1

[State SUPER KO]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(6*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=7)
ignorehitpause = 1

[State SLOPPY JUGGLE]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(7*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=8)
ignorehitpause = 1

[State FUCK YOU]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(8*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=10)
ignorehitpause = 1

[State 0, VarSet]
type = VarAdd
trigger1 = var(22) > 0
trigger1 = numexplod(947)
var(22) = -1
[State 0, VarSet]
type = VarSet
trigger1 = fvar(13) != 0
trigger1 = !numexplod(947)
fvar(13) = 0
[State 0, VarSet]
type = VarAdd
trigger1 = var(22) > 0
trigger1 = fvar(13) < 1
trigger1 = numexplod(947)
fvar(13) = 0.1
[State 0, VarSet]
type = VarAdd
trigger1 = fvar(13) > 0
trigger1 = numexplod(947)
trigger1 = var(22) <= 0
fvar(13) = -0.1
[State 0, VarSet]
type = VarSet
trigger1 = fvar(13) > 1
trigger1 = var(22) > 0
trigger1 = numexplod(947)
fvar(13) = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !numexplod(947)
trigger1 = var(10)
trigger1 = (parent,var(37) & floor(exp((var(10)-1)*ln(2)) + 0.5))
var(37) = parent,var(37) ^ floor(exp((var(10)-1)*ln(2)) + 0.5)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !numexplod(947)
trigger1 = var(10)=5
value = S0,25
abspan = 0
[State START MESSAGE]
type = Explod
trigger1 = !numexplod(947)
trigger1 = var(10)
anim = 4100+var(10)-1
ID = 947
pos = ifelse(teamside=1,50,270),100
postype = left
bindtime = -1
;removetime = 150
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1;fvar(13)
sprpriority = 666
ontop = 1
ownpal = 1
ignorehitpause = 1
trans = addalpha
alpha = ceil(256*fvar(13)),256-ceil(256*fvar(13))
[State MAO]
type = ModifyExplod
trigger1 = numexplod(947)
ID = 947
supermovetime = 65535
pausemovetime = 65535
scale = 1,1;fvar(13)
sprpriority = 666
ontop = 1
ownpal = 1
trans = addalpha
alpha = ceil(256*fvar(13)),256-ceil(256*fvar(13))
ignorehitpause = 1
[State REM]
type = RemoveExplod
trigger1 = numexplod(947)
trigger1 = fvar(13) <= 0
trigger1 = var(22) <= 0
id = 947
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(10)
var(10) = 0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(47) = ifelse((parent,anim=5300),var(47)+1,0)
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent,alive
trigger1 = var(47) >= 1
flag = nomusic
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = parent,alive
trigger1 = var(47) >= 1
value = S5300,0
channel = 7
abspan = 0
loop = 1
lowpriority = 1
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = var(47) = 0
channel = 7

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent,var(21)
flag = nokoslow
ignorehitpause = 1

; custom powerbar

[State 0, Explod]
type = Explod
trigger1 = parent,fvar(35) >= 1
trigger1 = roundstate = 2
trigger1 = !numexplod(4200)
anim = 4200
ID = 4200
pos = ifelse(teamside=1,8,320-8),floor(screenheight-15)
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 64
ontop = 1
ownpal = 1

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = numexplod(4200)
;trigger1 = !numexplod(4205)
;trigger1 = fvar(29) > (power%1000)
;value = S0,ifelse(power=powermax,39,38)
;abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = numhelper(3050)
fvar(29) = 390-helper(3050),time

[State 0, Explod]
type = Explod
trigger1 = numexplod(4200)
trigger1 = !numexplod(4202)
trigger1 = numhelper(3050)
anim = 4202
ID = 4202
pos = ifelse(teamside=1,8,320-8),floor(screenheight-15)
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = fvar(29)/390,1
sprpriority = 65
ontop = 1
ownpal = 0
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4202)
trigger1 = numhelper(3050)
ID = 4202
scale = fvar(29)/390,1
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4202)
trigger1 = !numhelper(3050)
ID = 4202

[State 0, VarSet]
type = VarSet
trigger1 = !numhelper(3050)
fvar(29) = ifelse((parent,power)=(parent,powermax),1000,((parent,power)%1000))

[State 0, Explod]
type = Explod
trigger1 = numexplod(4200)
trigger1 = !numexplod(4201)
anim = 4201
ID = 4201
pos = ifelse(teamside=1,8,320-8),floor(screenheight-15)
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = fvar(29)/1000,1
sprpriority = 65
ontop = 1
ownpal = 0
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4201)
ID = 4201
scale = fvar(29)/1000,1
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4201)
trigger1 = numhelper(3050)
ID = 4201

[State 0, PlaySnd]
type = PlaySnd
trigger1 = numexplod(4200)
trigger1 = !numexplod(4205)
trigger1 = floor(power/1000) > var(0) ;fvar(29) > (power%1000)
value = S0,ifelse(power=powermax,39,38)
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(0) = floor(power/1000)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4220)
trigger1 = var(0)!=0
id = 4220
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4221)
trigger1 = var(0)!=1
id = 4221
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4222)
trigger1 = var(0)!=2
id = 4222
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4223)
trigger1 = var(0)!=3
id = 4223
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4224)
trigger1 = var(0)!=4
id = 4224
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4225)
trigger1 = var(0)!=5
id = 4225
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4226)
trigger1 = var(0)!=6
id = 4226
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4227)
trigger1 = var(0)!=7
id = 4227
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4228)
trigger1 = var(0)!=8
id = 4228
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4200)
trigger1 = numexplod(4229)
trigger1 = var(0)!=9
id = 4229

[State 0, Explod]
type = Explod
;trigger1 = roundstate = 2
trigger1 = numexplod(4200)
trigger1 = !numexplod(4220+var(0))
anim = 4220+var(0)+ifelse(teamside=2,10,0)
ID = 4220+var(0)
pos = ifelse(teamside=1,8,320-8),floor(screenheight-15)
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 65
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
;trigger1 = roundstate = 2
trigger1 = numexplod(4200)
trigger1 = !numexplod(4210)
trigger1 = parent,var(59)=[0,2]
anim = 4210+(parent,var(59))
ID = 4210
pos = ifelse(teamside=1,8,320-8),floor(screenheight-15)
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 65
ontop = 1
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(4200)
triggerall = numexplod(4205)
trigger1 = power!=powermax
trigger2 = numexplod(4202)
id = 4205
ignorehitpause = 1

[State 0, Explod]
type = Explod
;trigger1 = roundstate = 2
trigger1 = numexplod(4200)
trigger1 = !numexplod(4205)
trigger1 = !numexplod(4202)
trigger1 = power=powermax
anim = 4205+ifelse(teamside=1,0,1)
ID = 4205
pos = ifelse(teamside=1,8,320-8),floor(screenheight-15)
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 66
ontop = 1
ownpal = 0

[State 0, PalFX]
type = PalFX
trigger1 = numexplod(4200)
trigger1 = power>=350;power=powermax
time = 2
add = floor(cos(time*.79)*48),floor(cos(time*.79)*48),floor(cos(time*.79)*48)
ignorehitpause = 1

;

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = parent,fvar(36) > 0
trigger1 = winko
flag = nomusic
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = parent,fvar(36) > 0
trigger1 = roundstate = 3
trigger1 = winko
value = S0,ifelse(var(48)=1,24,19)
abspan = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = parent,fvar(36) > 0
trigger1 = roundstate = 4
trigger1 = winko
value = S0,ifelse(var(48)=1,28,ifelse(matchover,29,23))
abspan = 0
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)
[Statedef 1941]
type    = A
movetype= H
physics = N

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
value = 1942

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035+ifelse(var(45),10000,0)
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035+ifelse(var(45),10000,0)
trigger2 = (Anim != [5051+ifelse(var(45),10000,0), 5059+ifelse(var(45),10000,0)]) && (Anim != [5061+ifelse(var(45),10000,0), 5069+ifelse(var(45),10000,0)])
trigger2 = Anim != 5090+ifelse(var(45),10000,0) ;Not if hit off ground anim
value = 5050+ifelse(var(45),10000,0)

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050+ifelse(var(45),10000,0),5059+ifelse(var(45),10000,0)]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
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
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051+ifelse(var(45),10000,0),5059+ifelse(var(45),10000,0)]) || (anim = [5061+ifelse(var(45),10000,0),5069+ifelse(var(45),10000,0)]), 0, Const(movement.air.gethit.groundlevel))
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
trigger1 = anim != [5101+ifelse(var(45),10000,0),5109+ifelse(var(45),10000,0)]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160+ifelse(var(45),10000,0)

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101+ifelse(var(45),10000,0),5109+ifelse(var(45),10000,0)]
trigger1 = SelfAnimExist(5160+ifelse(var(45),10000,0) + (anim % 10))
value = 5160+ifelse(var(45),10000,0) + (anim % 10)

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

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 6,-13
poweradd = 40

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0-const(size.mid.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .88

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 0, LifeAdd]
type = LifeAdd
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = -75
kill = 1
absolute = 0
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100;822 ;Hit ground

[Statedef 829]
type    = A
movetype= H
physics = N
velset = 6,-16
poweradd = 40

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0-const(size.mid.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = (time%15)=0
time = 15
add = 0,64,128
mul = 256,256,256
sinadd = 90,64,64,15
invertall = 1
color = 64
ignorehitpause = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = (time%2)=0
y = 0.88
[State 0, PosFreeze]
type = PosFreeze
trigger1 = (time%2)!=0
value = 1
ignorehitpause = 1

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 0, LifeAdd]
type = LifeAdd
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = -75
kill = 1
absolute = 0
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100;822 ;Hit ground

[Statedef 851]
type    = A
movetype= H
physics = N
velset = 6,-13
poweradd = 40

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0-const(size.mid.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .88

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 0, LifeAdd]
type = LifeAdd
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = -75
kill = 1
absolute = 0
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100;822 ;Hit ground

[Statedef 859]
type    = A
movetype= H
physics = N
velset = 6,-13
poweradd = 40

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0-const(size.mid.pos.y)
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = (time%15)=0
time = 15
add = 0,64,128
mul = 256,256,256
sinadd = 90,64,64,15
invertall = 1
color = 64
ignorehitpause = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = (time%2)=0
y = 0.88
[State 0, PosFreeze]
type = PosFreeze
trigger1 = (time%2)!=0
value = 1
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .88

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 0, LifeAdd]
type = LifeAdd
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = -75
kill = 1
absolute = 0
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100;822 ;Hit ground

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 1609]
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
y = -13.13
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
; HIT_BOUNCE (bounce into air)
[Statedef 1619]
type    = A
movetype= H
physics = N

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = (time%15)=0
time = 15
add = 0,64,128
mul = 256,256,256
sinadd = 90,64,64,15
invertall = 1
color = 64
ignorehitpause = 1

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
type = VelSet
trigger1 = Time = 0
;x = -1
y = -13.13
[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = (time%2)=0
y = GetHitVar(yaccel)
[State 0, PosFreeze]
type = PosFreeze
trigger1 = (time%2)!=0
value = 1
ignorehitpause = 1

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 3062]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = (time%15)=0
time = 15
add = 0,64,128
mul = 256,256,256
sinadd = 90,64,64,15
invertall = 1
color = 64
ignorehitpause = 1

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5035, 1]
type = ChangeAnim
trigger1 = anim = 5030
trigger1 = animtime = 0
;trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = ifelse(selfanimexist(5035),5035,5050)

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5030
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= -2;ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = (time%12)=0
value = anim
elem = animelemno(0)
ignorehitpause = 1

[State 5030, 2]
type = VelAdd
trigger1 = (time%2)=0
y = GetHitVar(yaccel);/4
[State 0, PosFreeze]
type = PosFreeze
trigger1 = (time%2)!=0
value = 1
ignorehitpause = 1

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1
;[State 0, VelAdd]
;type = VelMul
;trigger1 = time = 0
;x = 1
;y = 0.5
;ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
;trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 20)
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)
[Statedef 3066]
type    = A
movetype= H
physics = N

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = (time%15)=0
time = 15
add = 0,64,128
mul = 256,256,256
sinadd = 90,64,64,15
invertall = 1
color = 64
ignorehitpause = 1

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = (time%2)=0
y = GetHitVar(yaccel)
[State 0, PosFreeze]
type = PosFreeze
trigger1 = (time%2)!=0
value = 1
ignorehitpause = 1


[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = SelfState
value = 5110


;---------------------------------------------------------------------------
[Statedef 3111]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9741

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3121

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = ceil(-400 * (.25 + (fvar(13)*.75)) )
kill = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,18
abspan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,2
abspan = 0


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 255
ampl = -12

[State 0, EnvColor]
type = EnvColor
trigger1 = time = 0
value = 255,0,0
time = 16
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3109
ID = 3109
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = ifelse(roundstate>=3,-1,120)
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 10
y = -666

[State 0, PosSet]
type = PosAdd
trigger1 = time = 10
x = 64-backedgebodydist

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 10
y = 0.88

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5050

[State 0, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 20
value = 5100

[Statedef 3210]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 0.75
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(0) = 0.06

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3220

[State 810, Grab Sound]
type = PlaySnd
trigger1 = time = 0
value = 0, 16

[State 810, Bind 1]
type = TargetBind
trigger1 = 1
pos = 0, 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3218
ID = 3218
pos = 160,ceil(screenheight/2)
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 32
removeongethit = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3218)
ID = 3218
scale = 1+(fvar(0)/10),1+(fvar(0)/10)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3217
ID = 3217
pos = 160,ceil(screenheight/2)
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 34
removeongethit = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3217)
ID = 3217
scale = .25+fvar(0),.25+fvar(0)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3209
ID = 3208
pos = 0,ceil(screenheight)
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 70
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3209
ID = 3209
pos = 320,ceil(screenheight)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 70
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3215
ID = 3215
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 79
removeongethit = 1
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 50
value = 3211
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3211]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9741

[State 0, PalFX]
type = AllPalFX
trigger1 = time = 0
time = 20
add = 100,100,100
mul = 256,256,256
sinadd = -100,-100,-100,80
color = 256
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3221

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = ceil(-444 * (.25 + (fvar(13)*.75)) )
kill = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,8
abspan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 8
freq = 255
ampl = -12

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -666

[State 0, PosSet]
type = PosAdd
trigger1 = time = 0
x = 64-backedgebodydist

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 90
y = 0.88

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 90
value = 41

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,89]
flag = noBG
flag2 = noFG
flag3 = globalnoshadow
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3219
ID = 3219
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 90
scale = 1,1
sprpriority = 32
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3211
ID = 3211
pos = 135,floor(screenheight)
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 120
vel = 0.1,-0.1
scale = 1,1
sprpriority = 55
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time = 90
trigger1 = numexplod(3211)
ID = 3211
pos = 144,floor(screenheight-9)
postype = left
bindtime = 1
vel = 1,-19.3
;accel = 0,0.47
sprpriority = 55
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F3
pos = 180,floor(screenheight-140)
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 2,2
sprpriority = 88
ignorehitpause = 1

[State 0, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 0
value = 52

[Statedef 3220]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 9741

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 5005
ID = 3205
pos = 160,floor(screenheight-160)
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 50
scale = (enemynear,fvar(0))*const(size.xscale),(enemynear,fvar(0))*const(size.yscale)
sprpriority = 60
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3205)
anim = 5005
ID = 3205
pos = 160,floor(screenheight-160)-ceil(const(size.head.pos.y)*(enemynear,fvar(0)) )+time
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 50
scale = (enemynear,fvar(0))*const(size.xscale),(enemynear,fvar(0))*const(size.yscale)
sprpriority = 60
ignorehitpause = 1

[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[Statedef 3221]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 9741

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = ifelse(selfanimexist(5051),5051,5050)
ID = 3206
pos = 190,210;floor(screenheight-30)
postype = left
facing = -1
vfacing = 1
bindtime = 1
removetime = 120
vel = 0.1,-0.1
scale = const(size.xscale)*1.5,const(size.xscale)*1.5
sprpriority = 60
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time = 90
trigger1 = numexplod(3206)
ID = 3206
pos = 181,201;floor(screenheight-39)
postype = left
bindtime = 1
vel = 1,-19.3
accel = 0,0.47
sprpriority = 60
ignorehitpause = 1

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 101
value = ifelse(selfanimexist(5061),5061,5050)

[State 0, PosSet]
type = PosSet
trigger1 = time = 100
y = -666

[State 0, PosSet]
type = PosAdd
trigger1 = time = 100
x = 64-backedgebodydist

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 100
y = 0.88

[State 820, 2]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 20
value = 5100

;---------------------------------------------------------------------------
; "Super BG"
[Statedef 3099]
type    = S
movetype= I
physics = N
anim = 9741

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.95

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time >= 10
fvar(1) = ifelse(fvar(1)-ifelse(time>=30,0.05,0.01)<=0,0,fvar(1)-ifelse(time>=30,0.05,0.01))

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 0;-64
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(2) = 4*fvar(0)

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
mul = floor(256*(1-fvar(1))),floor(256*(1-fvar(1))),floor(256*(1-fvar(1)))
color = floor(256*(1-fvar(1)))
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3099
ID = 3090
pos = 160,floor(screenheight/2)
postype = left
facing = 1;ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = 1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -64
ownpal = 1
ignorehitpause = 1
trans = addalpha
alpha = ceil(fvar(1)*256),256-ceil(fvar(1)*256)

[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3090)
ID = 3090
pos = 160,floor(screenheight/2)
postype = left
facing = 1;ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = 1
ignorehitpause = 1
trans = addalpha
alpha = ceil(fvar(1)*256),256-ceil(fvar(1)*256)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
trigger1 = fvar(1) <= 0
trigger1 = numexplod(3090)
id = 3090
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time
trigger1 = fvar(1) <= 0
trigger1 = !numexplod(3090)


[Statedef 2504]
type    = A
movetype= H
physics = N
velset = 6.9,-15
poweradd = 40
sprpriority = 4

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2503

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0-const(size.mid.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .88

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = vel y + Pos Y < const(movement.air.gethit.groundlevel)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100;822 ;Hit ground


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, Helper]
type = Helper
triggerall = !ishelper
trigger1 = !numhelper(740)
helpertype = normal
name = "Head"
ID = 740
stateno = 740
pos = const(size.head.pos.x),const(size.head.pos.y)
postype = p1
ownpal = 1
;supermovetime = 65535
;pausemovetime = 65535
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(23)
trigger1 = statetype != A
var(23) = 0
[State 0, VarSet]
type = VarSet
trigger1 = stateno = 45
trigger1 = prevstateno = 630
var(23) = var(23) | floor(exp(0*ln(2)) + 0.5)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noairguard
ignorehitpause = 1

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
triggerall = roundstate >= 2
triggerall = var(30) = 0
trigger1 = movetype = H
trigger1 = stateno != [120,169]
var(30) = -1
ignorehitpause = 1
[State 0, PowerAdd]
type = PowerAdd
triggerall = roundstate >= 2
triggerall = var(30) = 0
triggerall = stateno != [2000,2999]
trigger1 = movehit
trigger2 = p2movetype = H
;trigger2 = movetype = A
trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
value = 150
ignorehitpause = 1
[State -2 Send the message]
type = Varset
triggerall = roundstate >= 2
triggerall = var(30) = 0
trigger1 = movehit
trigger2 = p2movetype = H
;trigger2 = movetype = A
trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = roundstate >= 2
triggerall = var(30) = 0
trigger1 = movehit
trigger2 = p2movetype = H
;trigger2 = movetype = A
trigger2 = p2stateno != [120,169]
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
trigger1 = roundstate >= 2
var(29) = 0
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = roundstate >= 2
trigger1 = var(21)=1
trigger1 = numtarget
var(29) = (target,gethitvar(hitcount) <= 1)
ignorehitpause = 1
[State 0, Reset Bloow]
type = VarSet
trigger1 = roundstate >= 2
trigger1 = time = 1
trigger1 = var(39)
var(39) = 0
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
[State -2, COUNTER!]
type = PlaySnd
trigger1 = !enemynear,movereversed
trigger1 = random < 123
trigger1 = stateno != [800,899]
trigger1 = var(31) = 1
trigger1 = var(21) = 1
value = S23,random%9
channel = 0
lowpriority = 1
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
triggerall = anim != 70851
triggerall = gethitvar(fall)=0
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 1
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,0+random%3
;volume = 255
channel = 0
ignorehitpause = 1
[State 0, ]
type = PlaySnd
triggerall = alive
triggerall = anim != 70851
triggerall = gethitvar(fall)=1
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,2+random%3
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = stateno = 5120
trigger1 = time = 1
trigger1 = random < 500
trigger1 = roundstate < 3
value = 5120,random%13
channel = 0
;volume = 255

[State 0, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = random < 250
trigger1 = stateno = 150
trigger2 = stateno = 152
value = S120,random%4
channel = 0
lowpriority = 1

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
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = winko
flag = nokoslow
ignorehitpause = 1

[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
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
fvar(13) = 1
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
[State -2, Simplifier]
type = VarSet
trigger1 = !ishelper
var(55) = ifelse((roundstate<=2),ailevel,0)
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
trigger1 = var(55)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded )) || (numhelper(3050))
ignorehitpause = 1

; thanks to this if you go CTRL+D and see the current distance so once you start AI making you can blast off a notepad and take notes in which distances would various moves hit
[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d, var(52) = %d, x = %f, y = %f, pro = %f"
params = var(58), var(52), (p2bodydist x / const(size.xscale)), (p2dist y), (fvar(13))
IgnoreHitPause = 1
[State 0, AppendToClipboard]
type = AppendToClipboard
trigger1 = 1
text = "\nsuper = %d gun = %d mess = %d 1 = %d"
params = var(59),var(28),var(37),var(1)
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
trigger2 = numhelper(740)
trigger2 = helper(740),movecontact = 1
var(12) = 0

[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
triggerall = numtarget >= 1
trigger1 = target, hitshakeover
fvar(6) = (target, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
trigger1 = numhelper(740)
trigger1 = helper(740), numtarget >= 1
trigger1 = enemynear, hitshakeover
fvar(6) = (enemynear, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(5) = 0
ignorehitpause = 1
[State -2, Push]
type = PosAdd
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = numtarget >= 1
triggerall = (target, BackEdgeBodyDist <= 0) || (target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
triggerall = stateno != 3100
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger1 = (fvar(5):=1)
x = ifelse(facing = -1,fvar(6),-fvar(6))
[State -2, Push]
type = PosAdd
triggerall = fvar(5)=0
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = Statetype != A
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
triggerall = stateno != 3100
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = numhelper(740)
trigger1 = helper(740),numtarget >= 1
trigger1 = (enemynear, BackEdgeBodyDist <= 0) || (enemynear, FrontEdgeBodyDist <= 0)
x = ifelse(facing = -1,fvar(6),-fvar(6))

[State -2, Increase]
type = VarSet
triggerall = Var(6) <= 0
triggerall = var(12)
trigger1 = numtarget >= 1
trigger1 = target, hitshakeover
trigger2 = numhelper(740)
trigger2 = helper(740),numtarget >= 1
trigger2 = enemynear, hitshakeover
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
trigger4 = numhelper(740)
trigger4 = !(helper(740),numtarget)
trigger5 = numhelper(740)
trigger5 = helper(740),projcontact = 1
trigger6 = numhelper(740)
trigger6 = helper(740),movecontact = 1
fvar(6) = 0
ignorehitpause = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(8)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = numtarget >= 1 && target, gethitvar(xvel) = 0
trigger4 = numhelper(740)
trigger4 = !(helper(740),numtarget)
trigger5 = numhelper(740)
trigger5 = helper(740),projcontact = 1
trigger6 = numhelper(740)
trigger6 = helper(740),numtarget >= 1 && enemynear, gethitvar(xvel) = 0
var(17) = 0


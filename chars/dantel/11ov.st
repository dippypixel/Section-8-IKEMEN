; Mugen 1.1 override states

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = 0
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(1) = 0
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(2) = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,15
channel = 1
abspan = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 666
anim = -1
sound = -1
movetime = 666
darken = 0
p2defmul = 1
unhittable = 0
ignorehitpause = 1


[State 0, VarSet]
type = VarSet
trigger1 = time < 300
trigger2 = time >= 300
trigger2 = var(1) = 1
var(0) = ifelse(var(0)+4>=256,256,var(0)+4)
[State 0, VarSet]
type = VarSet
trigger1 = time >= 300
trigger1 = var(1) = 0
var(0) = ifelse(var(0)-4<=0,0,var(0)-4)
[State 0, VarSet]
type = VarSet
trigger1 = time >= 300
trigger1 = var(1) = 0
trigger1 = var(0) <= 0
var(1) = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(192)
trigger1 = var(1)
id = 192
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(193)
trigger1 = var(1)
id = 193
ignorehitpause = 1
[State 0, SuperPause]
type = SuperPause
trigger1 = var(1) = 1
time = 1
anim = -1
sound = -1
movetime = 1
darken = 0
p2defmul = 1
unhittable = 1
ignorehitpause = 1
persistent = 0
[State 0, EnvColor]
type = EnvColor
trigger1 = var(1) = 0
value = 0,0,0
time = 2
under = 0
ignorehitpause = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(1) = 0
flag = noFG
flag2 = noBG
flag3 = nobardisplay
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 192
ID = 192
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 500
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 64
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 110
anim = ifelse(ailevel&&(enemy,matchno>=2),194,193)
ID = 193
pos = 160,floor(screenheight/2)+19
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 500
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 64
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 0,255
[State 0, VarSet]
type = VarSet
trigger1 = numexplod(193)
var(2) = ifelse(var(2)+3>=255,255,var(2)+3)
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(193)
ID = 193
trans = addalpha
alpha = var(2),255-var(2)

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time >= 0
time = 2
;add = 0,0,0
mul = var(0),var(0),var(0)
ignorehitpause = 1

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = time >= 0
flag = Intro
flag2 = nomusic

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = var(0) >= 255
trigger1 = var(1) = 1
value = 0


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
velset = 5,-12
poweradd = 40

[State 820, 1]
type = ChangeAnim2
Trigger1 = anim = 820
trigger1 = command = "z"
value = 821
elem = animelemno(0)

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0-const(size.mid.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 821, 1] ;Gravity
type = VelMul
trigger1 = time >= 0
x = .99
[State 821, 1] ;Gravity
type = VelAdd
trigger1 = time >= 0
y = .45

[State 0, NotHitBy]
type = NotHitBy
triggerall = anim = 821 && animelemno(0) = 10
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= 0
value = SCA
time = 12
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim = 821 && animelemno(0) = 10
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= 0
value = 52;822 ;Hit ground

[State 0, LifeAdd]
type = LifeAdd
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.down.bounce.groundlevel)
value = -111
kill = 1
absolute = 0
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = anim != 821 || (anim = 821 && animelemno(0) != 10)
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.down.bounce.groundlevel)
value = 5100;822 ;Hit ground


[StateDef 929]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = nokoslow
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,ifelse((p2stateno=[2220,2229]),11,10)
abspan = 0
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = numhelper(3002)
trigger1 = numenemy
trigger1 = enemy,roundsexisted >= 1 || parent,roundsexisted >= 1
trigger1 = p2name != "Beavis"
trigger1 = p2name != "Butt-Head"
value = S0,26
abspan = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 929
ID = 929
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 999
ontop = 1
ownpal = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 80
anim = -1
sound = -1
pos = 0,0
movetime = 80
darken = 0
p2defmul = 1
unhittable = 0
ignorehitpause = 1

[State 0, Pause]
type = Pause
trigger1 = roundstate = 3
trigger1 = time = [80,100]
time = 3
;movetime = 1
endcmdbuftime = 3
pausebg = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = noairguard
ignorehitpause = 1

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State -2, Cancel First Attack after getting hit]
type = VarSet
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (enemy,movecontact >= 1 || enemy,projcontact >= 1) && (!enemy,moveguarded)
var(30) = -1
ignorehitpause = 1
[State -2, First Attack Power Bonus]
type = PowerAdd
triggerall = var(30) = 0
triggerall = stateno != [3000,3999]
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
trigger2 = numhelper(1010)
trigger2 = helper(1000),movehit
trigger3 = numhelper(1150)
trigger3 = helper(1150),movehit
trigger4 = numhelper(652)
trigger4 = helper(652),movehit
trigger5 = numhelper(657)
trigger5 = helper(657),movehit
;trigger6 = numhelper(3002)
;trigger6 = helper(3002),movehit
value = 150
ignorehitpause = 1
[State -2 Send the message (First Attack)]
type = Varset
triggerall = var(30) = 0
triggerall = stateno != [3000,3999]
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
trigger2 = numhelper(1010)
trigger2 = helper(1000),movehit
trigger3 = numhelper(1150)
trigger3 = helper(1150),movehit
trigger4 = numhelper(652)
trigger4 = helper(652),movehit
trigger5 = numhelper(657)
trigger5 = helper(657),movehit
trigger6 = numhelper(3002)
trigger6 = helper(3002),movehit
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1
[State -2 First Attack SET]
type = VarSet
triggerall = var(30) = 0
triggerall = stateno != [3000,3999]
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
trigger2 = numhelper(1010)
trigger2 = helper(1000),movehit
trigger3 = numhelper(1150)
trigger3 = helper(1150),movehit
trigger4 = numhelper(652)
trigger4 = helper(652),movehit
trigger5 = numhelper(657)
trigger5 = helper(657),movehit
trigger6 = numhelper(3002)
trigger6 = helper(3002),movehit
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
trigger1 = 1
var(29) = 0
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = var(21)=1
trigger1 = numtarget
var(29) = (target,gethitvar(hitcount) <= 1)
ignorehitpause = 1
[State 0, Reset Bloow]
type = VarSet
trigger1 = time = 1
trigger1 = var(39)
var(39) = 0
ignorehitpause = 1

[State 0, Bleed]
type = Helper
triggerall = stateno != [800,820]
triggerall = numtarget
triggerall = !(target,ishelper) ; don't bleed while hitting projectiles or somethin'
triggerall = !(target,selfanimexist(8055039)) ; don't bleed while hitting projectiles or somethin'
triggerall = fvar(36) > 0
trigger1 = var(21) = 1
trigger1 = var(39) > 0
helpertype = normal
name = "Bloodspark"
ID = 920
stateno = 920
pos = ceil(p2bodydist x) + 10,var(38)
postype = p1
facing = 1
ownpal = 1
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
trigger1 = (stateno = 5001) || (stateno = 5011) || (stateno = 5021) || (stateno = 5070)
trigger1 = time = 1
trigger1 = anim != [5010,5029]
trigger1 = gethitvar(type)=0
;trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
;trigger2 = stateno != [120,160]
;trigger2 = gethitvar(damage)
value = 5000,0
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
value = 5000,1
;volume = 255
channel = 0
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = var(28)
triggerall = gethitvar(fall)=1
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
var(28) = 0
ignorehitpause = 1

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
[State 0, Helper]
type = Helper
triggerall = !numhelper(929)
trigger1 = winko
;triggerall = winko
;trigger1 = movehit
;trigger2 = numhelper(1000)
;trigger2 = helper(1000),movehit
helpertype = normal
name = "HYPER COMBO FINISH"
ID = 929
stateno = 929
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
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
;triggerall = !IsHelper
;trigger1 = var(58) = 1
;trigger2 = fvar(35):=0
trigger1 = !ishelper
fvar(35) = ifelse((roundstate=2&&ailevel>=1),ailevel,0)
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
trigger1 = fvar(35)
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
text = "\npik = %d gun = %d mess = %d 1 = %d"
params = var(26),var(28),var(37),var(1)
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
var(12) = 0

[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
triggerall = numtarget >= 1
trigger1 = target, hitshakeover
fvar(6) = (target, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State -2, Push]
type = PosAdd
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = numtarget >= 1
triggerall = (target, BackEdgeBodyDist <= 0) || (target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
triggerall = stateno != 3051
triggerall = (enemynear,statetype != A) || (stateno = 1100)
;triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger2 = stateno = 620
;trigger3 = stateno = 1300
;trigger4 = stateno = 240
x = ifelse(facing = -1,fvar(6),-fvar(6))

[State -2, Increase]
type = VarSet
triggerall = Var(6) <= 0
triggerall = var(12)
trigger1 = numtarget >= 1
trigger1 = target, hitshakeover
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
fvar(6) = 0
ignorehitpause = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(8)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = numtarget >= 1 && target, gethitvar(xvel) = 0
var(17) = 0

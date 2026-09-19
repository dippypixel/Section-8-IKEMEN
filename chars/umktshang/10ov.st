;---------------------------------------------------------------------------
;Crouching strong punch
; CNS difficulty: easy
; Description: This is a 2-hit move. It is done by having two HitDefs
;     triggered, one for each frame of animation that hits.
;     Notice how the first hit cannot be guarded by an opponent in the
;     air, because of the "M" in the guardflag, meaning it can only
;     be guarded "middle". The second hit has an "MA" guardflag, so
;     it can be guarded both on the ground and in the air.
; CNS レベル: 易
; 詳細: これは殴打が二発ある攻撃です。
; 殴打できるアニメーションの枚は一々HitDefを登録しています。
; 一発目の攻撃のHitDefにはguardflagが「M」（middle＝中段ガード）
; にセットされているので、相手は空中でガードできません。二発目
; の攻撃のguardflagは「MA」（middle+air＝中段＋空中ガード）で、
; 地上、空中でもガードすることができます。
[Statedef 410]
type    = C
movetype= A
physics = C
poweradd= 50
ctrl = 0
anim = ifelse(var(19),10410,410)
sprpriority = 2
facep2 = 1

[State 0, VarRandom]
type = VarSet
trigger1 = time = 1
var(0) = random%2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(0) = 1
trigger1 = movehit
value = S0,27
abspan = 0
persistent = 0
[State 0, Explod]
type = Explod
trigger1 = var(0) = 1
trigger1 = movehit
anim = 419
ID = 419
pos = 10,GameHeight
postype = back
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 99999
ontop = 1
ownpal = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = movehit = 1
value = anim + 1
elem = animelemno(0)
ignorehitpause = 1
persistent = 0

[State ProRation]
type = VarSet
trigger1 = var(21) = 1
fvar(13) = fvar(13) * 0.8
ignorehitpause = 1

[State Neo-Juggle-System-Flag]
type = VarSet
;trigger1 = !(var(40) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = movehit = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(40) = var(40) | floor(exp(6*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 70, 0
animtype = up
guardflag = M
hitflag = MAF
pausetime = 4, 3
guard.pausetime = 12, 11
sparkno = 2
sparkxy = -10, -70
hitsound = S5, 4
guardsound = S6, 0
ground.type = low
ground.slidetime = 25
ground.hittime  = 25
guard.velocity = -13
guard.hittime = 12
ground.velocity = -3,-19
air.velocity = -3,-19
airguard.velocity = -1.9,-.8
air.type = low
air.hittime = 25
fall = 1
air.fall = 1
fall.recovertime = 40
id = 123
yaccel = .83
nochainid = ifelse(!(var(40) & floor(exp(6*ln(2)) + 0.5) ),124,123),3000
persistent = 0

[State 200, 1]
type = PlaySnd
trigger1 = anim = 410
trigger1 = Time = 1
value = 0, 2

[State 200, 1]
type = PlaySnd
trigger1 = anim = 10410
trigger1 = animelem = 2
value = 0, 9

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 410
trigger1 = AnimElemtime(4) = 4
trigger2 = anim = 10410
trigger2 = animelem = 7
movetype = I

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


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
velset = -2.8,-7
poweradd = 40

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 821

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 851]
type    = A
movetype= H
physics = N
velset = 6,-4
poweradd = 40

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .44

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 10821]
type    = A
movetype= H
physics = N
velset = 3,-11
poweradd = 40

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 0 - const(size.mid.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 10851]
type    = A
movetype= H
physics = N
velset = -3,-6
poweradd = 40

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 60
add = 40,-70,-200
mul = 256,256,256
sinadd = 40,30,0,10
invertall = 1
color = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 10851

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 0 - const(size.head.pos.y)
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground


;------------------
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .55

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0)
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100


;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
[Statedef 3421]
type    = A
movetype= H
physics = N
velset = -2.8,-7
poweradd = 40

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 821

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = vel y + Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
; RIP
[Statedef 4140]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 9741

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = 250
[State 0, VarSet]
type = VarAdd
trigger1 = time
trigger1 = var(0)
var(0) = -1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,400]
flag = roundnotover

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 4140
ID = 4140
pos = 160,gameheight
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 99999
ontop = 1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nokoslow
flag3 = nokosnd
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobg
flag2 = nofg
flag3 = nobardisplay

[State 0, AllPalFX]
type = AllPalFX
trigger1 = 1
time = 2
add = var(0),var(0),var(0)
mul = 255+var(0),255+var(0),255+var(0)
[State 0, EnvColor]
type = EnvColor
trigger1 = 1
value = 0,0,0
time = 2


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[StateDef -2]

[State ME USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger1 = anim = 170
value = S5,2

[State 0, Eglible for a fatality?]
type = VarSet
triggerall = var(49) = 0
trigger1 = win
trigger2 = numenemy
trigger2 = enemynear,teammode = turns
var(49) = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = !numhelper(1100)
trigger1 = var(24)
var(24) = 0
[State 0, VarSet]
type = VarSet
trigger1 = !numhelper(3209)
var(19) = 0
[State 0, VarSet]
type = VarSet
trigger1 = numhelper(3209)
var(19) = (helper(3209),stateno=3209) || (helper(3209),stateno=3208)
[State 0, Trans]
type = Trans
trigger1 = var(19) = 1
trans = add
ignorehitpause = 1
[State 0, HitBy]
type = HitBy
trigger1 = var(19) = 1
value = SCA,NA,SA,HA,NT,ST,HT
time = 2
ignorehitpause = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(19) = 1
flag = noshadow
flag2 = noairguard
ignorehitpause = 1
[State 0, VarSet]
type = LifeAdd
triggerall = roundstate = 2
triggerall = stateno != [4110,4190]
triggerall = (gametime%4)=0
trigger1 = numhelper(3209)
trigger1 = (helper(3209),stateno=3209)
trigger1 = (helper(3209),fvar(0) >= 780)
value = -1
kill = 0
ignorehitpause = 1

[State SuperBG, Clean Background]
type = AssertSpecial
trigger1 = numexplod(3009)
flag = noBG
flag2 = noFG
ignorehitpause = 1
[State SuperBG, Cancel Envshakes]
type = EnvShake
trigger1 = numexplod(3009)
time = 1
freq = 0
ampl = 0
ignorehitpause = 1


[State 5120]
type = PlaySnd
triggerall = !numhelper(3409)
triggerall = !numexplod(14201)
trigger1 = stateno = 5120
trigger1 = Time = 1
value = 667, random%10
channel = 0

[State -3]
type = PlaySnd
triggerall = time = 0
triggerall = alive = 1
triggerall = !var(19)
trigger1 = stateno = [5000,5099]
value = 668, random%13
channel = 0
[State -3]
type = PlaySnd
triggerall = time = 0
triggerall = alive = 1
triggerall = var(19)
trigger1 = stateno = [5000,5099]
value = 4445, random%4
channel = 0

[State 0, VarSet]
type = VarSet
triggerall = stateno != 800
trigger1 = stateno = [810,819]
trigger2 = statetype = A
trigger3 = p2statetype = A
trigger4 = moveguarded
;trigger5 = stateno = [120,160]
var(8) = 12
[State 0, VarAdd]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1

[State P2Soundcode nope]
type = VarSet
trigger1 = 1
v = 33
value = 0
ignorehitpause = 1
[State P2Soundcode WHAM]
type = VarSet
trigger1 = (numtarget)
trigger1 = (target,stateno = 1027)
trigger1 = (target,time = 1)
trigger1 = (target,movetype = H)
v = 33
value = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
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
trigger1 = !numhelper(3209)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded ))
ignorehitpause = 1
[State ANTI-MINDGAME-TH]
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
trigger1 = numhelper(3209)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded )) || (helper(3209),stateno=3208)
ignorehitpause = 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1

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
[State -2, Neo-Juggle-System copy]
type = VarSet
;triggerall = var(42)
trigger1 = time = 1
trigger2 = !numtarget
trigger3 = numtarget
trigger3 = (target,statetype != A) && (target,statetype != L)
var(47) = var(42)
ignorehitpause = 1
[State 0, Neo-Juggle-System-Debug]
type = DisplayToClipboard
trigger1 = var(36)
text = "NJS Flags = %d | %d"
params = var(40),var(41)
ignorehitpause = 1

[State Prevent the prorator from going too low]
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
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  )
ignorehitpause = 1



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
; with "var(55)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(55):=0
var(55) = ailevel	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

;[State -2 DEBUG]
;type = VarSet
;trigger1 = stateno = 3101
;var(55) = 1
;ignorehitpause = 1


[State -2, Movehitoner]
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
trigger1 = stateno != 1101
trigger1 = stateno != 1201
var(38) = floor(p2bodydist x)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
trigger1 = stateno != 1101
trigger1 = stateno != 1201
var(39) = floor(p2bodydist y)
ignorehitpause = 1


[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "var(58) = %d, var(38) = %d, var(38) = %d, pro = %f"
params = var(58), var(38), var(39), fvar(13)
IgnoreHitPause = 1

[State -2, ATC]
type = AppendToClipboard
trigger1 = 1
text = "\nMatchNo = %d, var(52) = %d, hed = %d, %f"
params = MatchNo, var(52), const(size.head.pos.y), (p2bodydist x + p2dist y)
IgnoreHitPause = 1


;背景処理
[Statedef 2996]
physics = N
velset = 0,0
anim = 2996
sprpriority = -5

[State 2996]
type = DestroySelf
trigger1 = Parent,StateNo != [2000,4999];天魔豪斬空はココ
trigger2 = facing = 1
trigger2 = ScreenPos X != [-160,0]
trigger3 = facing = -1
trigger3 = ScreenPos X != [320,480]
trigger4 = ScreenPos Y != [-77,0]
trigger5 = Parent,StateNo = 2000	;真空波動拳系
trigger5 = Parent,Time = 115
trigger6 = Parent,StateNo = 2102	;真空竜巻
trigger6 = Parent,AnimElem = 5
trigger7 = Parent,StateNo = 2202	;真昇龍拳
trigger7 = Parent,AnimElem = 3
trigger8 = Parent,StateNo = 2210	;真昇龍拳失敗
trigger8 = Parent,AnimElem = 2,= 3
trigger9 = Parent,Anim = 2500		;昇龍裂破
trigger9 = Parent,AnimElem = 21,= 5
trigger10 = Parent,Anim = 2510		;滅殺豪昇龍
trigger10 = Parent,AnimElem = 22,= 5
trigger11 = Parent,Anim = 2601		;神龍拳
trigger12 = Parent,Anim = 1211		;疾風迅雷脚
trigger12 = Parent,AnimElem = 3
trigger13 = Parent,Anim = 2700		;疾風迅雷脚失敗
trigger13 = Parent,AnimElem = 30,= 2
trigger14 = Parent,Anim = 3201		;瞬獄殺
trigger14 = Parent,AnimElem = 2
trigger15 = NumHelper(2998)
;---------------------------------------------------------------------------
;ko
[Statedef 2998]
physics = N
velset = 0,0
anim = 2998
sprpriority = -5

[State 2998]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 2998]
type = varset
trigger1 = Time = 0
var(20) = Parent,StateNo

[State 2998]
type = Pause
trigger1 = Parent,StateNo = [2000,3999]
trigger1 = Time = 0
time = 28
movetime = 28

[State 2998]
type = Explod
triggerall = Time = 3
trigger1 = Parent,StateNo = 2000
trigger2 = Parent,StateNo = 2202
trigger3 = Parent,StateNo = 2500
trigger4 = Parent,StateNo = [2600,2799]
trigger5 = Parent,StateNo = 3000
trigger6 = Parent,StateNo = [2300,2303]
trigger7 = Parent,StateNo = [3100,3102]
anim = 9500+(var(20)=2000&&Parent,Var(0)=2)*10+(var(20)=2202)*2+(var(20)=[2300,2303])*3+(var(20)=2500)*ifelse(Parent,Var(0)=1,5,9)+(var(20)=2600)*6+(var(20)=[2700,2703])*7+(var(20)=3000)*11+(var(20)=[3100,3102])*13
ID = 9500
postype = left
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 2998]
type = Explod
triggerall = Time = 1
trigger1 = Parent,StateNo = [2100,2102]
trigger2 = Parent,StateNo = 3201
anim = 9501+(Parent,StateNo=3201)*11
ID = 9500
postype = left
pos = 0,0
scale = 0.85,1
bindtime = -1
removetime = -1
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 2998]
type = Explod
triggerall = Parent,StateNo >= 2000
trigger1 = Time = 0
anim = 2998
ID = 998
postype = left
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = -5
ownpal = 1
pausemovetime = 30

[State 2998]
type = RemoveExplod
trigger1 = NumExplod(998) = 0
ID = 9500

[State 2998]
type = PlaySnd
trigger1 = Time = 0
value = S2,11

[State 2998]
type = PlaySnd
triggerall = Parent,StateNo >= 2000
trigger1 = time = 10
value = S3,10
;---------------------------------------------------------------------------
;真空波動拳/滅殺豪波動
[Statedef 2000]
type = U
movetype= A
physics = N
velset = 0,0
anim = 2000+(Pos Y < 0)*10+(Pos Y=0&&Var(0)=2)*5
ctrl = 0
sprpriority = 2

[State 2000]
type = StateTypeSet
trigger1 = StateType = A
trigger1 = Anim = [2000,2005]
statetype = S

[State 2000]
type = VarSet
trigger1 = Time = 0
trigger1 = StateType = A
var(5) = 1

[State 2000]
type = AttackDist
trigger1 = 1
value = 500

[State 2000];滅殺豪波動
type = ChangeAnim
trigger1 = Anim = 2005
trigger1 = Time = 58
value = 2006

[State 2000]
type = AfterImage
trigger1 = AnimElem = 4
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2000]
type = PlaySnd
trigger1 = Anim = 2000 || Anim = 2010
trigger1 = AnimElem = 3
value = S2000,0
persistent = 0

[State 2000]
type = PlaySnd
trigger1 = Anim = 2000 || Anim = 2010
trigger1 = AnimElem = 4,= 4
value = S2000,1
persistent = 0

[State 2000]
type = PlaySnd
trigger1 = Anim = 2005
trigger1 = AnimElem = 5,= 4
value = S0,2
persistent = 0

[State 2000]
type = PlaySnd
trigger1 = Anim = 2006
trigger1 = AnimElem = 1,= 4
value = S1+(PalNo>10)*1999,4-(PalNo>10)*3
persistent = 0

[State 2000]
type = PlaySnd
trigger1 = Anim = 2000 || Anim = 2010
trigger1 = AnimElem = 4,= 1
trigger2 = Anim = 2006
trigger2 = AnimElem = 1,= 1
value = S2000,2
persistent = 0

[State 2000]
type = Explod
trigger1 = Time = 1
trigger1 = StateType != A
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 10

[State 2000]
type = SuperPause
trigger1 = Time = 19
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-60
Poweradd = -1000
p2defmul = 1

[State 2000];背景
type = null;Explod
trigger1 = Time = 58
trigger1 = NumExplod(2996) = 0
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = 56
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -10
pausemovetime = 10

[State 2000]
type = Helper
trigger1 = Time = 58
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2000]
type = Pause
trigger1 = Time = 58
trigger1 = EnemyNear,Anim != [120,159]
time = 8
movetime = 8

[State 2000];背景
type = Explod
trigger1 = Time = 19
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
pausemovetime = 10
sprpriority = -5
ownpal = 1

[State 2000];カットイン移動中
type = Explod
trigger1 = Time = 19
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2000];カットイン停止
type = Explod
trigger1 = Time = 29
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2000]
type = Explod
trigger1 = Anim = 2000 || Anim = 2010
trigger1 = AnimElem = 2
anim = 2020
ID = 2020
postype = p1
bindtime = -1
removeongethit = 1
removetime = -1
pos = 0,-16*(StateType=A)
sprpriority = 3
ownpal = 1

[State 2000]
type = Explod
trigger1 = Time = 58
anim = 2021
ID = 2021
postype = p1
pos = 0,-20*(StateType = A)
removeongethit = 1
removetime = -1
bindtime = -1
ownpal = 1
ignorehitpause = 1
sprpriority = 3

[State 2000]
type = Helper
trigger1 = Time = 58
helpertype = Normal
ID = 2050
name = "ShinkuuHadouKen"
postype = p1
pos = 0,-20*(StateType = A)
stateno = 2050
ownpal = 1
pausemovetime = 10

[State 2000]
type = RemoveExplod
trigger1 = Anim = 2000 || Anim = 2010
trigger1 = AnimElem = 4
ID = 2020

[State 2000]
type = RemoveExplod
trigger1 = Time = 115
ID = 2021

[State 2000]
type = AfterImageTime
trigger1 = Time = 115
time = 0

[State 2000]
type = ChangeState
trigger1 = Time = 152
trigger1 = StateType = A
value = 50
ctrl = 1

[State 2000]
type = ChangeState
trigger1 = Time = 152
trigger1 = StateType != A
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 2050]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 4

[State 2050]
type = ChangeAnim
trigger1 = Anim != 2051
trigger1 = Time = 0
value = 2050

[State 2050]
type = Explod
trigger1 = Anim = 2050
trigger1 = AnimTime = 0
anim = 2052
ID = 2052
postype = p1
pos = 0,0
removetime = -1
ownpal = 1
ignorehitpause = 1
sprpriority = 3

[State 2050]
type = ChangeAnim
trigger1 = Anim = 2050
trigger1 = AnimTime = 0
value = 2051

[State 2050]
type = ParentVarSet
trigger1 = MoveHit = 1
fvar(1) = Parent,FVar(1)*.93

[State -2]
type = AttackMulSet
trigger1 = 1
value = Parent,FVar(1)*Parent,FVar(2)

[State 2050]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 2050];時間
type = VarAdd
trigger1 = time = 0
trigger1 = EnemyNear,Anim = [120,159]
v = 0
value = -3

[State 2050];時間
type = VarAdd
trigger1 = 1
v = 0
value = 1

[State 2050]
type = VarAdd
trigger1 = 1
v = 1
value = 1

[State 2050]
type = VarAdd
trigger1 = Root,command = "renda"
trigger2 = Root,Var(15) && Time%(11-Root,Var(15)) = 1
fv = 2
value = 0.25

[State 2050]
type = VarAdd
trigger1 = P2Dist X < 100
fv = 2
value = (P2Dist X-100)/200

[State 2050]
type = BindToParent
trigger1 = Parent,StateNo = 2000
pos = 20,-20*(Parent,StateType = A)

[State 2050]
type = VarAdd
trigger1 = MoveContact = 1
trigger1 = Var(1) >= 8-fVar(2)
var(3) = 1

[State 2050]
type = VarSet
trigger1 = MoveContact = 1
trigger1 = Var(1) >= 8-fVar(2)
var(1) = 0

[State 2050]
type = VarSet
trigger1 = MoveContact = 1
trigger1 = Var(1) >= 8-fVar(2)
fvar(2) = 0

[State 2050]
type = AssertSpecial
triggerall = Var(0) <= 8
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable
ignorehitpause = 1

[State 2050]
type = HitDef
triggerall = Var(0) >= 0
trigger1 = Var(1) >= 8-fVar(2)
trigger2 = Var(1) = [1,2]
trigger3 = Var(0) = 0
attr = A, HP
animtype  = Back
damage  = 30,3
guardflag = MA
hitflag = MAFP
priority = 7, Hit
sprpriority = 4
pausetime = 0,5
guard.sparkno = S8010
sparkno = S2060
sparkxy = ifelse(Var(1)>2,-10,ifelse(Var(1)=1,20,-40)),-50
hitsound  = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-2
air.type = Low
air.velocity = -5,-2
air.animtype = Back
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 10,0

[State 2101]
type = PlaySnd
trigger1 = MoveHit = 1
value = S2000,3
channel = 2
ignorehitpause = 1

[State 2101]
type = PlaySnd
trigger1 = MoveGuarded = 1
value = S6,0
channel = 2
ignorehitpause = 1

[State 2050]
type = HitBy
trigger1 = 1
time = 1
value = , NP, SP, HP
ignorehitpause = 1

[State 2050]
type = HitOverride
trigger1 = 1
time = 1
stateno = 2050
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 2000]
type = RemoveExplod
trigger1 = Var(0) = 55
trigger2 = parent, stateno != 2000
ID = 2052

[State 2050]
type = ChangeAnim
triggerall = Anim != 2053
trigger1 = Var(0) = 55
trigger2 = parent, stateno != 2000
value = 2053

[State 2050]
type = DestroySelf
trigger1 = Anim = 2053
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;真空竜巻旋風脚
;真空…
[Statedef 2100]
type = A
movetype = A
physics = N
anim = 2100
velset = 0,0
ctrl = 0

[State 2100]
type = PlaySnd
trigger1 = AnimElem = 4
value = S2000,0

[State 2100]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 10

[State 2100]
type = SuperPause
trigger1 = AnimElem = 5
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-70
Poweradd = -1000
p2defmul = 1

[State 2100];背景
type = null;Explod
trigger1 = AnimElem = 6
trigger1 = NumExplod(2996) = 0
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = 104
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -5
pausemovetime = 14

[State 2100]
type = Helper
trigger1 = AnimElem = 6
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-60,110)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2100]
type = Pause
trigger1 = AnimElem = 6,= -1
trigger1 = EnemyNear,Anim != [120,159]
time = 14
movetime = 14

[State 2100];背景
type = Explod
trigger1 = AnimElem = 5
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2100];カットイン移動中
type = Explod
trigger1 = AnimElem = 5
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2100];カットイン停止
type = Explod
trigger1 = AnimElem = 5,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2100]
type = AfterImage
trigger1 = AnimElem = 6
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2100]
type = PlaySnd
trigger1 = AnimElem = 8
value = S1200,0

[State 2100]
type = VelSet
trigger1 = AnimElem = 8
y = -2

[State 2100]
type = VelAdd
trigger1 = AnimElem = 8,>0
trigger1 = Vel Y < 0
y = -.4

[State 2100]
type = ChangeState
trigger1 = AnimTime = 0
value = 2101
;---------------------------------------------------------------------------
;竜巻旋風脚！
[Statedef 2101]
type = A
movetype= A
physics = N
anim = 2101
velset = 0,0
ctrl = 0
sprpriority = 2

[State 2100]
type = AssertSpecial
triggerall = AnimElem = 1
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable
ignorehitpause = 1

[State 2101]
type = ChangeState
trigger1 = Time = 80
value = 2102

[State 2101]
type = PosAdd
trigger1 = Time%10 = 0
y = 1

[State 2101]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 2101]
type = ScreenBound
trigger1 = 1
Value = 0
movecamera = 0,0

[State 2101]
type = PlaySnd
trigger1 = Time%10 = 0
value = S5,1

[State 2101]
type = PlaySnd
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 0
value = S10,6
channel = 2
ignorehitpause = 1

[State 2101]
type = PlaySnd
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 0
value = S6,0
channel = 2
ignorehitpause = 1

[State 2101];足元の奴その１
type = Explod
trigger1 = Time%10 = 0
ID = 2110
anim = 2110
postype = p1
pos = 0,-Pos Y
removeongethit = 1
ownpal = 1
ignorehitpause = 1
sprpriority = -2

[State 2101];足元の奴その２
type = Explod
trigger1 = Time%10 = 0
ID = 2111
anim = 2111
postype = p1
pos = 0,-Pos Y
removeongethit = 1
ownpal = 1
ignorehitpause = 1
sprpriority = -2

[State 2101]
type = HitDef
trigger1 = Time%5 = 0
attr = A, HA
animtype  = Medium
damage = 35,3
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 1,1
sparkno = S8003
sparkxy = -10,-60
guard.sparkno = S8010
hitsound  = -1,-1
guardsound = -1,-1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = P2Dist X/8+ifelse((Time%20=[0,9]),-4,4),0
air.type = High
air.velocity = P2Dist X/8+ifelse((Time%20=[0,9]),-4,4),-3
fall.recover = 0
down.velocity = P2Dist X/8+ifelse((Time%20=[0,9]),-4,4),-30
air.fall = 1
p2facing = ifelse(P2Dist X>=0,1,-1)
yaccel = 1
getpower = 0,0
givepower = 10,0

[State 2101]
type = TargetVelSet
trigger1 = NumTarget
trigger1 = Target,Vel Y < -20
trigger1 = Target,Time >= 3
y = 0

[State 2101]
type = HitAdd
trigger1 = Time <= 1
trigger1 = MoveHit = 1
value = 1
;---------------------------------------------------------------------------
[Statedef 2102]
type = A
movetype= A
physics = N
anim = 2102
velset = 0,0
ctrl = 0
sprpriority = 2

[State 2102]
type = AfterImageTime
trigger1 = AnimElem = 1
time = 0

[State 2102]
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 2996

[State 2102]
type = VelSet
trigger1 = AnimElem = 5
y = -Pos Y/6

[State 2101]
type = PosSet
trigger1 = AnimElem = 8
y = 0

[State 2101]
type = VelSet
trigger1 = AnimElem = 8
y = 0

[State 2101]
type = PlayerPush
trigger1 = 1
value = 0

[State 2101]
type = PlaySnd
trigger1 = AnimElem = 1
value = S5,1

[State 2101]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
animtype  = back
damage  = 75,8
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 2,0
sparkno = S8003
sparkxy = -10,-60
guard.sparkno = S8010
hitsound  = S10,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10,-8
guard.velocity = -10
air.type = High
air.velocity = -10,-10
fall = 1
fall.recover = 0
p2facing = -1
getpower = 0,0
givepower = 10,0
yaccel = .6

[State 2101]
type = ChangeState
trigger1 = AnimTime = 0
value = 100*(BackEdgeDist < 0)
ctrl = 1


;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;真・昇龍拳
;今だ!
[Statedef 2200]
type = S
movetype = A
physics = S
anim = 2200
ctrl = 0
velset = 0,0

[State 2200]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2200]
type = AfterImage
trigger1 = AnimElem = 3
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2200]
type = PlaySnd
trigger1 = AnimElem = 2
value = S2200,0

[State 2100]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 2100]
type = SuperPause
trigger1 = AnimElem = 2
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-70
Poweradd = -1000
p2defmul = 1

[State 2200];背景
type = null;Explod
trigger1 = AnimElem = 2,= 40
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = -1
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -5
pausemovetime = 14

[State 2000]
type = Helper
trigger1 = AnimElem = 2,= 40
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2200]
type = Pause
trigger1 = AnimElem = 2,= 39
trigger1 = EnemyNear,Anim != [120,159]
time = 12
movetime = 12

[State 2200];背景
type = Explod
trigger1 = AnimElem = 2
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2200];カットイン移動中
type = Explod
trigger1 = AnimElem = 2
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2200];カットイン停止
type = Explod
trigger1 = AnimElem = 2,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2200]
type = AssertSpecial
triggerall = AnimElem = 2,>= 0
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable

[State 2200]
type = HitDef
trigger1 = AnimElem = 3,= 3
attr = S, HA
damage = 100,20
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 30,30
sparkno = -1
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 50
ground.velocity = 0  
air.velocity = 0,0
kill = 0
palfx.time = 50
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,10
getpower = 0,0
givepower = 10,0

[State 2200]
type = Explod
trigger1 = Movehit = 1
anim = 2250
ID = 2250
bindtime = 1
removetime = -2
postype = p1
pos = 15,-120
sprpriority = 3

[State 2201]
type = Explod
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = -1
postype = p2
pos = 0,0
sprpriority = 3

[State 2200]
type = ChangeState
trigger1 = MoveHit
value = 2201

[State 2200]
type = ChangeState
trigger1 = AnimTime = 0
value = 2210
;---------------------------------------------------------------------------
;真・
[Statedef 2201]
type   = S
movetype = A
anim = 2201
velset = 0,0

[State 2201]
type = AfterImage
trigger1 = AnimElem = 1
time = 50
length = 10

[State 2201]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2200,1

[State 2201]
type = VarSet
trigger1 = PrevStateNo = 2303
trigger1 = Time = 0
fv = 1
value = .5

[State 2201]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage = 60
animtype = Medium
hitflag = MAF
pausetime = 0,17
sparkno = -1
guard.sparkno = S8010  
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = 0,-12
air.velocity = 0,-12
fall = 1
fall.recover = 0
kill = 0
palfx.time = 50
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,10
getpower = 0,0
givepower = 10,0

[State 2200]
type = Explod
trigger1 = Movehit = 1
anim = 2250
ID = 2250
bindtime = 1
removetime = -2
postype = p1
pos = 50,-85
sprpriority = 3

[State 2201]
type = Explod
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = -1
postype = p2
pos = 0,0
sprpriority = 3

[State 2201]
type = ChangeState
trigger1 = AnimElem = 2
value = 2202
;---------------------------------------------------------------------------
;昇龍拳！
[Statedef 2202]
type   = A
movetype = A
physics = N
velset = 1.5,-10

[State 2202]
type = AfterImageTime
trigger1 = AnimElem = 3
time = 0

[State 2202]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 2202]
type = VelAdd
trigger1 = Time >= 30
trigger1 = Vel Y < 10
y = .5

[State 2202]
type = VelAdd
trigger1 = Time >= 30
trigger1 = Vel X > 0
x = -.15

[State 2202]
type = VarSet
trigger1 = Time = 0
fv = 1
value = ifelse(FVar(1)<=0.5,0.25,1)

[State 2202]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 240
animtype  = Back
pausetime = 7,7
sparkno = -1
guard.sparkno = S8010  
hitsound   = S10,2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -12,-20
air.type = High
air.velocity = -12,-20
air.hittime = 50
fall = 0
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 50
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3
getpower = 0,0
givepower = 10,0

[State 2202]
type = Explod
trigger1 = Movehit = 1
anim = 2250
ID = 2250
bindtime = 1
removetime = -2
postype = p1
pos = 15,-120
sprpriority = 3

[State 2202]
type = Explod
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = -1
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 2202]
type = RemoveExplod
trigger1 = NumExplod(2996)
trigger1 = Time = 10
ID = 2996
ignorehitpause = 1

[State 2202]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Vel Y+Pos Y >= 0
value = 52
;---------------------------------------------------------------------------
;昇龍拳！(失敗)
[Statedef 2210]
type   = A
movetype = A
anim = 2210
velset = 1.5,-7.5

[State 2202]
type = RemoveExplod
trigger1 = NumExplod(2996)
trigger1 = AnimElem = 2,= 3
ID = 2996
ignorehitpause = 1

[State 2210]
type = PlaySnd
trigger1 = Time = 0
value = S1100,0

[State 2210]
type = VelAdd
trigger1 = Time >= 20
trigger1 = Vel Y < 8
y = .5

[State 2202]
type = VelAdd
trigger1 = Time >= 20
trigger1 = Vel X > 0
x = -.15

[State 2210]
type = HitDef
trigger1 = Time = 0
trigger2 = MoveContact = 3
attr = A, HA
damage = 30,3
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 3,3
sparkxy = 5,-60
sparkno = S8003
guard.sparkno = S8010
hitsound = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 15
ground.velocity = -3,-10
air.type = Low
air.velocity = -3,-10
air.hittime = 15
air.fall = 0
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
getpower = 0,0
givepower = 10,0

[State 2210]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Vel Y+Pos Y >= 0
value = 52
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;滅・昇龍拳(仮)
[Statedef 2300]
type = S
movetype = A
physics = N
anim = 2300
ctrl = 0
velset = 0,0

[State 2300]
type = AfterImage
trigger1 = AnimElem = 3
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2300]
type = VelSet
trigger1 = AnimElem = 4
x = 8

[State 2302]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2

[State 2300]
type = VelMul
trigger1 = Vel X != 0
x = .9

[State 2300]
type = VelSet
trigger1 = AnimElem = 6
x = 0

;[State 2300]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = S2200,0

[State 2300]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 2300]
type = SuperPause
trigger1 = AnimElem = 2
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-70
Poweradd = -1000
p2defmul = 1

[State 2300]
type = Helper
trigger1 = AnimElem = 2,= 40
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2300]
type = Pause
trigger1 = AnimElem = 2,= 39
time = 10
movetime = 10

[State 2300];背景
type = Explod
trigger1 = AnimElem = 2
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2300];カットイン移動中
type = Explod
trigger1 = AnimElem = 2
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2300];カットイン停止
type = Explod
trigger1 = AnimElem = 2,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2500]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2300]
type = AssertSpecial
triggerall = AnimElem = 2,>= 0
triggerall = AnimElem = 3,< 9
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable

[State 2300]
type = HitDef
trigger1 = AnimElem = 5,>= 0
trigger1 = !MoveHit
attr = S, HA
damage = 40+Var(1)*15,4+Var(1)
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 25,25
sparkno = S8003
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 30
ground.velocity = -4  
air.velocity = -4,-1
kill = 0
getpower = 0,0
givepower = 10,0

[State 2300]
type = ChangeState
trigger1 = Var(1) >= 10
trigger1 = MoveHit
value = 2303

[State 2300]
type = VarSet
trigger1 = AnimElem = 4
var(1) = 0

[State 2300]
type = VarAdd
trigger1 = AnimElem = 4,> 0
trigger1 = AnimElem = 6,< 0
v = 1
value = 1

[State 2300]
type = ChangeState
trigger1 = MoveHit
value = 2301

[State 2300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 2301]
type   = S
movetype = A
anim = 2301
velset = 5,0

[State 2301]
type = AfterImage
trigger1 = AnimElem = 1
time = 50
length = 10

[State 2301]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 65
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 17,17
sparkno = S8003
guard.sparkno = S8010  
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = 0,-12
air.velocity = 0,-12
kill = 0
getpower = 0,0
givepower = 10,0

[State 2301]
type = ChangeState
trigger1 = AnimElem = 5
value = 2302
;---------------------------------------------------------------------------
;昇龍拳！
[Statedef 2302]
type   = A
movetype = A
physics = N
velset = 3,-8

[State 2302]
type = AfterImageTime
trigger1 = AnimElem = 6
time = 0

[State 2302]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 2302]
type = VelAdd
trigger1 = Time >= 20
trigger1 = Vel Y < 10
y = .5

[State 2302]
type = VelAdd
trigger1 = Time >= 20
trigger1 = Vel X > 0
x = -.15

[State 2302]
type = HitDef
trigger1 = Time = 1
attr = A, HA
damage = 65
animtype  = Back
pausetime = 5,5
sparkno = S8003
guard.sparkno = S8010  
hitsound   = S10,2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -12,-20
air.type = High
air.velocity = -12,-20
air.hittime = 50
fall = 0
getpower = 0,0
givepower = 10,0

[State 2302]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Vel Y+Pos Y >= 0
value = 52

;---------------------------------------------------------------------------
[Statedef 2303]
type   = S
movetype = A
anim = 2301
velset = 5,0

[State 2303]
type = AfterImage
trigger1 = AnimElem = 1
time = 50
length = 10

[State 2303]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 65
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 25,25
sparkno = S8003
guard.sparkno = S8010  
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = 0,-12
air.velocity = 0,-12
kill = 0
getpower = 0,0
givepower = 10,0

[State 2303]
type = ChangeState
trigger1 = MoveHit
value = 2201

[State 2303]
type = ChangeState
trigger1 = AnimElem = 5
value = 2302
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;昇龍裂破/滅殺豪昇龍
[Statedef 2500]
type = S
movetype = A
physics = S
anim = 2500+(Var(0)=2)*10
ctrl = 0
velset = 0,0

[State 2500]
type = AfterImage
trigger1 = AnimElem = 3
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2500]
type = NotHitBy
trigger1 = Anim = 2500
trigger1 = AnimElem = 6,< 0
trigger2 = Anim = 2510
trigger2 = AnimElem = 7,< 0
value = SCA

[State 2500]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 2550
stateno = 2550+(Var(0)=2)*10
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0
supermovetime = 50
pausemovetime = 10

[State 2500]
type = VelSet
trigger1 = AnimElem = 3,>= 0
trigger1 = AnimElem = 7,< 0
trigger2 = AnimElem = 11,>= 0
trigger2 = AnimElem = 15,< 0
x = 10

[State 2500]
type = PlaySnd
trigger1 = Var(0) = 1 || PalNo > 10
trigger1 = AnimElem = 2
value = S0,1

[State 2500]
type = PlaySnd
triggerall = Var(0)=2&&PalNo<=10
trigger1 = AnimElem = 2,= 10
value = S1,4

[State 2500]
type = PlaySnd
trigger1 = Var(0) = 1 || PalNo > 10
trigger1 = AnimElem = 3
value = S2500,0

[State 2500]
type = PlaySnd
triggerall = Var(0)=2&&PalNo<=10
trigger1 = AnimElem = 6
trigger2 = AnimElem = 15
value = S2500,3

[State 2500]
type = PlaySnd
triggerall = Var(0)=2&&PalNo<=10
trigger1 = AnimElem = 21
value = S1100,1

[State 2500]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 2500]
type = SuperPause
trigger1 = AnimElem = 2
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = 20,-25
Poweradd = -1000
p2defmul = 1

[State 2500];背景
type = null;Explod
trigger1 = AnimElem = 2,= 40
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = -1
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -5
pausemovetime = 14

[State 2500]
type = Helper
trigger1 = AnimElem = 2,= 40
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2500]
type = Pause
trigger1 = AnimElem = 3,= -1
trigger1 = EnemyNear,Anim != [120,159]
time = 10
movetime = 10

[State 2500];背景
type = Explod
trigger1 = AnimElem = 2
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2500];カットイン移動中
type = Explod
trigger1 = AnimElem = 2
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2500];カットイン停止
type = Explod
trigger1 = AnimElem = 2,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2500]
type = AssertSpecial
triggerall = AnimElem = 3,= [-1,9]
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable

[State 2500]
type = PlaySnd
trigger1 = AnimElem = 18,< 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
value = S10,2
channel = 2
ignorehitpause = 1

[State 2500]
type = PlaySnd
trigger1 = AnimElem = 18,< 0
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 4
value = S6,0
channel = 2
ignorehitpause = 1

[State 2500]
type = Explod
trigger1 = AnimElem = 18,< 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
trigger2 = AnimElem = 18,>= 0
trigger2 = MoveHit = 1
trigger2 = HitPauseTime = 7
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20,-70
bindtime = -1
removetime = 30
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 2500]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 3
attr = S, HA
damage = 65,5
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = S8003
sparkxy = -5,-35
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -2
ground.cornerpush.veloff = -Vel X
air.velocity = -2,-6
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 11
trigger5 = AnimElem = 12
trigger6 = AnimElem = 13
trigger7 = AnimElem = 14
attr = S, HA
damage = 30,3
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = S8003
sparkxy = -5,-60+25*(AnimElem=11,=0)
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -2
ground.cornerpush.veloff = -Vel X
air.velocity = -2,-6
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 19
attr = S, HA
damage = 40,4
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = S8003
sparkxy = -5,-35
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -2,-6
ground.cornerpush.veloff = -Vel X
air.velocity = -2,-6
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 20
attr = S, HA
damage = 130,13
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = S8003
sparkxy = -5,-70
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -10,-19
ground.cornerpush.veloff = -Vel X
air.velocity = -10,-19
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 3
attr = S, HA
damage = 65,5
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = S8003
sparkxy = -5,-35
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -3
ground.cornerpush.veloff = -Vel X
air.velocity = -3,-6
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 12
trigger6 = AnimElem = 13
trigger7 = AnimElem = 14
trigger8 = AnimElem = 15
attr = S, HA
damage = 30,3
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = S8003
sparkxy = -5,-60+25*(AnimElem=12,=0)
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -2
ground.cornerpush.veloff = -Vel X
air.velocity = -2,-6
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 20
attr = S, HA
damage = 40,4
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = S8003
sparkxy = -5,-35
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -2,-6
ground.cornerpush.veloff = -Vel X
air.velocity = -2,-6
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 21
attr = S, HA
damage = 130,13
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = S8003
sparkxy = -5,-70
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -10,-19
ground.cornerpush.veloff = -Vel X
air.velocity = -10,-19
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
palfx.time = 40
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = StateTypeSet
trigger1 = Anim = 2500
trigger1 = AnimElem = 20
trigger2 = Anim = 2510
trigger2 = AnimElem = 21
StateType = A
Physics = N

[State 2500]
type = VelSet
trigger1 = Anim = 2500
trigger1 = AnimElem = 21
trigger2 = Anim = 2510
trigger2 = AnimElem = 22
x = 8
y = -10

[State 2500]
type = VelSet
trigger1 = Anim = 2500
trigger1 = AnimElem = 22
trigger2 = Anim = 2510
trigger2 = AnimElem = 23
x = 1

[State 2500]
type = VelSet
trigger1 = Anim = 2500
trigger1 = AnimElem = 23
trigger2 = Anim = 2510
trigger2 = AnimElem = 24
x = 0

[State 2500]
type = VelAdd
trigger1 = Anim = 2500
trigger1 = AnimElem = 22,>= -4
trigger2 = Anim = 2510
trigger2 = AnimElem = 23,>= -4
y = .8

[State 2500]
type = RemoveExplod
trigger1 = Anim = 2500
trigger1 = AnimElem = 21,= 5
trigger2 = Anim = 2510
trigger2 = AnimElem = 22,= 5
ID = 2996

[State 2500]
type = AfterImageTime
trigger1 = Anim = 2500
trigger1 = AnimElem = 22
trigger2 = Anim = 2510
trigger2 = AnimElem = 23
time = 0

[State 2500]
type = ChangeState
trigger1 = AnimElem = 22,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52
;---------------------------------------------------------------------------
;昇龍裂破エフェクト
[Statedef 2550]
type = A
physics = N
anim = 2550
sprpriority = 3

[State 2550]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 2550]
type = PlaySnd
triggerall = Parent,Hitpausetime = 0
trigger1 = Parent,AnimElem = 5
trigger2 = Parent,AnimElem = 13
trigger3 = Parent,AnimElem = 20
value = 1100,2

[State 2550]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2550]
type = ChangeAnim
trigger1 = Parent,AnimElem = 7
trigger2 = Parent,AnimElem = 15
value = 2551

[State 2550]
type = ChangeAnim
trigger1 = Parent,AnimElem = 10
trigger2 = Parent,AnimElem = 18
value = 2552

[State 2550]
type = ChangeAnim
trigger1 = Anim = 2552
trigger1 = AnimTime = 0
trigger1 = Parent,AnimElem = 20,>= 0
value = 2553

[State 2550]
type = ChangeAnim
triggerall = Parent,HitPauseTime > 0
trigger1 = Parent,AnimElem = 5,< -1
trigger2 = Parent,AnimElem = 10,>= -1
trigger2 = Parent,AnimElem = 13,< -1
trigger3 = Parent,AnimElem = 19,>= -1
value = anim
elem = AnimElemNo(-1)

[State 2550]
type = DestroySelf
trigger1 = Anim = 2553
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != 2500
;---------------------------------------------------------------------------
;滅殺豪昇龍エフェクト
[Statedef 2560]
type = A
physics = N
anim = 2560
sprpriority = 3

[State 2560]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 2560]
type = PlaySnd
triggerall = Parent,Hitpausetime = 0
trigger1 = Parent,AnimElem = 6
trigger2 = Parent,AnimElem = 15
trigger3 = Parent,AnimElem = 21
value = 1100,2

[State 2560]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2560]
type = ChangeAnim
trigger1 = Parent,AnimElem = 8
trigger2 = Parent,AnimElem = 16
value = 2551

[State 2560]
type = ChangeAnim
trigger1 = Parent,AnimElem = 11
value = 2562

[State 2560]
type = ChangeAnim
trigger1 = Parent,AnimElem = 19
value = 2564

[State 2560]
type = ChangeAnim
trigger1 = Anim = 2564
trigger1 = AnimTime = 0
value = 2553

[State 2560]
type = ChangeAnim
triggerall = Parent,HitPauseTime > 0
trigger1 = Parent,AnimElem = 6,< -1
trigger2 = Parent,AnimElem = 11,>= -1
trigger2 = Parent,AnimElem = 14,< -1
trigger3 = Parent,AnimElem = 20,>= -1
value = anim
elem = AnimElemNo(-1)

[State 2560]
type = DestroySelf
trigger1 = Anim = 2553
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != 2500
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;神龍拳
[Statedef 2600]
type = S
movetype = A
physics = S
anim = 2600
ctrl = 0
velset = 0,0

[State 2600]
type = AfterImage
trigger1 = AnimElem = 5
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2600]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "shinfire"
ID = 2650
stateno = 2650
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0
supermovetime = 40
pausemovetime = 10

[State 2600]
type = Explod
trigger1 = AnimElem = 8
anim = 2660
ID = 2660
postype = P1
bindtime = 1
removetime = -1
removeongethit = 1
pos = 0,-Pos Y
sprpriority = -3
ownpal = 1
pausemovetime = 10

[State 2600]
type = RemoveExplod
trigger1 = Anim = 2601
trigger1 = NumExplod(2660)
ID = 2660

[State 2600]
type = Explod
trigger1 = Anim = 2601
trigger1 = !NumExplod(2661)
anim = 2661
ID = 2661
postype = P1
bindtime = 1
removetime = -2
pos = 0,-Pos Y
sprpriority = -3
ownpal = 1
persistent = 0

[State 2600]
type = VarSet
trigger1 = AnimElem = 8
v = 1
value = 72

[State 2600]
type = VarAdd
trigger1 = Command != "renda"
trigger1 = Var(1) > 0
v = 1
value = -2

[State 2600]
type = VarAdd
trigger1 = Command = "renda"
trigger1 = Var(1) > 0
v = 1
value = -1

[State 2600]
type = ChangeAnim
trigger1 = Anim = 2600
trigger1 = AnimElem = 8,> 0
trigger1 = Var(1) <= 0
value = 2601

[State 2600]
type = VelSet
trigger1 = AnimElem = 8
y = -10

[State 2600]
type = VelAdd
trigger1 = Anim = 2600
trigger1 = AnimElem = 8,>= 0
y = -.25

[State 2600]
type = PlaySnd
trigger1 = AnimElem = 5
value = S0,1

[State 2600]
type = PlaySnd
trigger1 = AnimElem = 8
value = S2600,0

[State 2600]
type = PlaySnd
trigger1 = AnimElem = 9
value = S2600,1

[State 2600]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 2600]
type = SuperPause
trigger1 = AnimElem = 5
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = 20,-25
Poweradd = -1000
p2defmul = 1

[State 2600];背景
type = null;Explod
trigger1 = AnimElem = 5,= 40
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = -1
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -5
pausemovetime = 14

[State 2600]
type = Helper
trigger1 = AnimElem = 5,= 40
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2600]
type = Pause
trigger1 = AnimElem = 5,= 39
trigger1 = EnemyNear,Anim != [120,159]
time = 10
movetime = 10

[State 2600];背景
type = Explod
trigger1 = AnimElem = 5
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2600];カットイン移動中
type = Explod
trigger1 = AnimElem = 5
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2600];カットイン停止
type = Explod
trigger1 = AnimElem = 5,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2600]
type = AssertSpecial
triggerall = AnimElem = 6,= [-5,5]
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable

[State 2600]
type = PlaySnd
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 1
value = S10,1
channel = 2
ignorehitpause = 1

[State 2600]
type = PlaySnd
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 1
value = S6,0
channel = 2
ignorehitpause = 1

[State 2600]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 1
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20,-70
bindtime = -1
removetime = 30
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 2600]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 70,7
animtype = Up
priority = 7,hit
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-35
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = 0,-10
ground.cornerpush.veloff = 0
air.velocity = 0,-10
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2500]
type = HitDef
triggerall = Var(1) > 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
trigger7 = AnimElem = 15
trigger8 = AnimElem = 16
trigger9 = AnimElem = 17
trigger10 = AnimElem = 18
attr = A, HA
damage = 30,3
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = 0,-6
ground.cornerpush.veloff = 0
air.velocity = 0,-6
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2600]
type = HitDef
triggerall = Var(1) <= 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
trigger7 = AnimElem = 15
trigger8 = AnimElem = 16
trigger9 = AnimElem = 17
trigger10 = AnimElem = 18
attr = A, HA
damage = 40,4
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound   = S10,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -10,-17
ground.cornerpush.veloff = -Vel X
air.velocity = -10,-17
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2600]
type = VarSet
triggerall = Var(1) <= 7
trigger1 = MoveHit
var(6) = 3

[State 2600]
type = StateTypeSet
trigger1 = AnimElem = 8
StateType = A
Physics = A

[State 2600]
type = RemoveExplod
trigger1 = Anim = 2601
trigger1 = AnimElem = 1
ID = 2996

[State 2600]
type = AfterImageTime
trigger1 = Anim = 2601
trigger1 = AnimElem = 1
time = 0
;---------------------------------------------------------------------------
;神龍拳エフェクト
[Statedef 2650]
type = A
physics = N
anim = 2650
sprpriority = 3

[State 2650]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 2650]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2650]
type = AssertSpecial
trigger1 = Parent,StateNo = [2800,2802]
trigger1 = Parent,Time < 70 || Parent,StateNo = 2802
flag = invisible

[State 2650]
type = ChangeAnim
trigger1 = Parent,Anim = 2601
trigger1 = Anim != 2553
value = 2553

[State 2650]
type = ChangeAnim
trigger1 = Parent,Anim = 2803
trigger1 = Anim != 2651
value = 2651

[State 2650]
type = ChangeAnim
trigger1 = Parent,HitPauseTime > 0
value = anim
elem = AnimElemNo(-1)

[State 2650]
type = DestroySelf
trigger1 = Anim = 2553
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != 2600
trigger2 = Parent,StateNo != [2800,2805]
;-----------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;疾風迅雷脚
[Statedef 2700]
type = S
movetype = A
physics = S
anim = 2700
ctrl = 0
velset = 0,0

[State 2700]
type = AfterImage
trigger1 = AnimElem = 4,= 39
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2700]
type = NotHitBy
trigger1 = AnimElem = 4,>= 0
trigger1 = AnimElem = 8,< 0
value = SCA

[State 2700]
type = VelSet
trigger1 = AnimElem = 4,>= 40
trigger1 = AnimElem = 6,< 0
trigger2 = AnimElem = 9,>= 0
trigger2 = AnimElem = 11,< 0
trigger3 = AnimElem = 14,>= 0
trigger3 = AnimElem = 16,< 0
trigger4 = AnimElem = 19,>= 0
trigger4 = AnimElem = 21,< 0
trigger5 = AnimElem = 24,>= 0
trigger5 = AnimElem = 26,< 0
x = 10

[State 2700]
type = PlaySnd
trigger1 = AnimElem = 4
value = S2700,0

[State 2700]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 16
trigger3 = AnimElem = 26
value = S1,3

[State 2700]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 20
value = S1,2

[State 2700]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 2700]
type = SuperPause
trigger1 = AnimElem = 4
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -20,-25
Poweradd = -1000
p2defmul = 1

[State 2700]
type = null;Explod
trigger1 = AnimElem = 4,= 40
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = -1
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -5
pausemovetime = 14

[State 2700]
type = Helper
trigger1 = AnimElem = 4,= 40
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2700]
type = Pause
trigger1 = AnimElem = 4,= 39
trigger1 = EnemyNear,Anim != [120,159]
time = 10
movetime = 10

[State 2700];背景
type = Explod
trigger1 = AnimElem = 4
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2700];カットイン移動中
type = Explod
trigger1 = AnimElem = 4
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2700];カットイン停止
type = Explod
trigger1 = AnimElem = 4,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2700]
type = AssertSpecial
triggerall = AnimElem = 4,= [40,49]
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable

[State 2700]
type = PlaySnd
triggerall = MoveHit = 1
triggerall = HitPauseTime = 2
trigger1 = AnimElem = 10,>= 0
trigger1 = AnimElem = 12,< 0
trigger2 = AnimElem = 20,>= 0
trigger2 = AnimElem = 22,< 0
value = S10,6
channel = 2
ignorehitpause = 1

[State 2700]
type = PlaySnd
triggerall = MoveHit = 1
triggerall = HitPauseTime = 4
trigger1 = AnimElem = 6,>= 0
trigger1 = AnimElem = 7,< 0
trigger2 = AnimElem = 16,>= 0
trigger2 = AnimElem = 17,< 0
trigger3 = AnimElem = 26,>= 0
trigger3 = AnimElem = 27,< 0
value = S10,5
channel = 2
ignorehitpause = 1

[State 2700]
type = PlaySnd
triggerall = MoveGuarded = 1
trigger1 = HitPauseTime = 2
trigger1 = AnimElem = 10,>= 0
trigger1 = AnimElem = 12,< 0
trigger2 = HitPauseTime = 3
trigger2 = AnimElem = 20,>= 0
trigger2 = AnimElem = 22,< 0
trigger3 = HitPauseTime = 5
trigger3 = AnimElem = 6,>= 0
trigger3 = AnimElem = 7,< 0
trigger4 = HitPauseTime = 5
trigger4 = AnimElem = 16,>= 0
trigger4 = AnimElem = 17,< 0
trigger5 = HitPauseTime = 5
trigger5 = AnimElem = 26,>= 0
trigger5 = AnimElem = 27,< 0
value = S6,0
channel = 2
ignorehitpause = 1

[State 2700]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 16
attr = S, HA
damage = 30,3
animtype = Hard
priority = 5,hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = S8003
sparkxy = -10,-55
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -12
ground.cornerpush.veloff = -Vel X
air.velocity = -5,-2
kill = 0
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
getpower = 0,0
givepower = 5,0

[State 2700]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 20
attr = S, HA
damage = 35,3
animtype = Hard
priority = 5,hit
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = S8003
sparkxy = -5, -70
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -12
ground.cornerpush.veloff = -Vel X
air.velocity = -5,-2
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
getpower = 0,0
givepower = 5,0

[State 2700]
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 21
attr = S, HA
damage = 35,4
animtype = Hard
priority = 5,hit
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = S8003
sparkxy = -5, -80
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -12
ground.cornerpush.veloff = -Vel X
air.velocity = -5,-2
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
getpower = 0,0
givepower = 5,0

[State 2700]
type = HitDef
trigger1 = AnimElem = 26
attr = S, HA
damage = 30,3
animtype = Medium
priority = 5,hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = S8003
sparkxy =-10,-55
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -12
ground.cornerpush.veloff = -Vel X
air.velocity = -5,-2
kill = 0
envshake.time = 2
envshake.freq = 4
envshake.ampl = 4
envshake.phase = 0
getpower = 0,0
givepower = 5,0

[State 2700]
type = RemoveExplod
trigger1 = AnimElem = 30,= 2
ID = 2996

[State 2700]
type = AfterImageTime
trigger1 = AnimElem = 30,= 2
time = -1

[State 2700]
type = ChangeState
trigger1 = MoveHit = [1,20]
trigger1 = AnimElem = 30,= 1
value = 2701

[State 2700]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 2701]
type = A
movetype = A
physics = A
anim = 2701
sprpriority = 2
ctrl = 0

[State 2701]
type = PosAdd
trigger1 = Time = 0
x = 50

[State 2701]
type = AfterImage
trigger1 = AnimElem = 1
time = 50
length = 10

[State 2701]
type = VelSet
trigger1 = Anim = 2701
x = 4
y = -4

[State 2701]
type = VelSet
trigger1 = Anim = 1211
x = 0
y = 0

[State 2701]
type = VelAdd
trigger1 = Anim = 1212
y = .5

[State 2701]
type = ChangeAnim
trigger1 = Anim = 2701
trigger1 = AnimTime = 0
value = 1211

[State 2701]
type = ChangeAnim
trigger1 = Anim = 1211
trigger1 = AnimTime = 0
value = 1212

[State 2701]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 3
value = S1,2

[State 2701]
type = PlaySnd
trigger1 = Anim = 2701
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
value = S10,5
channel = 2
ignorehitpause = 1

[State 2701]
type = PlaySnd
trigger1 = Anim = 2701
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 4
value = S6,0
channel = 2
ignorehitpause = 1

[State 2701]
type = HitDef
triggerall = Anim = 2701
trigger1 = AnimElem = 1
attr = A, SA
animtype = Hard
damage = 40,4
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-6
air.velocity = -3,-6
fall = 1
air.fall = 1
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 2701]
type = HitDef
triggerall = Anim = 2701
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
attr = A, SA
animtype = Medium
damage = 30,4
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-6
air.velocity = -3,-6
fall = 1
air.fall = 1
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 2701]
type = HitDef
triggerall = Anim = 1211
trigger1 = AnimElem = 3
attr = A, SA
animtype = Medium
damage = 100,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-65
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -6,-2
air.velocity = -6,-2
fall = 1
air.fall = 1
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 2700]
type = RemoveExplod
trigger1 = Anim = 1211
trigger1 = AnimElem = 3
ID = 2996

[State 2700]
type = AfterImageTime
trigger1 = Anim = 1211
trigger1 = AnimElem = 3
time = -1

;---------------------------------------------------------------------------
;真・神龍拳モドキ
[Statedef 2800]
type = S
movetype = A
physics = S
anim = 2800
ctrl = 0
velset = 0,0

[State 2800]
type = AfterImage
trigger1 = Time = 3
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 2800]
type = Helper
trigger1 = Time = 3
helpertype = normal
name = "shinfire"
ID = 2650
stateno = 2650
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0
supermovetime = 40
pausemovetime = 10

[State 2800]
type = VarSet
trigger1 = AnimElem = 8
v = 1
value = 72

[State 2800]
type = VarAdd
trigger1 = Command != "renda"
trigger1 = Var(1) > 0
v = 1
value = -2

[State 2800]
type = VarAdd
trigger1 = Command = "renda"
trigger1 = Var(1) > 0
v = 1
value = -1

[State 2800]
type = PlaySnd
trigger1 = Time = 3
value = S9,2

[State 2800]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 2800]
type = SuperPause
trigger1 = Time = 3
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = 20,-25
Poweradd = -2000
p2defmul = 1

[State 2800];背景
type = null;Explod
trigger1 = Time = 43
ID = 2996
anim = 2996
postype = P1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
bindtime = 1
removetime = -1
removeongethit = 1
ownpal = 1
facing = facing
sprpriority = -5
pausemovetime = 14

[State 2800]
type = Helper
trigger1 = Time = 43
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 2800]
type = Pause
trigger1 = Time = 43
trigger1 = EnemyNear,Anim != [120,159]
time = 10
movetime = 10

[State 2800];背景
type = Explod
trigger1 = Time = 3
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 2800];カットイン移動中
type = Explod
trigger1 = Time = 3
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 2800];カットイン停止
type = Explod
trigger1 = Time = 13
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 2800]
type = AssertSpecial
triggerall = AnimElem = 6,= [-5,5]
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable

[State 2800]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 70,7
animtype = hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 30,30
sparkno = S8003
sparkxy = -10,-35
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = 0,0
ground.cornerpush.veloff = 0
air.velocity = 0,0
getpower = 0,0
givepower = 5,0

[State 2800]
type = ChangeState
trigger1 = MoveHit && NumTarget
trigger1 = Target,Anim = [5000,5099]
value = 2801

[State 2800]
type = ChangeState
trigger1 = AnimElem = 4
value = 2805
;---------------------------------------------------------------------------
[Statedef 2801]
type   = A
movetype = A
physics = N
anim = 2801
velset = 0,-3.9

[State 2801]
type = TargetBind
trigger1 = Time = 0
pos = 30,4

[State 2801]
type = VelAdd
trigger1 = Pos Y < -1
y = .3

[State 2801]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 60,5
animtype = Medium
hitflag = MAF
pausetime = 8,30
sparkno = S8003
guard.sparkno = S8010 
sparkxy = -10,-60
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = 0,0
kill = 0
getpower = 0,0
givepower = 10,0

[State 2801]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
damage = 40,5
animtype = Medium
hitflag = MAF
pausetime = 8,30
sparkno = S8003
guard.sparkno = S8010  
sparkxy = -10,-60
hitsound   = S10,5
guardsound = S6,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = 0,0
kill = 0
getpower = 0,0
givepower = 10,0

[State 2801]
type = ChangeState
trigger1 = AnimTime = 0
value = 2802
;---------------------------------------------------------------------------
[Statedef 2802]
type   = S
movetype = A
physics = N
anim = 2802
velset = 0,0

[State 2801]
type = TargetBind
trigger1 = 1
pos = 30,-Pos Y-Vel Y

[State 2802]
type = PlaySnd
trigger1 = Time = 0
value = S2800,0

[State 2802]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2802]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 16
trigger5 = AnimElem = 22
attr = S, HA
damage = 40,5
animtype = Medium
hitflag = MAF
pausetime = 8,30
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-50
hitsound   = S10,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = 0,0
kill = 0
getpower = 0,0
givepower = 10,0

[State 2802]
type = HitDef
trigger1 = AnimElem = 29
attr = S, HA
damage = 80,5
animtype = Medium
hitflag = MAF
pausetime = 8,8
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-70
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime  = 50
air.hittime = 50
ground.velocity = -2,-15
air.velocity = -2,-15
kill = 0
getpower = 0,0
givepower = 10,0

[State 2802]
type = ChangeState
trigger1 = AnimTime = 0
value = 2803

;---------------------------------------------------------------------------
;真龍拳
[Statedef 2803]
type = A
movetype = A
physics = A
anim = 2803
ctrl = 0
velset = 0,0

[State 2803]
type = Explod
trigger1 = Time = 0
anim = 2660
ID = 2660
facing = -1
postype = P1
bindtime = 1
removetime = -1
removeongethit = 1
pos = 0,-Pos Y
sprpriority = -3
ownpal = 1
pausemovetime = 10

[State 2803]
type = RemoveExplod
trigger1 = Anim = 2601
trigger1 = NumExplod(2660)
ID = 2660

[State 2803]
type = Explod
trigger1 = Anim = 2601
trigger1 = !NumExplod(2661)
anim = 2661
ID = 2661
postype = P1
bindtime = 1
facing = -1
removetime = -2
pos = 0,-Pos Y
sprpriority = -3
ownpal = 1
persistent = 0

[State 2803]
type = VarSet
trigger1 = Time = 0
v = 1
value = 72

[State 2803]
type = VarAdd
trigger1 = Command != "renda"
trigger1 = Var(1) > 0
v = 1
value = -2

[State 2803]
type = VarAdd
trigger1 = Command = "renda"
trigger1 = Var(1) > 0
v = 1
value = -1

[State 2803]
type = ChangeAnim
trigger1 = Anim = 2803
trigger1 = Var(1) <= 0
value = 2601

[State 2803]
type = VelSet
trigger1 = Time = 0
y = -10

[State 2803]
type = VelAdd
trigger1 = Anim = 2803
y = -.25

[State 2803]
type = PlaySnd
trigger1 = Time = 0
value = S2600,0

[State 2803]
type = PlaySnd
trigger1 = Time = 0
value = S2600,1

[State 2803]
type = PlaySnd
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 1
value = S10,2
channel = 2
ignorehitpause = 1

[State 2803]
type = PlaySnd
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 1
value = S6,0
channel = 2
ignorehitpause = 1

[State 2803]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 1
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20,-70
bindtime = -1
removetime = 30
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 2803]
type = HitDef
triggerall = Var(1) > 7
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = A, HA
damage = 30,3
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = 0,-9
ground.cornerpush.veloff = 0
air.velocity = 0,-9
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2803]
type = HitDef
triggerall = Var(1) <= 7
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = A, HA
damage = 40,4
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -10,-17
ground.cornerpush.veloff = -Vel X
air.velocity = -10,-17
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2803]
type = VarSet
triggerall = Var(1) <= 7
trigger1 = MoveHit
var(6) = 3

[State 2803]
type = RemoveExplod
trigger1 = Anim = 2601
trigger1 = AnimElem = 1
ID = 2996

[State 2803]
type = AfterImageTime
trigger1 = Anim = 2601
trigger1 = AnimElem = 1
time = 0
;---------------------------------------------------------------------------
;真龍拳失敗
[Statedef 2805]
type = A
movetype = A
physics = A
ctrl = 0
velset = 0,0

[State 2805]
type = Explod
trigger1 = Time = 0
anim = 2660
ID = 2660
postype = P1
bindtime = 1
removetime = -1
removeongethit = 1
pos = 0,-Pos Y
sprpriority = -3
ownpal = 1
pausemovetime = 10

[State 2805]
type = RemoveExplod
trigger1 = Anim = 2601
trigger1 = NumExplod(2660)
ID = 2660

[State 2805]
type = Explod
trigger1 = Anim = 2601
trigger1 = !NumExplod(2661)
anim = 2661
ID = 2661
postype = P1
bindtime = 1
removetime = -2
pos = 0,-Pos Y
sprpriority = -3
ownpal = 1
persistent = 0

[State 2805]
type = VarSet
trigger1 = Time = 0
v = 1
value = 72

[State 2805]
type = VarAdd
trigger1 = Command != "renda"
trigger1 = Var(1) > 0
v = 1
value = -2

[State 2805]
type = VarAdd
trigger1 = Command = "renda"
trigger1 = Var(1) > 0
v = 1
value = -1

[State 2805]
type = ChangeAnim
trigger1 = Anim != 2601
trigger1 = AnimElem = 8,> 0
trigger1 = Var(1) <= 0
value = 2601

[State 2805]
type = VelSet
trigger1 = Time = 0
y = -10

[State 2805]
type = VelAdd
trigger1 = Anim = 2800
y = -.25

[State 2805]
type = PlaySnd
trigger1 = Time = 0
value = S2600,0

[State 2805]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2600,1

[State 2805]
type = PlaySnd
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 1
value = S10,1
channel = 2
ignorehitpause = 1

[State 2805]
type = PlaySnd
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 1
value = S6,0
channel = 2
ignorehitpause = 1

[State 2805]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 1
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20,-70
bindtime = -1
removetime = 30
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 2805]
type = HitDef
triggerall = Var(1) > 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
trigger7 = AnimElem = 5
trigger8 = AnimElem = 6
trigger9 = AnimElem = 7
trigger10 = AnimElem = 8
attr = A, HA
damage = 30,3
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound   = -1,-1
guardsound = -1,-1
kill = 0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = 0,-6
ground.cornerpush.veloff = 0
air.velocity = 0,-6
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2805]
type = HitDef
triggerall = Var(1) <= 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
trigger7 = AnimElem = 5
trigger8 = AnimElem = 6
trigger9 = AnimElem = 7
trigger10 = AnimElem = 8
attr = A, HA
damage = 40,4
animtype = Hard
priority = 7,hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound   = S10,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime  = 40
ground.velocity = -10,-17
ground.cornerpush.veloff = -Vel X
air.velocity = -10,-17
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3
getpower = 0,0
givepower = 5,0

[State 2805]
type = VarSet
triggerall = Var(1) <= 7
trigger1 = MoveHit
var(6) = 3

[State 2805]
type = RemoveExplod
trigger1 = Anim = 2601
trigger1 = AnimElem = 1
ID = 2996

[State 2805]
type = AfterImageTime
trigger1 = Anim = 2601
trigger1 = AnimElem = 1
time = 0
;---------------------------------------------------------------------------
;天魔豪斬空
[Statedef 3000]
type = A
movetype= A
physics = N
velset = Vel X/10,Vel Y/10
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000]
type = VarSet
trigger1 = Time = 0
var(5) = 1

[State 3000]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 3000]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 3050]
type = PosFreeze
trigger1 = AnimElem = 4,<= 0

[State 3000]
type = AfterImage
trigger1 = AnimElem = 4
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3000,0
persistent = 0

[State 3000]
type = PlaySnd
trigger1 = Time%13 = 3
trigger1 = AnimElem = 7,>= 0
trigger1 = AnimElem = 31,< 0
value = S1,3

[State 3000]
type = PlaySnd
trigger1 = Time%13 = 3
trigger1 = AnimElem = 7,>= 0
trigger1 = AnimElem = 31,< 0
value = S3000,1
channel = 1
volume = 255

[State 3000]
type = SuperPause
trigger1 = AnimElem = 3
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-60
Poweradd = -1000
p2defmul = 1

[State 3000]
type = Helper
trigger1 = AnimElem = 3,= 40
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-Ceil(ScreenPos Y)+ifelse(Vel Y<0,Vel Y*100,0)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 3000]
type = Pause
trigger1 = AnimElem = 3,= 39
Time = 8
movetime = 8

[State 3000];背景
type = Explod
trigger1 = AnimElem = 3
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
pausemovetime = 10
sprpriority = -5
ownpal = 1

[State 3000];カットイン移動中
type = Explod
trigger1 = AnimElem = 3
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 3000];カットイン停止
type = Explod
trigger1 = AnimElem = 3,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 3000]
type = VarRandom
trigger1 = 1
v = 3
range = 0,100

[State 3000]
type = VarRandom
trigger1 = 1
v = 4
range = -100,0

[State 3000]
type = Helper
trigger1 = Time%7 = 1 || Time%7 = 4
trigger1 = Time >= 55
trigger1 = Time < 120
helpertype = Normal
ID = 3050
name = "Tenma Gou Zankuu"
postype = p1
pos = Var(3),Var(4)
stateno = 3050
ownpal = 1

[State 3000]
type = AfterImageTime
trigger1 = AnimElem = 37
time = 0

[State 3000]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y > -20
y = 0

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;豪斬空
[Statedef 3050]
type = A
movetype = A
physics = N
anim = 3050
ctrl = 0
sprpriority = 2

[State 3050]
type = ParentVarSet
trigger1 = MoveHit = 1
fvar(1) = Parent,FVar(1)*.93

[State 3050]
type = AttackMulSet
trigger1 = 1
value = Parent,FVar(1)*Parent,FVar(2)

[State 3050]
type = Explod
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 3050] 
type = Explod
trigger1 = Time = 0
anim = 3010+(Random<500)
ID = 3010
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
removetime = -2
shadow = -1
ownpal = 1

[State 3050]
type = VarSet
trigger1 = Time = 0
var(0) = 8

[State 3050]
type = VelSet
trigger1 = Time = 2
x = Var(0)*cos(Pi/8)
y = Var(0)*sin(Pi/8)

[State 3050]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3050]
type = NotHitBy
trigger1 = 1
time = 1
value = , AA, AT
ignorehitpause = 1

[State 3050]
type = HitOverride
trigger1 = 1
time = 1
stateno = 3051
attr = SCA, AP
ignorehitpause = 1

[State 3050]
type = ParentVarSet
trigger1 = MoveHit = 1
var(7) = 1

[State 3050]
type = ParentVarSet
trigger1 = MoveGuarded = 1
var(7) = 2

[State 3050]
type = HitDef
trigger1 = Time = 2
attr = A, HP
damage = 25,3
animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0,10
guard.sparkno = S8010
sparkno = S8003
sparkxy = 0, 0
hitsound   = -1,-1
guardsound = -1,-1
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -5,7
air.velocity = -5,7
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
down.velocity = -2,-3
fall = 1
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 3050]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeBodyDist < -40
trigger3 = Movecontact
value = 3051
;---------------------------------------------------------------------------
;豪斬空消滅
[Statedef 3051]
anim = 1071
velset = 0,0
movehitpersist = 1

[State 3051]
type = Destroyself
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;滅殺豪螺旋
;滅殺！
[Statedef 3100]
type = S
movetype = A
physics = N
anim = 3100
velset = 0,0
ctrl = 0

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0,2

[State 3100]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 10

[State 3100]
type = SuperPause
trigger1 = AnimElem = 5
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-70
Poweradd = -1000
p2defmul = 1

[State 3100]
type = Helper
trigger1 = AnimElem = 6
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-60,110)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 3100]
type = Pause
trigger1 = AnimElem = 6,= -1
trigger1 = EnemyNear,Anim != [120,159]
time = 8
movetime = 8

[State 3100];背景
type = Explod
trigger1 = AnimElem = 5
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 3100];カットイン移動中
type = Explod
trigger1 = AnimElem = 5
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 3100];カットイン停止
type = Explod
trigger1 = AnimElem = 5,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 3100]
type = AfterImage
trigger1 = AnimElem = 6
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 3100]
type = AssertSpecial
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable
ignorehitpause = 1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 8
value = S1,4

[State 3100]
type = VelSet
trigger1 = AnimElem = 8
y = -6

[State 3100]
type = HitDef
trigger1 = AnimElem = 8
attr = A, HA
animtype  = Medium
damage = 60,6
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 8,8
sparkno = S8003
sparkxy = -10,-50
guard.sparkno = S8010
hitsound  = S10,6
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = P2Dist X/8,-8
air.type = Low
air.velocity = P2Dist X/8,-8
fall.recover = 0
fall = 1
yaccel = .6
getpower = 0,0
givepower = 10,0

[State 3100]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
;---------------------------------------------------------------------------
[Statedef 3101]
type = A
movetype= A
physics = N
anim = 3101
ctrl = 0
sprpriority = 2

[State 3101]
type = AssertSpecial
triggerall = AnimElem = 1
trigger1 = EnemyNear,Anim != [120,159]
trigger1 = EnemyNear,Ctrl = 1
flag = unguardable
ignorehitpause = 1

[State 3101]
type = ChangeState
trigger1 = Time = 40
value = 3102

[State 3101]
type = VelAdd
trigger1 = Time > 0
y = .1

[State 3101]
type = PlaySnd
trigger1 = Time%6 = 0
value = S5,1

[State 3101]
type = PlaySnd
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 0
value = S10,6
channel = 2
ignorehitpause = 1

[State 3101]
type = PlaySnd
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 0
value = S6,0
channel = 2
ignorehitpause = 1

[State 3101]
type = HitDef
trigger1 = Time%4 = 0
attr = A, HA
animtype  = Medium
damage = 40,4
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 1,1
sparkno = S8003
sparkxy = -10,-60
guard.sparkno = S8010
hitsound  = -1,-1
guardsound = -1,-1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 3,-9
air.type = High
air.velocity = 0,-5
fall.recover = 0
fall = 1
yaccel = .6
getpower = 0,0
givepower = 10,0

[State 3101]
type = TargetVelSet
trigger1 = NumTarget
trigger1 = Target,Vel Y < -20
trigger1 = Target,Time >= 3
y = 0
;---------------------------------------------------------------------------
[Statedef 3102]
type = A
movetype= A
physics = A
anim = 3102
ctrl = 0
sprpriority = 2

[State 3101]
type = VelAdd
trigger1 = Anim = 3102
y = -.3

[State 3102]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 3103

[State 3102]
type = AfterImageTime
trigger1 = AnimElem = 3
time = 0

[State 3102]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 2996

[State 3102]
type = PlaySnd
trigger1 = Anim = 3102
trigger1 = AnimElem = 3
value = S1,5

[State 3102]
type = PlaySnd
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 9
value = S10,6
channel = 2
ignorehitpause = 1

[State 3102]
type = PlaySnd
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 9
value = S6,0
channel = 2
ignorehitpause = 1

[State 3102]
type = HitDef
trigger1 = Time = 4
attr = A, HA
animtype  = diagup
damage  = 100,10
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 10,10
sparkno = S8003
sparkxy = -10,-60
guard.sparkno = S8010
hitsound  = -1,-1
guardsound = -1,-1
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10,-8
guard.velocity = -10
air.type = High
air.velocity = -10,-10
fall = 1
fall.recover = 0
p2facing = 1
getpower = 0,0
givepower = 10,0
yaccel = .6
;-----------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;瞬獄殺
[Statedef 3200]
type = S
movetype = A
physics = N
anim = 3200
ctrl = 0
velset = 0,0

[State 3200];背景パレット変更…できない
type = null;RemapPal
trigger1 = Time = 0
trigger1 = PalNo = [1,6]
source = 1,4
dest = 4,PalNo

[State 3200];背景パレット変更…できない
type = null;RemapPal
trigger1 = Time = 0
trigger1 = PalNo = 9
source = 1,4
dest = 4,1

[State 3200];背景パレット変更…できない
type = null;RemapPal
trigger1 = Time = 0
trigger1 = PalNo = 12
source = 1,4
dest = 4,4

[State 3200]
type = AfterImage
trigger1 = AnimElem = 2,= 39
time = -1
length = 10
paladd = 20,20,50
timegap = 2
framegap = 4

[State 3200]
type = NotHitBy
trigger1 = AnimElem = 2,>= 0
trigger1 = AnimElem = 3,<= 9
value = SCA

[State 3200]
type = VelSet
trigger1 = AnimElem = 3
x = 4

[State 3200]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 3200]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1300,1

[State 3200]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 17

[State 3200]
type = SuperPause
trigger1 = AnimElem = 2
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -70,5
Poweradd = -3000
p2defmul = 1

[State 3200]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
ID = 2996
name = "BG"
postype = p1
pos = ifelse(facing=1,-30,140)-Ceil(ScreenPos X)*facing,-76-Ceil(ScreenPos Y)
stateno = 2996
facing = facing
ownpal = 1
pausemovetime = 10

[State 3200]
type = Pause
trigger1 = AnimElem = 3,= -1
time = 8
movetime = 8

[State 3200];背景
type = Explod
trigger1 = AnimElem = 2
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 3200];カットイン移動中
type = Explod
trigger1 = AnimElem = 2
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 3200];カットイン停止
type = Explod
trigger1 = AnimElem = 2,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 3200]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HT
hitflag = M-
sparkno = -1
priority = 1, Miss
p2facing = 1
p1stateno = 3201
p2stateno = 3205

[State 3200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;瞬獄殺成功
[Statedef 3201]
type = S
movetype = A
physics = S
anim = 3201
ctrl = 0
velset = 0,0

[State 3201]
type = ChangeAnim
trigger1 = Target,AnimElem = 1,<= 1
trigger1 = Target,Anim = 3205
value = 3201

[State 3201]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 3201]
type = PlaySnd
trigger1 = Time = 0
value = S800,0

[State 3201]
type = Explod
trigger1 = Time = 0
anim = 899
ID = 899
postype = P1
pos = 30,0
sprpriority = 3
ownpal = 1

[State 3201]
type = VarRandom
trigger1 = 1
v = 3
range = -80,80

[State 3201]
type = VarRandom
trigger1 = 1
v = 4
range = -180,0

[State 3201]
type = Explod
trigger1 = AnimElem = 2,= 5
trigger2 = AnimElem = 2,= 9
trigger3 = AnimElem = 2,= 12
trigger4 = AnimElem = 2,= 16
trigger5 = AnimElem = 2,= 19
trigger6 = AnimElem = 2,= 22
trigger7 = AnimElem = 2,= 26
trigger8 = AnimElem = 2,= 29
trigger9 = AnimElem = 2,= 33
trigger10 = AnimElem = 2,= 36
trigger11 = AnimElem = 2,= 40
trigger12 = AnimElem = 2,= 43
trigger13 = AnimElem = 2,= 46
trigger14 = AnimElem = 2,= 50
trigger15 = AnimElem = 2,= 53
trigger16 = AnimElem = 2,= 57
anim = 8003
ID = 8003
pos = Var(3),Var(4)
postype = p1
sprpriority = 5
ownpal = 1

[State 3201]
type = PlaySnd
trigger1 = AnimElem = 2,= 5
trigger2 = AnimElem = 2,= 9
trigger3 = AnimElem = 2,= 12
trigger4 = AnimElem = 2,= 16
trigger5 = AnimElem = 2,= 19
trigger6 = AnimElem = 2,= 22
trigger7 = AnimElem = 2,= 26
trigger8 = AnimElem = 2,= 29
trigger9 = AnimElem = 2,= 33
trigger10 = AnimElem = 2,= 36
trigger11 = AnimElem = 2,= 40
trigger12 = AnimElem = 2,= 43
trigger13 = AnimElem = 2,= 46
trigger14 = AnimElem = 2,= 50
trigger15 = AnimElem = 2,= 53
trigger16 = AnimElem = 2,= 57
value = S10,1+(Random<500)
channel = 2

[State 3200]
type = HitAdd
trigger1 = AnimElem = 2,= 9
trigger2 = AnimElem = 2,= 12
trigger3 = AnimElem = 2,= 16
trigger4 = AnimElem = 2,= 19
trigger5 = AnimElem = 2,= 22
trigger6 = AnimElem = 2,= 26
trigger7 = AnimElem = 2,= 29
trigger8 = AnimElem = 2,= 33
trigger9 = AnimElem = 2,= 36
trigger10 = AnimElem = 2,= 40
trigger11 = AnimElem = 2,= 43
trigger12 = AnimElem = 2,= 46
trigger13 = AnimElem = 2,= 50
trigger14 = AnimElem = 2,= 53
trigger15 = AnimElem = 2,= 57
value = 1

[State 3201]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30, 0

[State 3201]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -500

[State 3201]
type = PlaySnd
trigger1 = AnimElem = 3,= [0,2]
trigger1 = Target,Life = 0
value = S3200,0
persistent = 0

[State 3201]
type = EnvColor
trigger1 = AnimElem = 2,>= 0
trigger1 = AnimElem = 3,< 0
value = 255,255,255
time = 1
under = 1

[State 3201]
type = Explod
trigger1 = AnimElem = 3
anim = 3250
ID = 3250
postype = P1
pos = 7,-70
facing = facing
sprpriority = 3
ownpal = 1

[State 3201]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3205]
type = S
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 3205]
type = ChangeAnim2
trigger1 = Time = 0
value = 3205

[State 3205]
type = SelfState
trigger1 = life > 0
trigger1 = AnimTime = 0
value = 5120

[State 3205]
type = SelfState
trigger1 = life = 0
trigger1 = AnimTime = 0
value = 5150
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;モードチェンジtoリュウ
[Statedef 4000]
type = S
movetype= I
physics = S

[State 4000]
type = ChangeState
trigger1 = Time = 0
value = 4009

;モードチェンジtoケン
[Statedef 4001]
type = S
movetype= I
physics = S

[State 4001]
type = ChangeState
trigger1 = Time = 0
value = 4009

;モードチェンジto豪鬼
[Statedef 4002]
type = S
movetype= I
physics = S

[State 4002]
type = ChangeState
trigger1 = Time = 0
value = 4009
;-----------------------------------------------------------------------------
[Statedef 4009]
type = S
movetype= I
physics = S
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = -1

[State 4000]
type = VarSet
trigger1 = AnimElem = 3
v = 0
value = PrevStateNo-4000

[State 4000,1];本体のカラー変更…出来ない
type = null;RemapPal
trigger1 = PalNo = [7,9]
trigger1 = AnimElem = 3
source = 1,4
dest = Var(0)+1,1

[State 4000,1];本体のカラー変更…出来ない
type = null;RemapPal
trigger1 = PalNo = [10,12]
trigger1 = AnimElem = 3
source = 1,4
dest = Var(0)+1,4

[State 4000,1];本体のカラー変更…出来ない
type = null;RemapPal
trigger1 = PalNo = [1,6]
trigger1 = AnimElem = 3
source = 1,4
dest = Var(0)+1,PalNo

[State 4000,4]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0,Var(0)

[State 4000,5]
type = Explod
trigger1 = Time = 1
anim = 7000
ID = 7000
postype = P1
bindtime = 1
pos = 40,0
sprpriority = 4
ownpal = 1
pausemovetime = 20

[State 4000,5]
type = Explod
trigger1 = Var(0) != 0
trigger1 = AnimElem = 4
anim = 4001
ID = 4001
postype = P1
bindtime = 1
pos = 20,0
sprpriority = 3
ownpal = 1
supermovetime = 39
pausemovetime = 10

[State 4000]
type = SuperPause
trigger1 = AnimElem = 4
Time = 39
movetime = 39
Sound = S2999,0
Anim = S2999
Pos = -30,-60
Poweradd = -1000*(PalNo<10)
p2defmul = 1

[State 4000]
type = Pause
trigger1 = AnimElem = 5,= -1
time = 10
movetime = 10

[State 4000];背景
type = Explod
trigger1 = AnimElem = 4
ID = 2997
anim = 2997
postype = left
pos = 0, 0
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 39
sprpriority = -5
ownpal = 1

[State 4000];カットイン移動中
type = Explod
trigger1 = AnimElem = 3
anim = 9999
ID = 9999
postype = Back
pos = -200, 0
bindtime = 1
removetime = 10
supermovetime = 10
sprpriority = -4
removeongethit = 1
ownpal = 1
vel = 40,0
accel = -4,0

[State 4000];カットイン停止
type = Explod
trigger1 = AnimElem = 3,= 10
anim = 9999
ID = 9999
postype = Back
pos = 0, 0
bindtime = -1
removetime = 29
supermovetime = 29
sprpriority = -4
removeongethit = 1
ownpal = 1

[State 4000,5]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 4001

[State 4000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

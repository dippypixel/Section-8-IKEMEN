
[StateDef 599]
ctrl = 0

[State 599]
type = ChangeState
trigger1=!Ishelper
value = 0
ctrl = 1

[State 599]
type = NotHitBy
trigger1=1
value = SCA

[State 599]
type = AssertSpecial
trigger1=Ishelper
flag = invisible

[State 599]
type = parentvarset
trigger1=command="a"&&root,command="a"
trigger2=command="b"&&root,command="b"
trigger3=command="c"&&root,command="c"
trigger4=command="x"&&root,command="x"
trigger5=command="y"&&root,command="y"
trigger6=command="z"&&root,command="z"
var(14) = -1

[State 599]
type = parentvarset
trigger1=command!="a"&&root,command="a"
trigger2=command!="b"&&root,command="b"
trigger3=command!="c"&&root,command="c"
trigger4=command!="x"&&root,command="x"
trigger5=command!="y"&&root,command="y"
trigger6=command!="z"&&root,command="z"
var(15) = 5;(1`9)9‚Í‘ÎAI—p¸—´ƒnƒ‚ ‚è

[State 599]
type = parentvarset
trigger1=parent,var(15)>0
var(14) = 1

[State 599]
type = destroyself
trigger1=Parent,Var(14)!=0

[StateDef -3]

[State -3]
type = Helper
trigger1 = Var(14) = 0
trigger1 = NumHelper(599) = 0
name = "AI"
stateno = 599
pos = 0,0
postype = p1
keyctrl = 1
ownpal = 0
ID = 599

[State -3]
type = DisplayToClipboard
trigger1 = 1
text = "BodyDist=%d DistY=%d"
params = P2BodyDist X,P2Dist Y

;AI
[State -1, ’â~]
type = ChangeState
value = 0
triggerall = Var(15)
triggerall = statetype != A
triggerall = stateno != 0
trigger1 = ctrl
trigger1 = roundstate >= 3
;---------------------------------------------------------------------------
[State -1, u–E]
type = ChangeState
value = 3200
triggerall = Var(15)
triggerall = Var(6) = [0,1]
triggerall = Var(0) = 2
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = P2MoveType = I && P2StateNo != [1000,4999]
triggerall = P2BodyDist X < 50
trigger1 = Ctrl
trigger2 = StateNo = [200,299]
trigger3 = StateNo = [400,499]
trigger4 = PalNo = 7 || PalNo = 10
trigger4 = StateNo = [300,399]
trigger5 = PalNo = 7 || PalNo = 10
trigger5 = StateNo = [1000,1002]
trigger6 = PalNo = 7 || PalNo = 10
trigger6 = StateNo = [1100,1102]
;---------------------------------------------------------------------------------
[State -1, ƒEƒ‹ƒRƒ“”Å_—´Œ]
type = ChangeState
value = 2800
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = power >= 2000
triggerall = (Var(0) = 1 && PalNo = 10) || PalNo = [11,12]
triggerall = statetype != A || stateno = 101
trigger1 = ctrl
trigger2 = StateNo = [200,299]
trigger3 = StateNo = [400,499]
trigger4 = PalNo = [10,12]
trigger4 = StateNo = [1000,1002]
trigger5 = PalNo = [10,12]
trigger5 = StateNo = [1100,1102]
triggerall = P2MoveType = A
triggerall = EnemyNear,AnimElem = 2,>= 0
triggerall = P2Dist Y > -30
triggerall = P2BodyDist X <= 30+EnemyNear,Vel X*5
triggerall = P2StateNo < 1000
;---------------------------------------------------------------------------------
[State -1, ^¥¸—´Œ]
type = ChangeState
value = 2200
triggerall = Var(15)
triggerall = Var(6) = [0,1]
triggerall = power >= 1000
triggerall = Var(0) = 0 || PalNo = [11,12]
triggerall = Random < 8*(2**Var(15))
trigger1 = statetype != A
trigger1 = ctrl || (StateNo = [200,299]) || (StateNo = [400,499])
trigger1 = P2MoveType = A
trigger1 = EnemyNear,AnimTime >= 12 || PalNo < 10
trigger1 = P2Dist X > 0
trigger1 = P2BodyDist X <= 10+EnemyNear,Vel X*10
trigger1 = P2StateType != A

trigger2 = P2StateType != A
trigger2 = statetype != A
trigger2 = ctrl || (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = P2MoveType = A
trigger2 = EnemyNear,AnimTime >= 12 || PalNo < 10
trigger2 = P2BodyDist X <= 20+EnemyNear,Vel X*10
;---------------------------------------------------------------------------
;ãUŒ‚
[State -1, ‹üãp]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = statetype != A || stateno = 101
triggerall = ctrl
triggerall = Random < 4*(2**Var(15)) || P2MoveType = H
trigger1 = P2BodyDist X <= 40
trigger1 = P2StateType = C

[State -1, ‹üãk]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = statetype != A || stateno = 101
triggerall = ctrl
triggerall = Random < 4*(2**Var(15)) || P2MoveType = H
trigger1 = P2BodyDist X <= 50
trigger1 = P2StateType != A
trigger1 = P2StateType != L

[State -1, —§‚¿ãk]
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = statetype != A || stateno = 101
triggerall = ctrl
triggerall = Random < 4*(2**Var(15)) || P2MoveType = H
trigger1 = P2BodyDist X <= 80
trigger1 = P2StateType != A
trigger1 = P2StateType != L

[State -3, ˆê•¶šR‚è]
type = ChangeState
value = 251
triggerall = Var(15)
triggerall = Power < 1000
triggerall = Var(0) = 1
triggerall = P2BodyDist X <= 100
trigger1 = stateno = 230 && movehit = [1,2]
trigger2 = PalNo > 10
trigger2 = Power > 1000
trigger2 = (stateno = [200,210]) || (stateno = [230,241]) || (stateno = [400,410]) || (stateno = [430,440])

[State -3, ‹ü’†p]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = Random < 4*(2**Var(15))
trigger1 = P2BodyDist X <= 5
trigger1 = ctrl
trigger1 = P2StateType != A
trigger1 = P2MoveType = H
trigger1 = Facing = EnemyNear,Facing
;---------------------------------------------------------------------------
[State -3, ¾•—v—‹‹r]
type = ChangeState
value = 2700
triggerall = Var(15) && Var(16)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = power >= 1000
triggerall = Var(0) = 1 || PalNo = [11,12]
triggerall = P2MoveType = H && P2StateNo != [1550,1559]
trigger1 = (StateNo = [1500,1502]) && MoveHit
trigger1 = P2BodyDist X < 50

;‘«“Œã‰“‹——£’ÇŒ‚‚`(ƒ_ƒbƒVƒ…`)
[State -3, ‘Oƒ_ƒbƒVƒ…]
type = ChangeState
value = 100+Var(0)
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = StateNo = 0
triggerall = statetype != A
triggerall = Random < 500
trigger1 = P2Dist X >= 50
trigger1 = NumTarget && Var(16) = 1

[State -3, —§‚¿’†p]
type = ChangeState
value = 210
triggerall = Var(15)
triggerall = Var(16)
triggerall = statetype != A
trigger1 = Ctrl
trigger1 = P2BodyDist X <= 40
trigger1 = P2BodyDist Y >= -55

[State -1, _—´Œ]
type = ChangeState
value = 2600
triggerall = Var(15) && Var(16)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = power >= 1000
triggerall = Var(0) = 1 || PalNo = [11,12]
trigger1 = stateno = 210
trigger1 = movehit = 1 && Random < 500

[State -3, —§‹­‚jor‹ü‹­‚o]
type = ChangeState
value = 250
triggerall = Var(15)
triggerall = Var(16) = 1
trigger1 = stateno = 210 && movehit
;---------------------------------------------------------------------------
;‘«“Œã‰“‹——£’ÇŒ‚‚a(‹­•KE’P”­`)
[State -1, ‹­—³Šªor‘«“]
type = ChangeState
value = 1202+(Random>700||Var(0)>0)*300
triggerall = Var(15)
triggerall = Var(16)
triggerall = Ctrl && StateNo < 100
triggerall = statetype != A
triggerall = Random > 900
trigger1 = P2Dist X = [150,200]
trigger1 = NumTarget

[State -3, ^‹ó/–ÅE]
type = ChangeState
value = 2000
triggerall = Var(15) && Var(16)
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = StateNo = 1202 || StateNo = 1502
trigger1 = (MoveHit = [1,2]) && EnemyNear,Pos Y < -10
;---------------------------------------------------------------------------

[State -3, ‹­‘«“]
type = ChangeState
value = 1502
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Random < 50*(2**Var(15))
triggerall = PalNo >= 10
triggerall = Var(0) = 0 || PalNo = [11,12]
triggerall = Var(6) = [0,1]
triggerall = StateType != A
trigger1 = StateNo = 220|| StateNo = 250
trigger1 = MoveHit

[State -3, ’†‘«“]
type = ChangeState
value = 1501
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Random < 50*(2**Var(15))
triggerall = PalNo >= 10
triggerall = Var(0) = 0 || PalNo = [11,12]
triggerall = Var(6) = [0,1]
triggerall = StateType != A
trigger1 = (StateNo=210&&P2StateType!=A)||StateNo=410||StateNo=440
trigger1 = MoveHit
trigger1 = P2BodyDist X <= 70

[State -3, ã‘«“]
type = ChangeState
value = 1500
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Random < 50*(2**Var(15))
triggerall = PalNo >= 10
triggerall = Var(0) = 0 || PalNo = [11,12]
triggerall = Var(6) = [0,1]
triggerall = StateType != A
trigger1 = StateNo=200||StateNo=230||StateNo=400||StateNo=430
trigger1 = MoveHit
trigger1 = P2BodyDist X = [20,60]
;---------------------------------------------------------------------------
;ƒGƒŠƒAƒ‹
;SJ‚Í-1‚Åˆ—
[State -3, ‹ü‹­p]
type = ChangeState
value = 420
triggerall = StateType != A
triggerall = Var(15)
triggerall = P2BodyDist X <= 15
triggerall = Var(0) != 2 || Random < 200
triggerall = Power < 1000 || Var(0) = 1 || NumHelper(910)
trigger1 = stateno = 200 && movecontact && P2StateType != A
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = Ctrl
trigger5 = Var(0) = 0
trigger5 = NumHelper(910)
trigger5 = EnemyNear,Ctrl = 0

[State 60]
type = VarSet
triggerall = Var(15)
trigger1 = StateNo = 40
trigger1 = Time = 1
sysvar(1) = -1

[State 60]
type = VarSet
triggerall = Var(15)
trigger1 = StateNo = 60
trigger2 = StateNo = 40
trigger2 = (PrevStateNo = [100,102]) || (P2BodyDist X = [90,150])
sysvar(1) = 1

[State -3, ƒPƒ“—p‹ó’†k]
type = ChangeState
value = 641
triggerall = Var(15)
triggerall = statetype = A && stateno != 101
triggerall = ctrl
trigger1 = Var(0) = 1
trigger1 = Var(5) = 1
trigger1 = P2Dist Y = [-70,0]
trigger1 = P2BodyDist X = [0,80]

[State -3, ‹óãp]
type = ChangeState
value = 600
triggerall = Var(15)
triggerall = statetype = A && stateno != 101
triggerall = ctrl
trigger1 = Var(0) != 1
trigger1 = Var(5) = 1 || Random > 800
trigger1 = P2Dist Y = [-70,90]
trigger1 = P2BodyDist X = [0,80]
triggerall = P2StateType != L && P2StateNo != [5070,5071]

[State -3, ‹óãk]
type = ChangeState
value = 630
triggerall = Var(15)
triggerall = statetype = A && stateno != 101
triggerall = NumProj = 0
trigger1 = (Var(5) = 1) && (stateno = 600) && (movecontact)
trigger1 = P2BodyDist X = [0,30]
trigger2 = ctrl
trigger2 = Pos Y > -80
trigger2 = P2Dist X = [-20,20]

[State -3, ‘OR‚è]
type = ChangeState
value = 645
triggerall = Var(15)
triggerall = StateType = A && stateno != 101
trigger1 = (stateno = 630) && (movecontact)
trigger1 = P2Dist X >= 0
trigger2 = (stateno = 600) && (movecontact)
trigger2 = P2Dist X >= 0
trigger2 = Var(5) = 0 

[State -3, ‹­‹ó’†—³Šªù•—‹r/—³Šªa‹ó‹r]
type = ChangeState
value = 1252
triggerall = Var(15)
triggerall = Var(6) = [0,1]
triggerall = StateType = A && stateno != 101
trigger1 = Random > 300 || Var(0) != 0
trigger1 = StateNo = [641,645]
trigger1 = MoveHit
trigger1 = MoveHit = 1 || Var(0) != 0
trigger2 = StateNo = 620
trigger2 = AnimElem = 3

[State -3, ‹ó’†ù•—‹r]
type = ChangeState
value = 655
triggerall = Var(15)
triggerall = StateType = A && stateno != 101
trigger1 = StateNo = 645
trigger1 = MoveContact
trigger1 = MoveContact = 1 || Var(0) != 0 || Var(5) = 0
trigger2 = StateNo = 630
trigger2 = MoveContact
trigger2 = P2Dist X < 0

[State -3, ‹ó‹­p]
type = ChangeState
value = 620
triggerall = Var(15)
triggerall = statetype = A && stateno != 101
triggerall = ctrl
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= -130
trigger1 = Vel X < 0
trigger1 = !InGuardDist && StateNo != [120,159]


;‘å‘«`^‹ó—³Šª/SJC`“V–‚‹ón‹r
[State -3, ‹ü‹­k]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = Random < 500
triggerall = PalNo != [11,12]
triggerall = Var(0) = 2 || (Var(0)=0&&Power>=1000)
trigger1 = stateno=200||stateno=230||stateno=400||stateno=430
trigger1 = movehit
trigger1 = P2BodyDist X <= 60
trigger1 = P2MoveType = H

[State -3, ^‹ó—³Šª]
type = ChangeState
value = 2100
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = Var(0) = 0
triggerall = P2MoveType = H
triggerall = power >= 1000
trigger1 = StateNo = 450
trigger1 = MoveHit
trigger2 = StateNo = 410
trigger2 = MoveHit
trigger2 = P2BodyDist X <= 5
trigger3 = StateNo = 210
trigger3 = MoveHit
trigger3 = P2StateType = A

[State -3, SƒWƒƒƒ“ƒv]
type = ChangeState
value = 60
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = !Var(16)
triggerall = StateType != A
trigger1 = Var(0) != 0
trigger1 = Random < 1.2**Var(15)
trigger1 = ctrl
trigger1 = P2Dist X >= 150
trigger1 = P2StateType != L
trigger2 = Var(0) = 2
trigger2 = StateNo = 450
trigger2 = MoveHit
trigger3 = P2StateType = A
trigger3 = StateNo = 210
trigger3 = MoveHit

[State -1, ã“V–‚‹ón‹r]
type = ChangeState
value = 1350
triggerall = Var(15)
triggerall = Var(0) = 2
triggerall = PrevStateNo = 60
triggerall = P2StateType = L || P2StateNo = [5070,5071]
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Time > 3

[State -1, —§‚¿ãp]
type = ChangeState
value = 200
triggerall = Var(15)
triggerall = !Var(16)
triggerall = statetype != A || stateno = 101
triggerall = ctrl
triggerall = P2Dist Y >= -100 && P2StateType = A
trigger1 = P2BodyDist X <= 60

[State -1, —§‚¿’†p]
type = ChangeState
value = 210
triggerall = Var(15)
triggerall = P2StateType = A
triggerall = P2MoveType = H
trigger1 = StateNo = 200
trigger1 = MoveHit
;---------------------------------------------------------------------------------
;‹­¨20FHC
[State -3, —§‚¿‹­p]
type = ChangeState
value = 220
triggerall = Var(15) > 2
trigger1 = PalNo < 10
trigger1 = stateno=200||stateno=230||stateno=400||stateno=430
trigger1 = movehit
trigger1 = P2BodyDist X <= 30

[State -3, ¾•—v—‹‹r]
type = ChangeState
value = 2700
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = power >= 1000
triggerall = Var(0) = 1 || PalNo = [11,12]
triggerall = EnemyNear,BackEdgeDist < 100
triggerall = P2MoveType = H
trigger1 = StateNo = 220 && MoveHit

[State -3, ^‹ó/–ÅE]
type = ChangeState
value = 2000
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = NumExplod(7001) = 0
triggerall = NumExplod(7002) = 0
triggerall = power >= 1000
triggerall = Var(0) != 1
trigger1 = statetype != A
trigger1 = P2statetype != A
trigger1 = P2statetype != L
trigger1 = ctrl
trigger1 = P2StateNo != [120,159]
trigger1 = EnemyNear,Ctrl = 0
trigger1 = EnemyNear,AnimTime > 20 || (Var(0)=0 && Random > 900 && Power >= 2000)
trigger2 = (StateNo = 220 || (StateNo = [250,251]) || ((StateNo = [320,325]) && AnimElem = 5,>= 0)) && MoveHit
trigger2 = P2MoveType = H
trigger3 = PalNo = [10,12]
trigger3 = StateNo = [1000,1002]
trigger3 = P2StateNo = [5000,5011]
trigger3 = NumHelper(1050)

;‘å‘«`^‹ó—³Šª
[State -3, ‹ü‹­k]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = Random < 200
triggerall = Var(0) = 0 || PalNo = [11,12]
trigger1 = stateno=200||stateno=230||stateno=400||stateno=430
trigger1 = movehit
trigger1 = P2BodyDist X <= 50
trigger1 = P2MoveType = H

[State -3, ^‹ó—³Šª]
type = ChangeState
value = 2100
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = power >= 1000
triggerall = Var(0) = 0 || PalNo = [11,12]
triggerall = P2MoveType = H
trigger1 = StateNo = 450
trigger1 = MoveHit
trigger2 = StateNo = 410
trigger2 = MoveHit
trigger2 = P2BodyDist X < 5
;---------------------------------------------------------------------------

[State -1, ½œŠ„‚è/“ªŠW”jE]
type = ChangeState
value = 300+(Var(0)=2)*10
triggerall = Var(15) > 2
triggerall = Var(10) = 0
triggerall = Var(0) != 1 || PalNo = [11,12]
triggerall = Random < 2*(2**Var(15))
triggerall = P2StateType = C
trigger1 = stateno = 400 && moveguarded
trigger2 = stateno = 430 && moveguarded
;---------------------------------------------------------------------------
;’†‘«`”g“®A¸—´—ô”j
[State -3, ‹ü’†k]
type = ChangeState
value = 440
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2StateType != L
trigger2 = Random < 90
trigger1 = stateno=200||stateno=230||stateno=400||stateno=430
trigger1 = movehit
trigger1 = P2BodyDist X <= 40
trigger1 = Power < 1000 || Var(0) != 0
trigger2 = ctrl
trigger2 = P2StateType != A
trigger2 = P2BodyDist X = [50,70]

[State -1, ’†—³Šªù•—‹ræùŠ„‚è]
type = ChangeState
value = 1211
triggerall = Var(15)
triggerall = Var(0) = 1 || PalNo = [11,12]
triggerall = Var(6) = [0,1]
trigger1 = StateNo = 410 || StateNo = 440
trigger1 = MoveHit
trigger1 = P2StateType = S
trigger1 = P2MoveType = H

[State -3, ‹­”g“®Œ]
type = ChangeState
value = 1002
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = PalNo >= 10
triggerall = Var(6) = [0,1]
triggerall = StateType != A
trigger1 = (StateNo = [220,230]) || (StateNo = [400,410]) || (StateNo = [430,440])
trigger1 = MoveContact

[State -1, ³’†“ñ’i“Ë‚«]
type = ChangeState
value = 320
triggerall = Var(15) > 2
triggerall = Var(10) = 0
triggerall = (Var(0) = 0 && PalNo=10) || PalNo = [11,12]
triggerall = movehit = 1
trigger1 = stateno = [200,219]
trigger2 = stateno = [230,249]
trigger3 = stateno = [400,419]
trigger4 = stateno = [430,449]

[State -1, ‹SšL“Ë‚«]
type = ChangeState
value = 325
triggerall = Var(15) > 2
triggerall = Var(10) = 0
triggerall = Var(0) = 2 && PalNo=10
triggerall = movehit = 1
trigger1 = stateno = 200
trigger2 = stateno = 230
trigger3 = stateno = 400
trigger4 = stateno = 430

[State -3, ¸—´—ó”j/–ÅE‹¸—´]
type = ChangeState
value = 2500
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(6) = [0,1]
triggerall = power >= 1000
triggerall = Var(0) != 0
trigger1 = Random < 4*(2**Var(15))
trigger1 = statetype != A || stateno = 101
trigger1 = ctrl
trigger1 = P2MoveType = A
trigger1 = P2Dist X < 150
triggerall = P2StateType != A
trigger1 = P2StateNo < 1000
trigger2 = (StateNo = [220,230]) || (StateNo = [400,410]) || (StateNo = [430,440])
trigger2 = MoveHit
trigger2 = P2MoveType != I

trigger3 = Random < 16*(2**Var(15))
trigger3 = statetype != A
trigger3 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger3 = P2MoveType = A
trigger3 = P2BodyDist X <= 150+EnemyNear,Vel X*5
trigger3 = P2StateNo < 800

;---------------------------------------------------------------------------
[State -3, ‹­—³Šªù•—‹r/—³Šªa‹ó‹r]
type = ChangeState
value = 1202
triggerall = Var(15)
triggerall = Var(0) != 1
triggerall = Var(6) = [0,1]
trigger1 = StateNo = 410 || StateNo = 440
trigger1 = P2BodyDist X <= 50
trigger1 = MoveHit
trigger1 = P2StateType = S
trigger1 = P2MoveType = H
;---------------------------------------------------------------------------------
[State -1, “V–‚‹a‹ó]
type = ChangeState
value = 3000
triggerall = Var(15)
triggerall = RoundState = 2
triggerall = Var(0) = 2
triggerall = Var(6) = [0,1]
triggerall = statetype = A
triggerall = Power >= 1000
triggerall = PalNo = [10,12]
trigger1 = StateNo = 1202
trigger1 = AnimElem = 13,>= 0
trigger1 = MoveHit = 1
trigger2 = StateNo = 1252
trigger2 = AnimElem = 6,>= 0
trigger2 = MoveHit = 1
trigger3 = StateNo = [1210,1219]
trigger3 = Anim = 1211
trigger3 = MoveHit = 1

[State -3, ‹­”g“®Œ]
type = ChangeState
value = 1002
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Var(6) = [0,1]
triggerall = StateType != A
trigger1 = (StateNo = [220,230]) || (StateNo = [400,410]) || (StateNo = [430,440])
trigger1 = MoveContact
trigger2 = P2StateNo = [200,999]
trigger2 = EnemyNear,Ctrl = 0
trigger2 = Ctrl
trigger2 = P2BodyDist X = [80,150]
trigger2 = Random > 800

[State -3, ”g“®Œ]
type = ChangeState
value = ifelse(Var(0)=1,1002,1000+Random%3)
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Var(6) = [0,1]
triggerall = P2StateType != L
triggerall = StateType != A
trigger1 = Ctrl
trigger1 = P2BodyDist X > 150
trigger1 = Random > 850
trigger1 = P2StateType != A

[State -3, ‹­a‹ó”g“®Œ]
type = ChangeState
value = 1022
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Var(0) = [1,2]
triggerall = Var(6) = [0,1]
triggerall = P2StateType != L
triggerall = StateType = A
trigger1 = Ctrl
trigger1 = P2BodyDist X > 150
trigger1 = Random > 800
trigger1 = P2StateType != A
trigger1 = P2MoveType = A

[State -3, a‹ó”g“®Œ]
type = ChangeState
value = ifelse(Var(0)=1,1022,1020+Random%3)
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = Var(0) = [1,2]
triggerall = Var(6) = [0,1]
triggerall = P2StateType != L
triggerall = StateType = A && StateNo != 101
trigger1 = Ctrl
trigger1 = Pos Y < -100
trigger1 = P2BodyDist X > 150
trigger1 = Random > 900 || Var(6) = 1
trigger1 = P2StateType != A
;---------------------------------------------------------------------------------
[State -1, ƒ‚[ƒhƒ`ƒFƒ“ƒW]
type = ChangeState
value = 4001+Random%2
triggerall = Var(15)
triggerall = Var(0) = 0 && PalNo = [7,10]
triggerall = Power >= 1500
triggerall = Random > 950
triggerall = PalNo >= 7
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = P2Dist X > 150
trigger2 = StateNo = 220 || StateNo = 250 || StateNo = 420 || StateNo = 450
trigger2 = MoveContact
;---------------------------------------------------------------------------------
[State -1, ã(‹)¸—´Œ]
type = ChangeState
value = 1100
triggerall = RoundState = 2
triggerall = Var(15)
triggerall = Random < 4*(2**Var(15))
triggerall = EnemyNear,Vel X >= 0 || Var(15) = 9
trigger1 = statetype != A || stateno = 101
trigger1 = p2statetype = A && P2MoveType != H
trigger1 = ctrl || (StateNo = [200,299]) || (StateNo = [400,499])
trigger1 = EnemyNear,Ctrl = 0
trigger1 = P2Dist X = [10,40]
trigger1 = P2Dist Y+EnemyNear,Vel Y*5 > -150

trigger2 = statetype != A
trigger2 = (StateNo = [200,299]) || (StateNo = [400,499])
trigger2 = P2MoveType = A
trigger2 = EnemyNear,AnimElem = 2,>= 0
trigger2 = P2BodyDist X <= 40+EnemyNear,Vel X*5

;ˆ¢C—…‘M‹ó‘O
[State -1]
type = ChangeState
value = 1305-(P2Dist X>=150)*5
triggerall = Var(15)
triggerall = Var(0) = 2 || PalNo = [11,12]
triggerall = StateType != A
triggerall = Ctrl || (StateNo = [200,299]) || (StateNo = [400,499])
triggerall = Random < 4*(2**Var(15))
trigger1 = EnemyNear,NumHelper > 2 || EnemyNear,NumProj
trigger1 = InGuardDist
trigger1 = P2Dist X > 100

[State -1]
type = ChangeState
value = 1300
triggerall = Var(15)
triggerall = Var(0) = 2 || PalNo = [11,12]
triggerall = StateType != A
triggerall = Ctrl || (StateNo = [200,299]) || (StateNo = [400,499])
triggerall = Random < 4*(2**Var(15))
trigger1 = PrevStateNo >= 5000 || PrevStateNo = [120,159]
trigger1 = P2MoveType = A
trigger1 = InGuardDist
trigger1 = FrontEdgeDist > 150
trigger1 = EnemyNear,BackEdgeDist > 100

;ˆ¢C—…‘M‹óŒã
[State -1]
type = ChangeState
value = 1310
triggerall = Var(15)
triggerall = Var(0) = 2  || PalNo = [11,12]
triggerall = StateType != A
triggerall = Ctrl || (StateNo = [200,299]) || (StateNo = [400,499])
triggerall = Random < 4*(2**Var(15))
trigger1 = PrevStateNo >= 5000 || PrevStateNo = [120,159]
trigger1 = P2MoveType = A
trigger1 = InGuardDist
trigger1 = P2BodyDist X > 50
trigger1 = BackEdgeDist > 100
;---------------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…ƒWƒƒƒ“ƒv
[State -3, ‘Oƒ_ƒbƒVƒ…]
type = ChangeState
value = 100+Var(0)
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = stateno = 0
triggerall = statetype != A
triggerall = Random > 900 || (EnemyNear,NumHelper > 5 && Random > 700)
triggerall = ctrl
trigger1 = P2Dist X >= 200
trigger2 = P2Dist X >= 50
trigger2 = Var(0) = 0
trigger2 = NumHelper(910)

[State -3, ƒWƒƒƒ“ƒv]
type = ChangeState
value = 40
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = !Var(16)
triggerall = StateType != A
trigger1 = stateno = [100,102]
trigger1 = P2Dist X = [180,200]
trigger2 = ctrl
trigger2 = Random > 980 || EnemyNear,NumProj > 0
trigger2 = P2Dist X = [90,150]
trigger3 = ctrl || StateNo = [120,131]
trigger3 = Random > 900
trigger3 = InguardDist
trigger3 = EnemyNear,NumHelper > 0 || EnemyNear,NumProj || P2MoveType = A
trigger3 = EnemyNear,Vel X = 0 || P2Dist X = [90,150]
trigger4 = P2MoveType = H
trigger4 = EnemyNear,BackEdgeBodyDist <= 10
trigger4 = P2Dist Y < -50
trigger4 = StateNo = 52
trigger4 = AnimTime = 0
trigger4 = PrevStateNo = 1252

[State -3, SƒWƒƒƒ“ƒv]
type = ChangeState
value = 60
triggerall = roundstate = 2
triggerall = Var(15)
triggerall = !Var(16)
triggerall = Var(0) != 0
triggerall = StateType != A
triggerall = Random < 4*(2**Var(15))
trigger1 = ctrl
trigger1 = P2Dist X >= 150

[State -1, ‹ó’†k]
type = ChangeState
value = 640+(Var(0)=1||PalNo>10)
triggerall = Var(15)
triggerall = statetype = A && stateno != 101
triggerall = ctrl
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = Vel Y > 0
trigger1 = P2BodyDist X = [10,60]
trigger1 = EnemyNear,Ctrl = 0
trigger1 = Pos Y > -100
trigger2 = Pos Y > -100
trigger2 = P2Dist X = [-40,10]

;---------------------------------------------------------------------------------
[State -3]
type = ChangeState
triggerall = Var(15)
triggerall = Random < 8*(2**Var(15))
trigger1 = StateNo = 40
trigger1 = sysvar(1) = 0
trigger1 = Var(0) != 2
value = 20
ctrl = 1

[State 20, 1]
type = VelSet
triggerall = Var(15)
trigger1 = PrevStateNo != [120,159]
trigger1 = stateno = 20
trigger1 = P2Dist X > 70
x = const(velocity.walk.fwd.x)

[State -3]
type = ChangeState
triggerall = Var(15)
trigger1 = StateNo = [100,119]
trigger1 = P2BodyDist X < 15
trigger1 = !NumHelper
trigger2 = StateNo = 20
trigger2 = Time > 3
trigger2 = Vel X = 0
value = 10
ctrl = 1

[State 20, 2]
type = VelSet
triggerall = Var(15)
trigger1 = stateno = 20
trigger1 = P2Dist X < 50
x = const(velocity.walk.back.x)

[State -1, Crouch guard]
type = ChangeState
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2statetype != A
triggerall = ctrl
triggerall = StateNo != [100,119]
triggerall = Random < 32*(2**Var(15))
trigger1 = P2Movetype = A
trigger1 = P2BodyDist X < 0
trigger2 = Enemynear,NumProj >= 1
trigger3 = InGuardDist
trigger4 = InGuardDist
trigger4 = Random >= 500 || (StateNo = [130,131])
trigger4 = P2StateType != A
trigger4 = EnemyNear,NumHelper >= 1
value = 131

[State -1, Stand guard]
type = ChangeState
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2statetype = A || (P2statetype = S && EnemyNear,Time > 20 && Random > 500)
triggerall = ctrl
triggerall = StateNo != [100,119]
triggerall = Random < 32*(2**Var(15))
trigger1 = P2Movetype = A 
trigger2 = Enemynear,NumProj >= 1
trigger3 = InGuardDist
trigger3 = EnemyNear,NumHelper >= 1
trigger4 = InGuardDist
trigger4 = Random >= 500 || (StateNo = [130,131])
trigger4 = P2StateType != C
trigger4 = EnemyNear,NumHelper >= 1
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2statetype != A
triggerall = P2Movetype = A
triggerall = Random < 8*(2**Var(15))
trigger1 = stateno = [150,151]
value = stateno+2

[State -1, C-to-S guard]
type = ChangeState
triggerall = Var(15)
triggerall = StateType != A
triggerall = P2statetype = A || (P2statetype = S && EnemyNear,Time > 20)
triggerall = P2Movetype = A
triggerall = Random < 8*(2**Var(15))
trigger1 = stateno = [152,153]
value = stateno-2

[State -1, Air guard]
type = ChangeState
triggerall = Var(15)
triggerall = StateType = A
triggerall = ctrl
triggerall = Random < 16*(2**Var(15))
trigger1 = P2Movetype = A 
trigger2 = Enemynear,NumProj >= 1
trigger3 = InGuardDist
trigger3 = EnemyNear,NumHelper >= 1
value = 132

[State -1, ‹­(’·)ƒ_ƒEƒ“‰ñ”ğ]
type = VarSet
triggerall = Var(15)
triggerall = Var(11) = 0
triggerall = StateType = A
triggerall = MoveType = H
triggerall = HitFall = 1
trigger1 = EnemyNear,NumHelper > 5
trigger2 = P2MoveType = A && P2Dist x < 100 && Random > 990
var(11) = 3
;---------------------------------------------------------------------------------

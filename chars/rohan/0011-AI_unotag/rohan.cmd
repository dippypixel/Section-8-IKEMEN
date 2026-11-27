

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s











[Defaults]
command.time = 15




command.buffer.time = 1






[Command]
name = "hcf"
command = ~B, $D, F
time = 22

[command]
name = "hcf"
command = ~B,DB,$D,DF,$F
time = 22

[Command]
name = "hcb"
command = ~F, $D, B
time = 22

[command]
name = "hcb"
command = ~F,DF,$D,DB,$B
time = 22

[command]
name = "dp"
command = ~F, D, DF
time = 12

[command]
name = "dp"
command = ~F, D, F
time = 12

[command]
name = "rdp"
command = ~B, D, DB
time = 12

[command]
name = "rdp"
command = ~B, D, B
time = 12

[command]
name = "qcf"
command = ~D, DF, F
time = 20

[command]
name = "qcb"
command = ~D, DB, B
time = 20

[command]
name = "GC"
command = ~B, DB, D
time = 20

[command]
name = "reGC"
command = ~F, DF, D
time = 20

[command]
name = "dx2"
command = ~D, D
time = 20

[command]
name = "qcfx2"
command = ~D, DF, F,~D, DF, F
time = 20

[command]
name = "qcbx2"
command = ~D, DB, B,~D, DB, B
time = 20



[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1


[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "z+a"
command = z+a
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+a"
command = y+a
time = 1

[Command]
name = "b+a"
command = b+a
time = 1

[Command]
name = "LM"
command = x+y
time = 1

[Command]
name = "MH"
command = y+z
time = 1

[Command]
name = "LH"
command = x+z
time = 1



[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upc"
command = ~$U
time = 1



[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1



[Command]
name = "hold_c"
command = /c




[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y


[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1






























;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, z+c
Time = 25

[Command]
name = "palit"
command = z+c
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2


[Statedef -1]


[State -1, Partner Assist]
type = VarSet
sysvar(4) = 10
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 60 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,3700]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500]) 
triggerall = stateno != [1000,5000]
triggerall = stateno != [11000,15000]
trigger1 = command = "turtleuno"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(AILevel**2/64.0))
trigger3 = AILevel >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
ignorehitpause = 1

[State -1, Team Hyper Attack]
type = ChangeState
value = 1251125
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = Partner, life > 0
triggerall = power >= 3000
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 9		
triggerall= (StateType != A)
trigger1 = command = "sheoun"
trigger1 = (Ctrl = 1)
trigger1 = AILevel <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000]
trigger2 = AILevel <=  0
trigger3 = AILevel > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = AILevel >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
trigger5 = command = "sheoun"
trigger5 = stateno = [1000,1600]
trigger6 = command = "sheoun"
trigger6 = stateno = [11000,11600]
ignorehitpause = 1

[State -1, Delayed Hyper]
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time > 1 && Time > 45 
triggerall = StateNo = 13004 || StateNo = 3004
trigger1 = command = "sheoun"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = NumTarget && MoveContact
trigger2 = Random < (10*(AILevel**2/64.0) + (Uniqhitcount*((Life < Partner,Life)*2)))
trigger2 = Partner, Time > 35
trigger3 = AILevel >  0
trigger3 = Partner, Time > 30 && Time > 25
trigger3 = HitCount >= 6
trigger3 = Random < (2 * Uniqhitcount * ifelse(hitcount > 9, 2, 1))
ignorehitpause = 1

[State -1, Change Attack]
type = ChangeState
value = 1251126
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,4850]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0 
triggerall = Target, pos Y > -160
triggerall = (Target, StateNo != [5110,5955])
triggerall = Hitdefattr != SCA, NT && ((Target, Statetype = A || (Hitdefattr != A, NA && Target, Statetype != A)) && ((!Target, HitOver || EnemyNear, StateNo = [5000,5900]) && (MoveContact || ProjContactTime(0) < 8)))
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(AILevel**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = AILevel >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(AILevel**2/64.0))
trigger3 = MoveContact
ignorehitpause = 1

[State -1, TagIn]
type = ChangeState
value = 1251110
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner && NumEnemy
triggerall = RoundState = 2 
triggerall = Partner, life > 0
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 40	
triggerall = (MoveType != A && StateType != A) && (Ctrl = 1) || StateNo = 0
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = AILevel >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = AILevel >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(AILevel**2/64.0))

[State -1, C_6]
type = CtrlSet
value = 1
triggerall = RoundState = 2 && NumPartner
triggerall = NumTarget
triggerall = Target, StateNo != [200,4999]
triggerall = StateNo != 1251106 && !Ctrl
triggerall = (Partner, StateNo != [1251128,1251129]) && (Partner, PrevStateNo != [1251128,1251129])
trigger1 = command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
trigger1 = sysvar(4) = 7
trigger1 = Movetype = A
trigger1 = MoveContact
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = StateNo != PrevStateNo
trigger1 = Time > 3
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0

; ------ Uno Tag System [Type-R] END LINE -------

;  ;]

;  ;]




[State -1, Soff 記憶を全て消す]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3500
TriggerAll = Var(59)<=0
triggerall = var(56) = 3
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = (stateno = [300,320]) || (stateno = [500,520])
trigger3 = time >= 15
trigger3 = (stateno = [1000,1020])
trigger4 = time >= 15
trigger4 = (stateno = [1100,1120])
trigger5 = time >= 16
trigger5 = (stateno = [1200,1220])
trigger6 = time >= 20
trigger6 = (stateno = [1500,1520])

[State -1, Soff天国の扉]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3300
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = (stateno = [300,320]) || (stateno = [500,520])
trigger3 = time >= 15
trigger3 = (stateno = [1000,1020])
trigger4 = time >= 15
trigger4 = (stateno = [1100,1120])
trigger5 = time >= 16
trigger5 = (stateno = [1200,1220])
trigger6 = time >= 20
trigger6 = (stateno = [1500,1520])

[State -1, Soff君の記憶を貰う！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = (stateno = [300,320]) || (stateno = [500,520])
trigger3 = time >= 15
trigger3 = (stateno = [1000,1020])
trigger4 = time >= 15
trigger4 = (stateno = [1100,1120])
trigger5 = time >= 16
trigger5 = (stateno = [1200,1220])
trigger6 = time >= 20
trigger6 = (stateno = [1500,1520])

[State -1, Son 記憶を全て消す]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13500
TriggerAll = Var(59)<=0
triggerall = var(56) = 3
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
trigger11 = time >= 20
trigger11 = stateno = [11000,11020]
trigger12 = time >= 20
trigger12 = stateno = [11100,11120]
trigger13 = time >= 16
trigger13 = stateno = [11200,11220]
trigger14 = time >= 20
trigger14 = (stateno = [11500,11520])

[State -1, Son天国の扉]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13300
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
trigger11 = time >= 20
trigger11 = stateno = [11000,11020]
trigger12 = time >= 20
trigger12 = stateno = [11100,11120]
trigger13 = time >= 16
trigger13 = stateno = [11200,11220]
trigger14 = time >= 20
trigger14 = (stateno = [11500,11520])

[State -1, Son君の記憶を貰う！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
trigger11 = time >= 20
trigger11 = stateno = [11000,11020]
trigger12 = time >= 20
trigger12 = stateno = [11100,11120]
trigger13 = time >= 16
trigger13 = stateno = [11200,11220]
trigger14 = time >= 20
trigger14 = (stateno = [11500,11520])






[State -1, 走る]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
TriggerAll = Var(59)<=0
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = 1),(helper(10371), sysvar(0) = -1)) || (prevstateno = 40 && vel x > 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&2)

trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
TriggerAll = Var(59)<=0
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = -1),(helper(10371), sysvar(0) = 1)) || (prevstateno = 40 && vel x < 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&4)

trigger1 = statetype = S
trigger1 = ctrl



[State -1, ちょいと素早かったかな？]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1600
TriggerAll = Var(59)<=0
triggerall = var(32) = 1
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(43)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]



[State -1, ペン投げ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]



[State -1, ONペン投げ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11100
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, どん描き　弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3])  || (helper(10371),var(2) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]


[State -1, ONどん描き L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ONどん描き M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ONどん描き H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ON先手必勝 L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(20)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ON先手必勝 M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(20)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ON先手必勝 H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(20)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A

trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, 僕は成長している！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]


[State -1, S僕は成長している！ L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, S僕は成長している！ M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11010
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, S僕は成長している！ H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11020
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, タコに命令した！L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1500
TriggerAll = Var(59)<=0
triggerall = var(31) = 1
triggerall = !var(49)
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]


[State -1, タコに命令した！M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1510
TriggerAll = Var(59)<=0
triggerall = var(31) = 1
triggerall = !var(49)
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]


[State -1, タコに命令した！H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1520
TriggerAll = Var(59)<=0
triggerall = var(31) = 1
triggerall = !var(49)
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = stateno = [300,520]



[State -1, タコに命令した！SonL]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11500
TriggerAll = Var(59)<=0
triggerall = var(31) = 1
triggerall = var(49) = 10000
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 4
trigger8 = (stateno = 10420) && time >= 12

[State -1, タコに命令した！SonM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11510
TriggerAll = Var(59)<=0
triggerall = var(31) = 1
triggerall = var(49) = 10000
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 4
trigger8 = (stateno = 10420) && time >= 12

[State -1, タコに命令した！SonH]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11520
TriggerAll = Var(59)<=0
triggerall = var(31) = 1
triggerall = var(49) = 10000
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 4
trigger8 = (stateno = 10420) && time >= 12



[State -1, Strong Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1800
TriggerAll = Var(59)<=0
triggerall = var(35) = 1
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])

trigger1 = (stateno = [150,155])


[State -1, Strong Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11800
TriggerAll = Var(59)<=0
triggerall = var(35) = 1
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])

trigger1 = (stateno = 151 || stateno = 153)

[State -1, 回り込み]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = var(33) = 1
triggerall = !var(49)
triggerall = NumHelper(295) = 0
triggerall = statetype != A

triggerall = command = "a"
trigger1 = ctrl
trigger2 = (stateno = 1320) && time <= 5
trigger3 = (stateno = 1370) && time <= 5
value = 290


[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = statetype != A
triggerall = power >= 500*var(28)
triggerall = command = "a"
triggerall = var(11) < 3
trigger1 = stateno = 11500 || stateno = 11510 || stateno = 11520 
trigger2 = (stateno = 10200)  
trigger3 = (stateno = 10210) 
trigger4 = (stateno = 10215)  
trigger5 = (stateno = 10220)  
trigger6 = (stateno = 10250)  
trigger7 = (stateno = 10400)  
trigger8 = (stateno = 10415) 
trigger9 = (stateno = 10410)  
trigger10 = (stateno = 10420) && time >= 10
trigger11 = stateno = 300 || stateno = 310 || stateno = 320 
trigger12 = stateno = 500 || stateno = 510 || stateno = 520 
trigger13 = stateno = 1000 || stateno = 1003 || stateno = 1005 
trigger14 = stateno = 1100 || stateno = 1103 || stateno = 1105 
trigger15 = stateno = 1200 || stateno = 1210 || stateno = 1220 
trigger16 = stateno = 1500 || stateno = 1510 || stateno = 1520 
trigger17 = stateno = 11000 || stateno = 11010 || stateno = 11020 
trigger18 = stateno = 11100 || stateno = 11110 || stateno = 11120 
trigger19 = stateno = 11200 || stateno = 11210 || stateno = 11220 
trigger20 = stateno = 11300 
trigger21 = stateno = 11070
value = 2000
ignorehitpause = 1

[State -1, 擬似スタンドキャンセル]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = statetype != A 
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = time = [6,35]
trigger1 = stateno = 11000 || stateno = 11010 || stateno = 11020
value = 2100 


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = var(34) = 1
triggerall = !var(49)
triggerall = NumHelper(4010) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = var(34) = 1
triggerall = !var(49)
triggerall = NumHelper(4010) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = power >= 100
value = 4105


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = var(34) = 1
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = power >= 100
ignorehitpause = 1
value = 14000


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59)<=0
triggerall = var(34) = 1
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = power >= 100
value = 14005


[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 900
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "b"
trigger1 = ctrl || ((stateno = [100,105]) && time > 2)


[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10900
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "b"
trigger1 = ctrl || ((stateno = [100,105]) && time > 2)



[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 500
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置屈M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 510
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置屈H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 520
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2


[State -1,ON屈弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10215) && time >= 4
trigger5 = (stateno = 10400) && time >= 6
trigger6 = (stateno = 10415) && time >= 4

[State -1,ON屈中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10410
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10215) && time >= 4
trigger5 = (stateno = 10400) && time >= 4
trigger6 = (stateno = 10415) && time >= 4

[State -1,ON屈強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10210) && time >= 10
trigger5 = (stateno = 10400) && time >= 6
trigger6 = (stateno = 10410) && time >= 11



[State -1, 安全装置L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 300
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 310
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 320
TriggerAll = Var(59)<=0
triggerall = !var(49)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2


[State -1,ON立ち弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10400) && time >= 6

[State -1,ON立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 4
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10400) && time >= 6
trigger5 = (stateno = 10415) && time >= 4
trigger6 = (stateno = 100) && time >= 0
trigger7 = (stateno = 105) && time >= 0

[State -1,ON立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = roundstate = 2
triggerall = statetype != A


triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = movecontact
trigger1 = stateno = 10200 && time >= 4

[State -1,ON立ち強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = roundstate = 2
triggerall = statetype != A


triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = movecontact
trigger1 = stateno = 10210 && time >= 9

[State -1,ON僕は成長している]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11020
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = roundstate = 2
triggerall = statetype != A

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = movecontact
trigger1 = stateno = 10220 && time >= 12
 
[State -1,ON立ち強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 4
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 9
trigger9 = (stateno = 10450) && time >= 8

[State -1, 挑発]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 196
triggerall = teammode != Simul  
TriggerAll = Var(59)<=0
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発B]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode != Simul  
TriggerAll = Var(59)<=0
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発C]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 197
triggerall = teammode != Simul  
TriggerAll = Var(59)<=0
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 196
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0 
TriggerAll = Var(59)<=0
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発B]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0 
TriggerAll = Var(59)<=0
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発C]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 197
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0 
TriggerAll = Var(59)<=0
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, 安全装置空L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 700
TriggerAll = Var(59)<=0
triggerall = !var(49)


triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = statetype = A
trigger1 = ctrl

[State -1, 安全装置空M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 710
TriggerAll = Var(59)<=0
triggerall = !var(49)



triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = statetype = A
trigger1 = ctrl

[State -1, 安全装置空H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 720
TriggerAll = Var(59)<=0
triggerall = !var(49)


triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = statetype = A
trigger1 = ctrl


[State -1, ONジャンプ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10600
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ONジャンプ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ONジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000

triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
trigger1 = statetype = A
trigger1 = ctrl



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10830
TriggerAll = Var(59)<=0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = stateno = 300 || stateno = 310 || stateno = 320
trigger1 = time >= 19
trigger2 = stateno = 500 || stateno = 510 || stateno = 520
trigger2 = time >= 19
ignorehitpause = 0



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10820
TriggerAll = Var(59)<=0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 830
TriggerAll = Var(59)<=0
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0


[State -1,2段ジャンプ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 41
TriggerAll = Var(59)<=0

triggerall = var(4) = 1
triggerall = command = "up"
triggerall = command != "upc"
triggerall = var(49) = 10000
trigger1 = stateno = 50
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610 || stateno = 10620
trigger2 = movecontact
trigger3 = stateno = 10600 && time >= 5
trigger4 = stateno = 10610 && time >= 12
trigger5 = stateno = 10620 && time >= 12
trigger6 = stateno = [700,720]
trigger6 = time >= 25




[State -1, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper
trigger1 = AILevel
Trigger2 = !IsHelper
Trigger2 = NumHelper(123321) = 1
Trigger2 = Helper(123321),var(59)


V = 59
Value = 1
IgnoreHitPause = 1



[state -3, AIレベル]
type = VarSet
trigger1 = var(59) = 1
trigger1 = roundstate = 2
v = 58
Value = 9






[state -3, 画面右端検出用ヘルパー]
type  = helper
trigger1 = !NumHelper(21000)
helpertype = normal
name = "migihasi"
PosType = left
stateno = 21000
ID = 21000
facing = -1
pos=160,9999
pausemovetime  = 2147483647
supermovetime  = 2147483647
persistent = 0
ignorehitpause = 1
keyctrl = 0
ownpal = 1

[State -3, 念のため↓も付けておく]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1= ishelper
trigger1= ishelper(21000)
trigger1= stateno !=21000
value=21000

[state -3, 画面左端検出用ヘルパー]
type = helper
trigger1 = !NumHelper(25000)
helpertype = normal
name = "hidarihasi"
PosType = left
stateno = 25000
ID = 25000
facing = 1
pos=160,9999
pausemovetime  = 2147483647
supermovetime  = 2147483647
persistent = 0
ignorehitpause = 1
keyctrl = 0
ownpal = 1

[state -3, めくりガード用ヘルパー]
type = helper
trigger1 = !NumHelper(55005)
helpertype = normal
name = "mekuri"
PosType = left
stateno = 55005
ID = 55005
facing = 1
pos=160,9999
pausemovetime  = 2147483647
supermovetime  = 2147483647
persistent = 0
ignorehitpause = 1
keyctrl = 0
ownpal = 1

[State -3, 念のため↓も付けておく]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1= ishelper
trigger1= ishelper(25000)
trigger1= stateno !=25000
value=25000

[State -3, asas]
type=helper
triggerall = !ishelper
triggerall = !NumHelper(680)
triggerall = NumEnemy
trigger1 = enemy,name = "rohan" && enemy,numhelper(350)
trigger2 = enemy,name = "pucci" && enemy,numhelper(6600)
helpertype=normal
name = "tai-rohan"
stateno = 680
ID = 680
pos = 0,9999
keyctrl = 0
pausemovetime = 2147483647
supermovetime = 2147483647




[State -3, asas]
type=helper
triggerall = !ishelper
triggerall = !NumHelper(50005)
triggerall = NumEnemy
triggerall = NumHelper(21000)
trigger1 = helper(21000),var(20) <= 0
trigger1 = Enemy(0),numproj > 0
trigger2 = helper(21000),var(21)< Enemy(0),numhelper
trigger3 = helper(21000),var(22) <= 0
trigger3 = Enemy(numenemy=2),numproj > 0
trigger4 = helper(21000),var(23) < Enemy(numenemy=2),numhelper
helpertype=normal
name = "P-H"
stateno = 50005
ID = 50005
pos = 0,9999
keyctrl = 0
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0


[State -3, 関係無いステートに行かないように]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1= ishelper(50005)
trigger1= stateno!=50005
value=50005

[State -3, AI起動用ヘルパー]
type = helper
triggerall = AILevel
trigger1 = !NumHelper(123321)
trigger1 = roundstate = 2
trigger1 = alive
trigger1 = var(59) = 0
Trigger1 = PrevStateNo=5900||(PrevStateNo=[190,199])
Trigger1 = ctrl && stateno = 0
helpertype = normal
name = "AI"
stateno = 123321
ID = 123321
pos = 9999,9999
keyctrl = 1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0


[State -3, 関係無いステートに行かないように]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1 = ishelper(123321)
trigger1 = stateno != 123321
value = 123321


[State -3, tag]
type = varset
trigger1 = NumEnemy >= 0
var(51) = IfElse((!EnemyNear,Alive && NumEnemy = 2),1,0)


[State -3, tag]
type = varset
trigger1 = var(50) = 0
trigger1 = var(52) != 0
var(52) = 0


[State -3, tag]
type = varadd
trigger1 = var(50) != 0
trigger1 = 1
var(52) = 1


[State -3, tag]
type = varset
trigger1 = var(50) = 2
trigger1 = var(52) = 60
trigger2 = var(50) = 2
trigger2 = movetype = H
trigger3 = var(50) = 4
trigger3 = var(52) = 120
trigger4 = var(50) = 3
trigger4 = var(52) = 90
trigger5 = var(50) = 5
trigger5 = var(52) = 450
trigger6 = var(50) = 6
trigger6 = var(52) = 230
trigger7 = var(50) = 1
trigger7 = var(52) = 180
trigger8 = var(50) = 7
trigger8 = var(52) = 350
trigger9 = var(50) = 9
trigger9 = var(52) = 350
trigger10 = var(50) = 10
trigger10 = var(52) = 400
trigger11 = var(50) = 11
trigger11 = var(52) = 450
trigger12 = var(50) = 12
trigger12 = var(52) = 80
trigger13 = var(50) = 13
trigger13 = var(52) = 80
trigger14 = var(50) = 14
trigger14 = var(52) = 80
trigger15 = var(50) = 15
trigger15 = var(52) = 80
trigger16 = var(50) = 16
trigger16 = var(52) = 80
trigger17 = var(50) = 8
trigger17 = var(52) = 390
trigger18 = var(50) = 17
trigger18 = var(52) = 120
trigger19 = var(50) = 18
trigger19 = var(52) = 60
trigger20 = var(50) = 19
trigger20 = var(52) = 120
trigger21 = var(50) = 20
trigger21 = var(52) = 180
trigger22 = var(50) = 21
trigger22 = var(52) = 60
var(50) = 0





[State -1, Soff天国の扉]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3300
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 2000
triggerall = NumHelper(1001) = 0
triggerall = roundno = 3
triggerall = enemynear(var(51)),life <= 250
triggerall = movehit || helper,movehit
trigger1 = time >= 20
trigger1 = (stateno = [300,320]) || (stateno = [500,520])

[State -1, Son天国の扉]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13300
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = power >= 2000
triggerall = roundno = 3
triggerall = enemynear(var(51)),life <= 250
triggerall = movehit
trigger1 = (stateno = 10200) && time >= 7
trigger2 = (stateno = 10210) && time >= 10
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 10

[State -1, Soff君の記憶を貰う！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = roundno = 3
triggerall = enemynear(var(51)),life <= 120
triggerall = movehit || helper,movehit
trigger1 = time >= 20
trigger1 = (stateno = [300,320]) || (stateno = [500,520])
trigger2 = time >= 15
trigger2 = (stateno = [1000,1020])
trigger3 = time >= 15
trigger3 = (stateno = [1100,1120])
trigger4 = time >= 16
trigger4 = (stateno = [1200,1220])
trigger5 = time >= 20
trigger5 = (stateno = [1500,1520])

[State -1, Son君の記憶を貰う！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = power >= 1000
triggerall = roundno = 3
triggerall = enemynear(var(51)),life <= 120
triggerall = movehit
trigger1 = (stateno = 10200) && time >= 7
trigger2 = (stateno = 10210) && time >= 10
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 10
trigger9 = (stateno = 10420) && time >= 10
trigger10 = time >= 20
trigger10 = stateno = [11000,11020]
trigger11 = time >= 20
trigger11 = stateno = [11100,11120]
trigger12 = time >= 16
trigger12 = stateno = [11200,11220]
trigger13 = time >= 20
trigger13 = (stateno = [11500,11520])








[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = (stateno = 11020) && (time = 20)
trigger1 = var(50) = 11
trigger1 = 1 || var(50) := ifelse(random <= 499,12,13)
trigger2 = (stateno = 11200) && (movehit = 10)
trigger2 = helper(350),var(1) != 3
trigger2 = helper(350),var(1) != 4
trigger2 = 1 || var(50) := 0
trigger3 = (stateno = 11000) && (time = 20)
trigger3 = var(50) = 11
trigger3 = 1 || var(50) := ifelse(random <= 499,12,13)

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13300
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = stateno = 10410 && movehit
trigger1 = var(50) = 7
trigger1 = 1 || var(50) := 0
trigger2 = stateno = 220 && movehit
trigger2 = enemynear(var(51)),statetype != A
trigger2 = helper(350),var(1) != 4
trigger2 = animelemtime(13) = 4
trigger2 = 1 || var(50) := 0

[State -1, 安全装置屈M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 520
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 9
triggerall = statetype != A
trigger1 = (stateno = 102) && time > 2
trigger1 = 1 || var(50) := 9

[State -1, 安全装置屈M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 520
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 9
triggerall = statetype != A
trigger1 = (stateno = 102) && time > 2
trigger1 = 1 || var(50) := 9

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11510
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = statetype != A
triggerall = NumHelper(1500) = 0
trigger1 = var(50) = 9
trigger1 = (stateno = 10420) && movehit
trigger1 = 1 || var(50) := 9

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
trigger1 = var(50) = 9
trigger1 = (stateno = 10210) && movehit
trigger1 = 1 || var(50) := 9

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11020-(enemynear(var(51)),statetype = A)*20
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 7
triggerall = stateno = 10220
triggerall = animelemtime(13) = 4
trigger1 = movehit
trigger1 = enemynear(var(51)),statetype != A
trigger1 = 1 || var(50) := 7

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 7
triggerall = statetype != A
trigger1 = animelemtime(13) = 0
trigger1 = (stateno = 10220) && movehit
trigger1 = enemynear(var(51)),statetype = A
trigger1 = 1 || var(50) := 7

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11020-(enemynear(var(51)),statetype = A)*20
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 7
triggerall = statetype != A
trigger1 = (stateno = 10410) && movehit
trigger1 = power >= 1000
trigger1 = enemynear(var(51)),statetype = A
trigger1 = 1 || var(50) := 11

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 7
triggerall = statetype != A
trigger1 = (stateno = 10210) && movehit
trigger1 = 1 || var(50) := 7
trigger2 = (stateno = 10410) && movehit
trigger2 = 1 || var(50) := 7

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = power >= 1200
triggerall = enemynear(var(51)),Statetype != A
trigger1 = var(50) = 7
trigger1 = (stateno = 10400) && movehit
trigger1 = 1 || var(50) := 9
trigger1 = !((P2BodyDist X = [-10,25]) && (enemynear(var(51)),statetype != A))
trigger2 = (stateno = 10200) && movehit
trigger2 = 1 || var(50) := 9
trigger3 = (stateno = 10410) && movehit
trigger3 = 1 || var(50) := 9
trigger4 = (stateno = 10210) && movehit
trigger4 = 1 || var(50) := 9

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10410
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = enemynear(var(51)),statetype = A
triggerall = helper(350),var(1) != 3
triggerall = helper(350),var(1) != 4
trigger1 = var(50) = 7
trigger1 = (stateno = 10400) && movehit
trigger1 = !((P2BodyDist X = [-10,23]) && (enemynear(var(51)),statetype != A))
trigger1 = 1 || var(50) := 7
trigger2 = (stateno = 10200) && movehit
trigger2 = 1 || var(50) := 7

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype != A
trigger1 = var(50) = 7
trigger1 = (stateno = 10400) && movehit
trigger1 = !((P2BodyDist X = [-10,23]) && (enemynear(var(51)),statetype != A))
trigger1 = 1 || var(50) := 7
trigger2 = (stateno = 10200) && movehit
trigger2 = 1 || var(50) := 7

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 7
triggerall = statetype != A
trigger1 = (stateno = 10400) && movehit
trigger1 = 1 || var(50) := 7

[State -1, 安全装置屈L]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 500
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = var(50) = 5
triggerall = statetype != A
triggerall = random <= 499
trigger1 = (stateno = 102) && time > 2
trigger1 = 1 || var(50) := 0

[State -1, 安全装置屈M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 510
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = var(50) = 5
triggerall = statetype != A
trigger1 = (stateno = 102) && time > 2
trigger1 = 1 || var(50) := 0




[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 500 && (time >= 22)
triggerall = Statetype != A
trigger1 = P2BodyDist X = [0,43]
trigger1 = enemynear(var(51)),statetype != A
trigger1 = var(50) = 4
trigger1 = 1 || var(50) := ifelse(random <= 499,4,3)
value=10830

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 4
triggerall = var(49) = 10000
triggerall = Statetype != A
triggerall = ctrl || (stateno = 10400 && (time >= 6))
trigger1 = P2BodyDist X = [0,33]
trigger1 = enemynear(var(51)),statetype != A
trigger1 = 1 || var(50) := ifelse(random <= 499,4,3)
value=10400

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 4
triggerall = var(49) = 10000
triggerall = Statetype != A
triggerall = ctrl || (stateno = 10400 && (time >= 6))
trigger1 = P2BodyDist X = [0,33]
trigger1 = enemynear(var(51)),statetype != A
trigger1 = 1 || var(50) := 0
value=10400




[State -3]
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
triggerall = statetype != A&&MoveType != H
Triggerall = InGuardDist
trigger1 = p2Stateno=Helper(25000),var(20)
trigger2 = p2Stateno=Helper(25000),var(21)
trigger3 = p2Stateno=Helper(25000),var(22)
trigger4 = p2Stateno=Helper(25000),var(23)
trigger5 = p2Stateno=Helper(25000),var(24)
v = 53
value = 1
IgNoreHitPause = 1

[State -3]
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
triggerall = statetype != A&&MoveType != H
Triggerall = InGuardDist
trigger1 = p2Stateno=Helper(25000),var(10)
trigger2 = p2Stateno=Helper(25000),var(11)
trigger3 = p2Stateno=Helper(25000),var(12)
trigger4 = p2Stateno=Helper(25000),var(13)
trigger5 = p2Stateno=Helper(25000),var(14)
v = 53
value = 2
IgNoreHitPause = 1

[State -3]
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = statetype != A
Triggerall = EnemyNear(Var(51)),statetype != A
trigger1 = p2statetype=C
trigger2 = p2statetype=S
trigger2 = EnemyNear(Var(51)),time < 15
v = 53
value = 1
IgNoreHitPause = 1

[State -3]
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = statetype != A
trigger1 = p2statetype =A
trigger2 = p2statetype=S
trigger2 = stateno=[120,155]
trigger2 = EnemyNear(Var(51)),time >= 15
trigger2 = EnemyNear(Var(51)),moveguarded=0
trigger2 = EnemyNear(Var(51)),movetype=A

v = 53
value = 2
IgNoreHitPause = 1

[State -1,立ちガード]
Type = varset
TriggerAll = NumHelper(55005)
TriggerAll = random <= 50+var(7)/40+(P2BodyDist X < 40)*50+(enemynear(var(51)),ctrl = 0)*50+(life/lifemax < .4)*50+(var(49) = 0)*30+(-facing*(helper(21000+(facing=1)*4000),pos x-pos x) < 40)*50
TriggerAll = InGuardDist || ( (Helper(55005),Var(40)) && (EnemyNear(var(51)),P2Dist X<0) && (random <= 499) )|| (Helper(55005),Var(41)) ||(enemynear(var(51)),movetype = A && !inguarddist && P2BodyDist X <= 50)
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = StateNo!=[120,155]
TriggerAll = Ctrl||Stateno=0||stateno=11||(stateno=[19,22])||stateno = 1548||(stateno=[40,69])
triggerall = !(EnemyNear(Var(51)),HitDefAttr = SCA,AT)
triggerall = var(13) <= 0
triggerall = var(7) > 4000
Trigger1 = Random <= var(58)*60-(var(58) < 8)*20 || var(58) >= 10
Trigger2 = P2BodyDist X > 90 || EnemyNear(Var(51)),Time>50
Trigger2 = Random <= var(58)*150-(life = [0,600])*35-(var(58) < 8)*40
Trigger3 = !IsHelper
trigger3 = Helper(51000),inguarddist
trigger3 = Random <= var(58)*100
Trigger4 = numhelper(50005) >= 1
Trigger4 = helper(50005),var(0) = [-10,10]
Trigger5 = var(57) = 1
Trigger5 = numhelper(50005) >= 1
Trigger5 = enemynear(var(51)),var(49) = 0
Trigger5 = enemynear(var(51)),numhelper(10000)||enemynear(var(51)),numhelper(1)
Trigger5 = helper(50005),var(0) = [-55,55]
var(13) = 1

[State -1,立ちガード]
Type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
Value = 120
TriggerAll = NumHelper(55005)
TriggerAll = InGuardDist || ( (Helper(55005),Var(40)) && (EnemyNear(var(51)),P2Dist X<0) && (random <= 499) )|| (Helper(55005),Var(41)) ||(enemynear(var(51)),movetype = A && !inguarddist && P2BodyDist X <= 50)
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = StateNo!=[120,155]
TriggerAll = Ctrl||Stateno=0||stateno=11||(stateno=[19,22])||stateno = 1548||(stateno=[40,69])
triggerall = !(EnemyNear(Var(51)),HitDefAttr = SCA,AT)
Trigger1 = Random <= var(58)*60-(var(58) < 8)*20 || var(58) >= 10
Trigger2 = P2BodyDist X > 90 || EnemyNear(Var(51)),Time>50
Trigger2 = Random <= var(58)*150-(life = [0,600])*35-(var(58) < 8)*40
Trigger3 = !IsHelper
trigger3 = Helper(51000),inguarddist
trigger3 = Random <= var(58)*100
Trigger4 = numhelper(50005) >= 1
Trigger4 = helper(50005),var(0) = [-10,10]
Trigger5 = var(57) = 1
Trigger5 = numhelper(50005) >= 1
Trigger5 = enemynear(var(51)),var(49) = 0
Trigger5 = enemynear(var(51)),numhelper(10000)||enemynear(var(51)),numhelper(1)
Trigger5 = helper(50005),var(0) = [-55,55]


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = Var(49) = 0
triggerall = power >= 100
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4100 && prevstateno != 4105
triggerall = var(58) >= 4
trigger1 = P2BodyDist X <= 50
trigger1 = random <= 10
trigger2 = BackEdgeBodyDist < 30
trigger2 = random <= 33
ignorehitpause = 1
value = 4100


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = Var(49) = 0
triggerall = power >= 100
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4100 && prevstateno != 4105
triggerall = var(58) >= 4
trigger1 = P2BodyDist X <= 50
trigger1 = random <= 10
trigger2 = BackEdgeBodyDist < 30
trigger2 = random <= 33
value = 4105


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = Var(49) = 10000
triggerall = power >= 100
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 14000 && prevstateno != 14005
triggerall = var(58) >= 4
trigger1 = P2BodyDist X <= 50
trigger1 = random <= 10
trigger2 = BackEdgeBodyDist < 30
trigger2 = random <= 33
ignorehitpause = 1
value = 14000


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = Var(49) = 10000
triggerall = power >= 100
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 14000 && prevstateno != 14005
triggerall = var(58) >= 4
trigger1 = P2BodyDist X <= 50
trigger1 = random <= 10
trigger2 = BackEdgeBodyDist < 30
trigger2 = random <= 33
value = 14005




[State -1, ONジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = var(50) = 12
trigger1 = ctrl
trigger1 = time >= 22
trigger1 = 1 || var(50) := 0

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Ctrl = 1
triggerall = var(58) >= 5
triggerall = Statetype != A
triggerall = P2bodydist Y <= -20
triggerall = !((enemynear(var(51)),vel y > 1) &&(P2bodydist Y <= -10))
trigger1 = P2BodyDist X = [10,30]
trigger1 = enemynear(var(51)),statetype = A
trigger1 = enemynear(var(51)),stateno = [40,59]
trigger1 = enemynear(var(51)),facing != facing
trigger1 = 1 || var(50) := 2
value=101

[State -1, どん描き　弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = enemynear(var(51)),statetype = A
triggerall = enemynear(var(51)),movetype != H
triggerall = enemynear(var(51)),time >= 8
triggerall = ctrl
triggerall = P2BodyDist X = [-5,50]
triggerall = enemynear(var(51)),vel x = [-1,1]
triggerall = !(numhelper(350) && (helper(350),var(1) = 4))
triggerall = helper(55005),var(43) = 0
trigger1 = (P2bodydist Y <= -70) && (enemynear(var(51)),vel y >= 0)
trigger2 = (P2bodydist Y > -50) && (enemynear(var(51)),vel y < 0)

[State -1, どん描き　弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = enemynear(var(51)),statetype = A
triggerall = enemynear(var(51)),movetype != H
triggerall = enemynear(var(51)),time >= 8
triggerall = ctrl
triggerall = enemynear(var(51)),vel x > 1
triggerall = P2BodyDist X = [0,80]
triggerall = !(numhelper(350) && (helper(350),var(1) = 4))
triggerall = helper(55005),var(43) = 0
trigger1 = (P2bodydist Y <= -70) && (enemynear(var(51)),vel y >= 0)
trigger2 = (P2bodydist Y > -50) && (enemynear(var(51)),vel y < 0)

[State -1, どん描き　弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = enemynear(var(51)),movetype != H
triggerall = enemynear(var(51)),time >= 3
triggerall = ctrl
triggerall = P2BodyDist X = [-5,60]
triggerall = P2BodyDist Y = [-10,10]
triggerall = !(numhelper(350) && (helper(350),var(1) = 4))
triggerall = helper(55005),var(43) = 0
trigger1 = enemynear(var(51)),vel x >= 3

[State -1, ちょいと素早かったかな？]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(32) = 1
triggerall = !var(49)
triggerall = statetype != A
triggerall = enemynear(var(51)),time >= 3
triggerall = enemynear(var(51)),movetype != H
triggerall = P2BodyDist X = [-5,60]
triggerall = P2BodyDist Y = [-40,40]
triggerall = ctrl
triggerall = !(numhelper(350) && (helper(350),var(1) = 4))
trigger1 = enemynear(var(51)),vel x > 0
trigger2 = enemynear(var(51)),vel y != 0





[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10820
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = enemynear(var(51)),movetype = H
triggerall = NumHelper(2) = 0
triggerall = !var(49)
triggerall = var(50) = [0,4]
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemynear(var(51)),stateno = [5000,5001]
trigger1 = 1 || var(50) := 0
trigger2 = enemynear(var(51)),stateno = [5010,5011]
trigger2 = 1 || var(50) := 0
ignorehitpause = 0

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = var(50) = [0,4]
triggerall = P2BodyDist X >= 40
trigger1 = enemynear(var(51)),stateno = [5000,5001]
trigger1 = 1 || var(50) := 0
trigger2 = enemynear(var(51)),stateno = [5010,5011]
trigger2 = 1 || var(50) := 0
trigger3 = numhelper(350)
trigger3 = var(49) != 0
trigger3 = helper(350),var(1) = 4
trigger3 = 1 || var(50) := 0
value=101

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = !(var(50) = [9,11])
trigger1 = enemynear(var(51)),stateno = 1550
trigger1 = 1 || var(50) := 1
value=103

[State 105, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = BackEdgeBodyDist > 40
triggerall = random = [0,120]
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = var(50) != 2
triggerall = var(50) != 4
triggerall = stateno != 22
triggerall = P2BodyDist X > 50
triggerall = -facing*(helper(21000+(facing=1)*4000),pos x-pos x) >= 40
trigger1 = P2BodyDist X <= 65-(enemynear(var(51)),vel X)*3
trigger1 = enemynear(var(51)),Ctrl = 1
trigger1 = !(enemynear(var(51)),movetype = A && enemynear(var(51)),time >= 3)
trigger2 = P2BodyDist X <= 65-(enemynear(var(51)),vel X)*3
trigger2 = enemynear(var(51)),stateno = [5110,5120]
trigger3 = P2BodyDist X <= 65-(enemynear(var(51)),vel X)*3
trigger3 = enemynear(var(51)),statetype = A && enemynear(var(51)),vel Y >= 0
trigger4 = P2BodyDist X <= 65-(enemynear(var(51)),vel X)*3
trigger4 = enemynear(var(51)),movetype = I && enemynear(var(51)),vel X != 0
trigger5 = P2BodyDist X <= 65-(enemynear(var(51)),vel X)*3
trigger5 = enemynear(var(51)),movetype != A && enemynear(var(51)),vel X >= 4
trigger6 = P2BodyDist X >= 77
trigger6 = enemynear(var(51)),movetype != A && enemynear(var(51)),vel X >= 6
trigger7 = P2BodyDist X >= 77
trigger7 = enemynear(var(51)),movetype = A && enemynear(var(51)),time >= 3
trigger7 = var(56) = 0
value=106

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = random = [0,50]
triggerall = Ctrl = 1
triggerall = Statetype != A
trigger1 = P2BodyDist X >= 130
trigger1 = enemynear(var(51)),Ctrl = 0
trigger1 = enemynear(var(51)),movetype != A && enemynear(var(51)),time >= 3
trigger2 = P2BodyDist X >= 130
trigger2 = enemynear(var(51)),Ctrl = 1
trigger2 = random = [0,500]
trigger2 = enemynear(var(51)),movetype != A
trigger3 = P2BodyDist X >= 190
trigger3 = enemynear(var(51)),Ctrl = 1
trigger3 = var(57) = 0
value=101

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = random = [0,50]
triggerall = Ctrl = 1
triggerall = Statetype != A
trigger1 = P2BodyDist X >= 130
trigger1 = enemynear(var(51)),Ctrl = 0
trigger1 = enemynear(var(51)),movetype != A && enemynear(var(51)),time >= 3
trigger2 = P2BodyDist X >= 130
trigger2 = enemynear(var(51)),Ctrl = 1
trigger2 = random = [0,500]
trigger2 = enemynear(var(51)),movetype != A
trigger3 = P2BodyDist X >= 190
trigger3 = enemynear(var(51)),Ctrl = 1
trigger3 = var(57) = 0
value=101

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Statetype != A
triggerall = P2BodyDist X <= 30
triggerall = random = [0,200]
trigger1 = Ctrl = 1
trigger1 = EnemyNear(Var(51)),HitDefAttr = SCA,AT && enemynear(var(51)),time >= 3
value=60

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Statetype != A
triggerall = random = [0,200]
triggerall = P2BodyDist X = [110,130+(enemynear(var(51)),vel x)*2]
trigger1 = Ctrl = 1
value=61

[State 100, AI]
type=VarSet
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno != 21
trigger1 = prevstateno = 21
trigger1 = var(44) = 0
var(44) = 1

[State 100, AI]
type=VarAdd
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = var(44) >= 1
trigger1 = var(44) < 30
trigger2 = var(44) < 0
var(44) = 1

[State 100, AI]
type=VarSet
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = var(44) = 30
var(44) = -15

[State 100, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(44) <= 0
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = var(50) != 4
trigger1 = 1
value=21

[State 105, AI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(59) = 1 && RoundState = 2
triggerall = random = [0,120]
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = var(50) = 0
triggerall = stateno != 0
triggerall = P2BodyDist X = [60,100)
trigger1 = enemynear(var(51)),statetype != A
trigger1 = enemynear(var(51)),ctrl = 1
trigger1 = enemynear(var(51)),movetype = I
value=ifelse(-facing*(helper(21000+(facing=1)*4000),pos x-pos x) < 40,61,106-(random <= 333)*5)







[State -1, 安全装置空M]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 700
triggerall = Var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype = A
triggerall = var(50) != 6
triggerall = var(50) != 12
triggerall = var(50) != 13
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,40]
trigger1 = pos y <= (enemynear(var(51)),pos y+2)
trigger1 = P2BodyDist Y = [0,90]

[State -1, ONジャンプ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [-10,40]
triggerall = P2BodyDist Y = [-10,20]
triggerall = statetype = A
triggerall = ctrl
triggerall = enemynear(var(51)),vel x > 0
triggerall = var(50) != 6
triggerall = var(50) != 12
triggerall = var(50) != 13
trigger1 = enemynear(var(51)),movetype != A
trigger1 = P2BodyDist X = [0,10]
trigger2 = enemynear(var(51)),movetype = A
trigger2 = enemynear(var(51)),time <= 3

[State -1, ONジャンプ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = A
triggerall = P2BodyDist X = [0,40+(enemynear(var(51)),vel x > 0)*10]
triggerall = P2BodyDist Y = [-20,20]
triggerall = var(50) != 6
triggerall = var(50) != 12
triggerall = var(50) != 13
trigger1 = ctrl

[State -1, ONジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear(var(51)),statetype != A
triggerall = statetype = A
triggerall = var(50) != 6
triggerall = var(50) != 12
triggerall = var(50) != 13
trigger1 = ctrl
trigger1 = pos y < enemynear(var(51)),pos y
trigger1 = vel y >= 0
trigger1 = P2BodyDist X = [-10,20]
trigger1 = P2BodyDist Y = [0,80]

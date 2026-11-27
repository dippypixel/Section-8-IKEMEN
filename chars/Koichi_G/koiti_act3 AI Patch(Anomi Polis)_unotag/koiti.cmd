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



[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20

























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
triggerall = StateNo != [3000,3500]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500])
triggerall = stateno != [1000,1300]
trigger1 = command = "turtleuno"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(var(59)**2/64.0))
trigger3 = var(59) >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
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
;triggerall = Partner, Time > 1 && Time > 45
triggerall = StateNo = [13000,13002]
trigger1 = command = "sheoun"
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
trigger1 = var(59) <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000]
trigger2 = var(59) <=  0
trigger3 = var(59) > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = var(59) >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
trigger5 = stateno = [1000,1300]
trigger5 = command = "sheoun"
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
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(var(59)**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = var(59) >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(var(59)**2/64.0))
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
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = var(59) >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = var(59) >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(var(59)**2/64.0))

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





[State -1, GHA(SON)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13300
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = power >= 3000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9  
trigger10 = stateno = 1000 || stateno = 1010 || stateno = 1020 
trigger11 = stateno = 1100 || stateno = 1130 || stateno = 1160 
trigger12 = stateno = 1200 || stateno = 1210 || stateno = 1220  

[State -1, GHA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3300
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = power >= 3000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9  
trigger10 = stateno = 1000 || stateno = 1010 || stateno = 1020 
trigger11 = stateno = 1100 || stateno = 1130 || stateno = 1160 
trigger12 = stateno = 1200 || stateno = 1210 || stateno = 1220  

 

[State -1, SON3FREEZ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = power >= 1000

triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9  
trigger10 = stateno = 1000 || stateno = 1010 || stateno = 1020 
trigger11 = stateno = 1100 || stateno = 1130 || stateno = 1160 
trigger12 = stateno = 1200 || stateno = 1210 || stateno = 1220  


[State -1, act1スパコン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])

triggerall = power >= 1000

triggerall = var(10) = 0
triggerall = !var(30)
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9  
trigger10 = stateno = 1000 || stateno = 1010 || stateno = 1020 
trigger11 = stateno = 1100 || stateno = 1130 || stateno = 1160 
trigger12 = stateno = 1200 || stateno = 1210 || stateno = 1220  


[State -1,act2カウンター]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(43)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9
 
 

[State -1,ドジュウL]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3]) 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9
 

[State -1,ドジュウM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1130
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(1) = [1,3]) 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,ドジュウH]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1160
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(2) = [1,3]) 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3])  || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9
 
[State -1,ゆるさないぞ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9
 
[State -1, SHIT]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3])  || (helper(10371),var(2) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9
 

[State -1, 重いッ！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)

triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9
 

[State -1, 風圧]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11400
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(20)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9
trigger9 = movetype = H && statetype != A
trigger9 = time > 0


[State -1,くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = NumHelper(1500) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9
 




[State -1, 前転]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 102
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(30)
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = 1),(helper(10371), sysvar(0) = -1)) || (prevstateno = 40 && vel x > 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&2)

trigger1 = statetype != A
trigger1 = ctrl

[State -1, 走る]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = 1),(helper(10371), sysvar(0) = -1)) || (prevstateno = 40 && vel x > 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&2)

trigger1 = statetype != A
trigger1 = ctrl

[State -1, 後転]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 107
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(30)
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = -1),(helper(10371), sysvar(0) = 1)) || (prevstateno = 40 && vel x < 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&4)

trigger1 = statetype != A
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = -1),(helper(10371), sysvar(0) = 1)) || (prevstateno = 40 && vel x < 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&4)

trigger1 = statetype != A
trigger1 = ctrl

[State -1, エアダッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 12000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = 1),(helper(10371), sysvar(0) = -1)) || (prevstateno = 40 && vel x > 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&2)

trigger1 = statetype = A
trigger1 = ctrl

[State -1, エアBダッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 12010
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
triggerall = numhelper(10371)
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = cond((p2dist x >= 0),(helper(10371), sysvar(0) = -1),(helper(10371), sysvar(0) = 1)) || (prevstateno = 40 && vel x < 0 && vel y < 0 && pos y >= -55 && helper(10371),sysvar(2)&4)

trigger1 = statetype = A
trigger1 = ctrl



[State -1, 投げ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = !var(49)
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command != "holdback"

[State -1, 投げ(後方)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 801
triggerall = !var(49)
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command = "holdback"

[State -1, SON投げ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10800
triggerall = var(49)
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command != "holdback"

[State -1, SON投げ(後方)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10801
triggerall = var(49)
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command = "holdback"

[State -1, 回り込み]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
trigger1 = statetype != A && ctrl
trigger1 = command = "a"
value = 702

[State -1, プッツンキャンセルOF]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 500
triggerall = command = "a"
trigger1 = (stateno = 200)  
trigger2 = (stateno = 210)  
trigger3 = (stateno = 220)  
trigger4 = (stateno = 230)   
trigger5 = (stateno = 240) 
trigger6 = (stateno = 400) 
trigger7 = (stateno = 410) 
trigger8 = (stateno = 420) 
trigger9 = stateno = 1000 || stateno = 1010 || stateno = 1020 
trigger10 = stateno = 1100 || stateno = 1130 || stateno = 1160 
trigger11 = stateno = 1200 || stateno = 1210 || stateno = 1220 
value = 700


[State -1, プッツンキャンセルON]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = statetype != A
triggerall = power >= 500
triggerall = command = "a"
trigger1 = (stateno = 10200)  
trigger2 = (stateno = 10210)  
trigger3 = (stateno = 10220) 
trigger4 = (stateno = 10230)  
trigger5 = (stateno = 10400) 
trigger6 = (stateno = 10410) 
trigger7 = (stateno = 10420)  
trigger8 = (stateno = 11000) 
trigger9 = (stateno = 11200)  
value = 700

[State -1, スタンドラッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = power >= 250
triggerall = command = "c"
trigger1 = stateno = 11200
trigger1 = time >= 0
value = 2100



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2

triggerall = !var(30)
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "x" && command = "z"
ignorehitpause = 1
value = 4000


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2

triggerall = !var(30)
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "x" && command = "z"
value = 4005

[State -1,2段ジャンプ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 41

triggerall = var(49) = 10000
triggerall = !var(30)
triggerall = var(4) = 1
triggerall = command = "up"
triggerall = command != "upc"
triggerall = stateno = 50 && time > 5
trigger1 = ctrl


[State -1, しゃがみ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5



[State -1, しゃがみ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5

[State -1, しゃがみ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 420
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 6
trigger6 = (stateno = 230) && time >= 7


[State -1, 立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = var(8) = 1
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = movecontact
trigger1 = (stateno = 200) && time >= 5 

[State -1, 5H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = var(8) = 1
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 210) && time >= 7 

[State -1, ゆるさないぞ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = var(8) = 1
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 220) && time >= 9 
  
[State -1, 立ち弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5


[State -1, 前立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(10) = 0 
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 6
trigger7 = (stateno = 420) && time >= 9

 
[State -1, 前立ち強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = var(10) = 0 
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 6
trigger7 = (stateno = 420) && time >= 9
trigger8 = (stateno = 230) && time >= 9
 


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = var(59)<=0&& RoundState = 2
triggerall = teammode != Simul  
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = var(59)<=0&& RoundState = 2
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

 

[State -1, ジャンプ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 14

[State -1, ジャンプ中2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 615
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(30)
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, ジャンプ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !var(30)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(30)
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, ジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(30)
trigger2 = stateno = 600 || stateno = 610 || stateno = 615
trigger2 = movecontact

[State -1, SON立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = movecontact
trigger1 = (stateno = 10200) && time >= 5


[State -1, SON5H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 10210) && time >= 7


[State -1, くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 10220) && time >= 13
 

[State -1, SONしゃがみ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5


[State -1, SONしゃがみ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10410
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5

[State -1, SONしゃがみ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 7

[State -1, SON特殊]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10230
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = helper(10371),sysvar(1)&2
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10400) && time >= 5
trigger6 = (stateno = 10410) && time >= 7
trigger7 = (stateno = 10420) && time >= 9


[State -1, SON立ち弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5 

[State -1, SON立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5 

[State -1, SON立ち強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !((helper(10371),sysvar(1))&8)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 7

 


[State -1, SON空中特殊]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10630
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SONジャンプ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10600
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
triggerall = !numhelper(1001)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SONジャンプ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
triggerall = !numhelper(1001)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SONジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16000
triggerall = var(59)<=0
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

[State -1, クイックスタンドon]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10901
triggerall = var(59)<=0
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 200) && time >= 5
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 220) && time >= 9
trigger4 = (stateno = 230) && time >= 11
trigger5 = (stateno = 240) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 6
trigger8 = (stateno = 420) && time >= 9


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16010
triggerall = var(59)<=0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0



[state -1]
type = varset
triggerall = var(59) != 1
triggerall = RoundState = [1,2]
triggerall = enemynear,life > 0
trigger1 = AILevel 
Trigger2 = NumHelper(50000) != 0
Trigger2 = Helper(50000),Var(59) = 1
ignorehitpause = 1
var(59)=1

[State -3]
type = VarSet
triggerall = var(59)    = 1
trigger1 = roundstate = [0,1]
trigger2   = roundstate  = 4
trigger3   = win
trigger4   = lose
trigger5  = drawgame
trigger6   = !alive
ignorehitpause = 1
var(59) = -1


[State -1]
type = VarSet
trigger1 = var(59)    = -1
trigger1 = roundstate = 2 && enemynear,life > 0
trigger1 = ctrl
ignorehitpause = 1
var(59) = 1


[State -3]
Type = Helper
Trigger1 = NumHelper(50000) = 0 && !Var(59)
Trigger1 = RoundState = 2 && alive && StateNo = 0
Trigger1 = PrevStateNo = 5900 || PrevStateNo = [190,199]
StateNo = 50000
PosType = P1
Pos = 0, 0
KeyCtrl = 1
Ownpal = 1
ID = 50000
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -3]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1= ishelper(50000)
trigger1= stateno!=50000
value=50000






[State -1, AI]
Type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = var(59) =1
trigger1 = stateno = [120,139]
trigger1 = stateno = [150,159]
Trigger1 =p2statetype != A || p2statetype = A
trigger1 = p2movetype != A || p2movetype = I
Value = 140

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 120
triggerall = alive
triggerall = var(59)      = 1
triggerall = random <= 750*var(59)
trigger1   = ctrl
trigger1   = p2movetype    = A
trigger1   = enemynear,hitdefattr = SCA, AA, AP
trigger1   = p2bodydist x >= 0
trigger1   = inguarddist
trigger2   = ctrl
trigger2   = enemynear,movetype = A
trigger2   = enemy,numhelper > 0 || enemy,numproj > 0
trigger2   = inguarddist
trigger3   = ctrl
trigger3   = enemynear,movetype = A
trigger3   = enemynear,hitdefattr = SCA, AA, AP
trigger3   = p2bodydist x  < 0
trigger4   = stateno       = 100
trigger4   = p2movetype    = A
trigger4   = enemynear,hitdefattr = SCA, AA, AP
trigger4   = inguarddist
trigger5   = stateno       = 100
trigger5   = enemynear,movetype = A
trigger5   = enemy,numhelper > 0 || enemy,numproj > 0
trigger5   = inguarddist















[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16000
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = random <= var(59)*300
triggerall = p2bodydist x >= 30
trigger1 = ctrl




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 20
triggerall = random <= var(59)*800
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
triggerall = roundstate = 2
triggerall = var(49)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 25
triggerall = random <= var(59)*800
trigger1 = ctrl



[State -3, ?????]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),800,10800)
TriggerAll = var(59) =1
TriggerAll = (RoundState = 2) && Alive
TriggerAll = statetype != A
triggerAll = p2bodydist X <= 25
triggerAll = (p2statetype != A) && (p2statetype != L)
triggerall = p2stateno != 5120
triggerAll = p2movetype != H
triggerall = random <= 550*var(59)
trigger1 = ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = var(49)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x = [26,40]
triggerall = random <= var(59)*300
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = A && p2movetype != H
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*700
trigger1 = ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 23000
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = power >= 1000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*400
trigger1 = ctrl





[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = statetype != A
triggerall = p2bodydist x = [40,60]
triggerall = random <= var(59)*500
trigger1 = ctrl

[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = p2statetype = L
triggerall = statetype != A
triggerall = random <= var(59)*700
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(30)
triggerall = power >= 100
triggerall = random <= var(59)*500
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4000

[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) = 1&& RoundState = 2

triggerall = !var(30)
triggerall = power >= 100
triggerall = random <= var(59)*500
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4005



[State -1,ドジュウM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1160
triggerall = var(59)= 1
triggerall = RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = random <= var(59)*300
triggerall = ctrl
Trigger1 = P2bodyDist X > 150

[State -1,ドジュウM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1130
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = random <= var(59)*300
triggerall = ctrl
Trigger1 = P2bodyDist X > 150

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*800
trigger1 = ctrl



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
triggerall = var(59) = 1
triggerall = var(49)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall =p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 40
triggerall = random <= var(59)*500
trigger1 = ctrl
trigger2 = stateno = 1950



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
triggerall = var(59) = 1
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*800
trigger1 = ctrl





[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),1000,11000)
triggerall = !numhelper(1001)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype != A
triggerall = random <= var(59)*100
trigger1 = p2bodydist x >100
trigger1 = ctrl










[State -1, クイックスタンドon]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10901
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = stateno = 220 && movecontact




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),400,10400)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 15
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 400 && movecontact
trigger2 = var(49)
trigger2 = stateno = 10400 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = p2bodydist x >= 10
trigger1 = !var(49)
trigger1 = stateno = 400 && movecontact




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(random <= 500,10200,10420)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x >= 15
triggerall = random <= var(59)*800
trigger1 = stateno = 10400 && movecontact



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = random <= var(59)*800
triggerall = p2movetype = H
trigger1 = stateno = 10420 && movehit

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x >= 15
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 400 && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),210,10210)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 200 && movecontact
trigger2 = var(49)
trigger2 = stateno = 10200 && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),220,10220)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 210 && movecontact
trigger2 = !var(49)
trigger2 = p2bodydist x >= 20
trigger2 = stateno = 400 && movecontact
trigger3 = var(49)
trigger3 = stateno = 10210 && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),1000,11000)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
triggerall = power < 2000
trigger1 = !var(49)
trigger1 = stateno = 220 && movecontact
trigger2 = var(49)
trigger2 = stateno = 10220 && movecontact
trigger3 = var(49)
trigger3 = p2stateno = [120,159]
trigger3 = stateno = 10420 && movecontact

[State -1, GHA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),3300,13300)
triggerall = var(59) = 1&& RoundState = 2
triggerall = power >= 2000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*700
trigger1 = !var(49)
trigger1 = stateno = 220 && movehit
trigger2 = var(49)
trigger2 = stateno = 10220 && movehit


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),3000,13000)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*300
trigger1 = power >= 1000 && power < 2000
trigger1 = !var(49)
trigger1 = stateno = 220 && movehit
trigger2 = power >= 1000 && power < 2000
trigger2 = var(49)
trigger2 = stateno = 10220 && movehit
trigger3 = var(49)
trigger3 = p2stateno != [120,159]
trigger3 = stateno = 11000 && time = [50,75]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 615
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 600 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 615 && movecontact






[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1950
triggerall = var(59)      = 1
triggerall = statetype    != A
triggerall = p2statetype  != A && p2statetype != L
triggerall = p2movetype   != H
triggerall = p2bodydist x  = [50,90]
trigger1   = ctrl || stateno = 21
trigger1   = random        < 100*var(59)




[State -1,]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 39
triggerall = var(59) = 2
triggerall = roundstate = 2
triggerall = p2bodydist x = [75,90]
triggerall = p2statetype != L
triggerall = random <= 200*var(59)
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1,]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 38
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2statetype != L
triggerall = p2bodydist x = [120,250]
triggerall = random <= 200*var(59)
trigger1 = statetype != A
trigger1 = ctrl = 1





[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = enemynear,movetype != A
triggerall = p2bodydist x >= 150
triggerall = random <= 160*var(59)
trigger1 = statetype != A
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = enemynear,statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 50



[State -3, RUN]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59) = 1
triggerall = Random <= 800*var(59)
triggerall = RoundState = 2  && Alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400*var(59)
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200*var(59)
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= 100*var(59)

[State -3,d]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59) = 1
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = prevstateno != 101
triggerall = prevstateno != 102
triggerall = !inguarddist
trigger1 = p2bodydist x = [240,290]
trigger1 = random <= (var(59))*400
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (var(59))*230
trigger3 = p2bodydist x > 270
trigger3 = random <= (var(59))*350
trigger4 = enemynear,statetype = A && enemynear,movetype = H
trigger4 = p2bodydist x > 120
trigger4 = random <= (var(59))*500


[State -3,bs]
Type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = var(59) = 1
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 104
triggerall = prevstateno != 104
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= var(59)*150
trigger2 = enemynear,statetype = L
trigger2 = p2bodydist x <= 40
trigger2 = random <= var(59)*250

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2statetype != L
trigger1 = stateno = 10901
trigger1 = animelem = 5, >= 1 && animelem = 5, <= 2






[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 600*var(59)
triggerall = statetype != A
triggerall = enemynear,MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2bodydist X >= 125
trigger1 =Enemy,Numproj != 0
trigger2 = (enemynear,AnimTime <= -35 && !enemynear,Ctrl)
trigger2 = Enemy,Numproj != 0


[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value =702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 200*var(59)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = BackEdgeBodyDist >= 40 && enemynear,statetype = A
trigger1 = (P2Dist X = [-15,15]) && (enemynear,Pos Y = [-100,-60])
trigger1 = enemynear,Vel Y > 0


[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = enemynear,time >= 50
triggerall = Random <= 200*var(59)
triggerall = Random <= 600*var(59)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = enemynear,facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [0,150]
trigger1 = enemynear,animtime <= -30



[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = Random <= 900*var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(59)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(59)

[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = Random <= 900*var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = movetype = H
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = (PrevStateNo=[5000,5270])
triggerall = enemynear,facing != facing
triggerall = ctrl
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(59)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(59)


[state 0]
type = changestate
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = numhelper(1200000) = 1
value = 1260000
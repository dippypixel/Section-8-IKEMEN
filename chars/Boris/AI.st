[Statedef -3]
;------------------------------------------------------------------------------
;AI

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "AI Activated = %d , Brutal AI Activated = %d , settings.cfg mode = %d , p2bodydist y = %d , Lvl 2 Fish = %d , Lvl 3 Fish = %d "
params = var(59),var(49),var(48),p2bodydist y,numexplod(2990) ,numexplod(2991) 

[State -2, Brutal AI?]
type = VarSet
trigger1 = !var(48) && AILevel>5
v = 49
value = 1

[State -2, Brutal AI?]
type = VarSet
trigger1 = !var(48) && AILevel<=5
v = 49
value = 0

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState=3 &&(stateno = 195 || lose) ; the player taunted OR lost
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

;Thanks Inktrebuchet!
[state -3, AI Detect Projectile System]
type = helper
trigger1 = var(59) 
trigger1 = !numhelper(33333333)
name = "AI Detect Projectile System"
ID = 33333333
stateno = 33333333
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -1]
type = changestate
TriggerAll=RoundState=3 && stateno != 195 && prevstateno != 195
triggerall = win
Trigger1=(statetype = s) && ctrl
triggerall = var(59)
value = 195

[State -1]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(59); and the AI is on
Triggerall=ctrl; and we have control
Triggerall=!numexplod(2999) ; and it's a reasonable amount of time to be guarding
Trigger1 = ifelse(var(49),random%450>300,random%450>440)
value=120

[State -1]; The engine will still guard through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1]
type = ChangeState
value = 105
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
TriggerAll= StateNo!=[120,155]
triggerall = stateno !=[100,105]
triggerall = prevstateno !=[100,105]
triggerall = backedgebodydist > 30
Triggerall= (statetype != a)
triggerall = ctrl
triggerall = p2movetype = A
trigger1 = P2bodydist X>70 && P2bodydist X<140
trigger2 = P2bodydist X<=50 && random%50>45

[State -1]
type = ChangeState
value = 100
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = stateno !=[100,105]
triggerall = prevstateno !=[100,105]
Trigger1= (statetype = s) && ctrl
trigger1 = P2bodydist X>110
trigger1 = !p2movetype = A || numexplod(2999)

;-------------------------------------------------------------
;LAZILY IMPLEMENTED GUARD TIME SYSTEM INSPIRED BY THE_NONE

;Stop guarding and attack if shit aint happenin
[State 0, Explod]
type = Explod
triggerall = (stateno = [120,142]) && time > 28
trigger1 = random%80 = 0 && !numexplod(2999)
anim = 9999
ID = 2999
pos = -50,-50
postype = left
bindtime = -1
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(2999)
trigger1 = movetype = H
trigger2 = !inguarddist
id = 2999

;-------------------------------------------------------------
;ESPERIMENTAL FISHING SYSTEM

;Fish for a Lvl 2
[State 0, Explod]
type = Explod
triggerall = power >= 900
trigger1 = random%900 = 0 && !numexplod(2990)
anim = 9999
ID = 2990
pos = -50,-50
postype = left
bindtime = -1
removetime = 600+random%500

;Fish for a Lvl 3
[State 0, Explod]
type = Explod
triggerall = power >= 2300
trigger1 = random%900 = 0 && !numexplod(2991) 
anim = 9999
ID = 2991
pos = -50,-50
postype = left
bindtime = -1
removetime = 600+random%500

;-------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800
triggerall = RoundState = 2 && Var(59)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = p2bodydist X <= 25
trigger1 = (enemynear,statetype = S && (enemynear,stateno = [120,160])) || (enemynear,statetype != A && enemynear,statetype != L && random%10 < 2)
trigger1 = ctrl
trigger1 = ifelse(var(49),1,random%450>425)

[State -1]
type = ChangeState
value = ifelse(random%2 = 0,200,400)
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = time > 2
Trigger1 = ctrl
trigger1 = statetype != A
trigger1 = p2statetype != L
trigger1 = p2statetype != A
trigger1 = P2bodydist X<14
trigger1 = P2bodydist Y> -48

[State -1]
type = ChangeState
value = 400
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = time > 2
triggerall = P2bodydist X<15
trigger1 = P2bodydist Y> -43

[State -1]
type = ChangeState
value = 410
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
Triggerall= (stateno = 200) && movehit
trigger1 = P2bodydist y>-40
trigger1 = P2bodydist X<15

[State -1]
type = ChangeState
value = ifelse(random%2 = 0,230,ifelse(random%2 = 0,400,210))
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
trigger1 = (stateno = 200) && movehit
trigger1 = P2bodydist X<9
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = ifelse(random%2 = 0,210,230)
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 200) && movehit
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = 220
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 210) && movehit

[State -1]
type = ChangeState
value = 240
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 230) && movehit

[State -1]
type = ChangeState
value = 250
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 240) && movehit

[State -1]
type = ChangeState
value = ifelse(random%2 = 0,430,410)
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = p2statetype != A
trigger1 = (stateno = 400) && movehit

[State -1]
type = ChangeState
value = 410
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 400) && movehit

[State -1]
type = ChangeState
value = 420
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = (stateno = 410) && movehit
trigger1 = p2statetype != A
trigger2 = p2statetype = A
trigger2 = P2bodydist y>-97

[State -1]
type = ChangeState
value = 430
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
trigger1 = p2statetype = L
trigger1 = P2bodydist X<35
trigger1 = ctrl

[State -1]
type = ChangeState
value = 440
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 430) && movehit

[State -1]
type = ChangeState
value = 450
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
trigger1 = (stateno = 440) && movehit

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
trigger1 = statetype = A
TriggerAll=RoundState=2
triggerall = time > 9
trigger1 = ctrl
trigger1 = P2bodydist Y > -45 && P2bodydist Y < 45
triggerall = var(59)
trigger1 = P2bodydist X<25+vel x
value = ifelse(random%2 = 0,630,600)

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
TriggerAll=RoundState=2
trigger1 = (stateno = 600) && movehit
trigger2 = (stateno = 630) && movehit
triggerall = P2bodydist Y > -13 && P2bodydist Y < 69
triggerall = var(59)
triggerall = P2bodydist X<27
value = 610

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
TriggerAll=RoundState=2
trigger1 = ctrl
trigger2 = (stateno = 600) && movehit
triggerall = P2bodydist Y > vel y && P2bodydist Y < 87
triggerall = var(59)
triggerall = P2bodydist X<34+vel x
value = 630

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
TriggerAll=RoundState=2
trigger1 = (stateno = 610) && movehit
trigger2 = (stateno = 640) && movehit
triggerall = P2bodydist Y > -45 && P2bodydist Y < 81
triggerall = var(59)
triggerall = P2bodydist X<20
triggerall = var(13)
value = 620

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
TriggerAll = RoundState= 2
trigger1 = (stateno = 630) && movehit
trigger2 = (stateno = 610) && movehit
triggerall = P2bodydist Y > -2 && P2bodydist Y < 77
triggerall = var(59)
triggerall = !var(13)
value = 640

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
TriggerAll=RoundState=2
trigger1 = (stateno = 640) && movehit
triggerall = P2bodydist Y > -11 && P2bodydist Y < 85
triggerall = var(59)
value = 650

[state -1]
type = changestate
triggerall = ifelse(var(49),1,random%450>425)
trigger1 = statetype != A
TriggerAll=RoundState=2
trigger1 = P2bodydist Y < -140 && ctrl
trigger1 = enemynear, vel x < 3 && enemynear, vel y < 3
trigger2 = (stateno = 420) && movehit
triggerall = var(59)
value = 4001

[State -1]
type = ChangeState
value = 3030
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 3000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = P2bodydist X<15
Trigger1= ctrl

[State -1]
type = ChangeState
value = 3020
triggerall = ifelse(var(49),1,random%450>425)
triggerall = !NumHelper(3021)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 2000
triggerall = !numexplod(2991)
triggerall = statetype != A
triggerall = P2bodydist X> 130
Trigger1= ctrl

[State -1]
type = ChangeState
value = 3000
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 1000
triggerall = !numexplod(2990)
triggerall = !numexplod(2991)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = P2bodydist X< 80
Trigger1= ctrl
trigger2 = stateno = [200,250]
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3010
triggerall = ifelse(var(49),1,random%450>425)
triggerall = !NumHelper(3011)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 1000
triggerall = !numexplod(2990)
triggerall = !numexplod(2991)
triggerall = statetype != A
triggerall = P2bodydist X> 110
Trigger1= ctrl

[State -1]
type = ChangeState
value = 1000
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = P2bodydist X< 90
triggerall = prevstateno != 1000
triggerall = prevstateno != 1020
Trigger1 = ctrl
Trigger1 = P2bodydist X> 45
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250
trigger2 = movehit

[State -1]
type = ChangeState
value = 1020
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = P2bodydist X< 60
triggerall = P2bodydist X> 17
triggerall = prevstateno != 1020
Trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 250 || stateno = 1000 
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1022
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
Trigger1= ctrl
trigger1 = p2statetype = L
trigger1 = P2bodydist X<80
trigger2 = ctrl && numexplod(2999) && statetype != A
trigger2 = P2bodydist X<60 && P2statetype = C

[State -1]
type = ChangeState
value = 1024
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
Trigger1= ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = P2bodydist X<60
trigger1 = P2bodydist y>-152 && P2bodydist y<-75

[State -1]
type = ChangeState
value = 1030
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = p2statetype != L
triggerall = P2bodydist X > 90
triggerall = prevstateno != 1000
Triggerall = p2bodydist x <= 210 + pos y
triggerall = backedgebodydist < frontedgebodydist - 25
triggerall = p2bodydist y > -55
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1010
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
Trigger1= ctrl
trigger1 = statetype != A
trigger1 = p2statetype != A
trigger1 = P2bodydist X> 135

[State -1]
type = ChangeState
value = 1011
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype = A
triggerall = P2bodydist y+53 > P2bodydist x > P2bodydist y
triggerall = pos y < -45
triggerall = prevstateno = 4000 || prevstateno != 4001 && time > 18
trigger1 = P2bodydist X> 10
trigger2 = p2statetype = L
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Special |------------------------------------------------------
[Command]
name = "Super"
command = D, DB, B, b
time = 15


[Command]
name = "Special3"
command = ~B, F, a

[Command]
name = "Special2"
command = ~D, DF, F, b

[Command]
name = "Special"
command = ~D, DF,F, a

[Command]
name = "Uppercut"
command = /$U+a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "fwd"     ;Required (do not remove)
command = F
time = 10
[Command]
name = "back"     ;Required (do not remove)
command = B
time = 10

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1
[Command]
name = "hold_b";Required (do not remove)
command = /b
time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "holdstart";Required (do not remove)
command = /s
time = 1

[Command]
name = "uf"
command = UF
time = 1
buffer.time = 1
[Command]
name = "ub"
command = UB
time = 1
buffer.time = 1
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Default Shit Disabled]
type = AssertSpecial
trigger1 = AILevel
flag = nowalk
flag2 = NoStandGuard
flag3 = NoCrouchGuard
ignorehitpause = 1
[State -1, Default Shit Disabled]
type = AssertSpecial
trigger1 = AILevel
flag = noairguard
ignorehitpause = 1

[State 0, AILevel]
type = VarSet
trigger1 = aiLevel
v = 59
value = ifelse(aiLevel=1, 1, ifelse(aiLevel=2, 4, ifelse(aiLevel=3, 8, ifelse(aiLevel=4, 14, ifelse(aiLevel=5, 21, ifelse(aiLevel=6, 32, ifelse(aiLevel=7,26, ifelse(aiLevel=8,60,0))))))))
[State -1, Parry]
type = ChangeState
value = 700
triggerall = AILevel>=6 && roundstate = 2 && alive && numenemy
triggerall = enemynear,ailevel = 0 && random < var(59)/3-var(35) || enemynear,ailevel && random < (300*ifelse(life < (lifemax*.5),2+var(35),1+var(35)))
triggerall = (stateno != [6565600,6565621]) || (stateno = [6565600,6565621]) && (stateno != [6565610,6565611])
triggerall = movetype = H && gethitvar(hitcount) = 1 && time = 0
triggerall = stateno != 700 && (stateno != [120,160])
trigger1 = hitdefattr != SCA, HA, HP, HT

[State -1,Ai Recover]
type = ChangeState
value = ifelse(pos y <= -20,5210,5200)
triggerall = aiLevel>=3 && roundstate=2 && alive&& numenemy 
triggerall = enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),2,1) || enemynear,ailevel
triggerall = statetype = A && statetype != L
trigger1 = stateno = 5050 && canrecover = 1
;Guard
[State -1, AI Guard]
type = ChangeState
value = 120 
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy 
triggerall = var(5) > (1000*.3) 
triggerall = (stateno != [120,132])
triggerall = stateno != 700 || prevstateno != 700
triggerALL =  enemynear,movetype != H && enemynear(!enemynear,alive),statetype !=L
triggerall = enemynear,ailevel = 0 && random < var(59)*(ailevel/(ifelse(life < (lifemax*.5),2,4))) || enemynear,ailevel ;&& random<ifelse(life < (lifemax*.5),999,700)
trigger1 = ctrl || (stateno = [21,22]) || stateno = 100  || stateno = 0 
trigger1 = inguarddist && enemynear,movetype = A
trigger1 = (enemynear,stateno != [631,633])
;Guard
[State -1, AI GuardCancel]
type = ChangeState
value = ifelse(statetype = A,50,0)
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = stateno = [130,132] 
trigger1 =  !inguarddist
trigger2 = var(5) < 1

[State -1, AI Throw]
type = Changestate
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = statetype != A && pos y = 0
triggerall = enemynear,statetype != A && enemynear,pos y = 0
triggerall = enemynear,movetype != H && enemy,statetype != L
triggerall = stateno != [3000,3005]
triggerall = stateno != 107||stateno != 800
triggerall = ctrl||stateno = 0||(stateno = [120,155])||(stateno = [200,210])&&enemynear, ailevel
triggerall = enemynear,ailevel = 0 &&random < var(59)*ifelse(life < (lifemax*.5),2+var(35),1+var(35))	||enemynear,ailevel&&random<ifelse(life < (lifemax*.5)||var(35),ifelse(enemy,name!="CHASEVV",777,998),var(59)*2)
triggerall = p2bodydist x =[-5,40]
;trigger1 = ctrl|| stateno = 0 
trigger1 = (enemynear,stateno = [120,155])||(enemynear,prevstateno = [120,155])
trigger2 =  enemynear,animtime < -3 && !(enemynear,ctrl)
value = 800

[State -1, AI Run]
type = ChangeState
value = 107
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = stateno != [100,107]
triggerall = enemynear,ailevel = 0 &&random < var(59)*4||enemynear,ailevel
triggerall = enemy,statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 90
;---------------------------------------------------------------------------

[State -1, AI Jump]
type = ChangeState
value = 41
triggerall = random < var(59)*5 && ctrl
triggerall = aiLevel && roundstate=2 && alive && numenemy && statetype = S && enemynear,statetype != L 
triggerall = (stateno != [100,107]) 
trigger1 = ((enemynear,pos y) + (enemynear,vel y)) < -20 && p2bodydist x < 150 && enemynear,movetype != H

[State -1, AI Wall Jump]
type = ChangeState
value = 57
triggerall = random < var(59)*5 && ctrl
triggerall = aiLevel && roundstate=2 && alive && numenemy && statetype = S && enemynear,statetype != L 
triggerall = Pos Y < -const(movement.airjump.height)
triggerall = ctrl && stateno != 55 || (stateno = [5200,5210]) || (stateno = 5040)&&time>10|| stateno = 1010 && animelemtime(20)>0 && !movecontact
trigger1 = backedgebodydist <= ceil(95*const(size.xscale)) 


[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = !var(55)
triggerall = (stateno != [100,107])
triggerall = ctrl && statetype != A
triggerall = AILevel && alive && numenemy
triggerall =  roundstate = 2 || roundstate = 3 && prevstateno != 195
triggerall = enemynear,TeamMode != simul
trigger1 = random < ifelse(enemynear,alive = 0,ifelse(life < (lifemax*.5),500,200),ifelse(enemynear,statetype = L ,ifelse(life<600,0,50),0)) 
trigger1 = enemynear,ailevel = 0 &&!var(35)
trigger2 = enemynear,alive = 0 && random < ifelse(life < (lifemax*.5),500,200)
trigger2 = enemynear,ailevel
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Specials
[State -1, AI Super]
type = ChangeState
value = 3000
triggerall = stateno !=[3000,3005]
triggerall = statetype != A &&pos y=0
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = power = powermax
triggerall = enemynear,ailevel = 0 && random < var(59)*ifelse(enemynear,life < 300||fvar(12)>(ifelse(life > (lifemax*.5),36.0,19.0)),2,0) || enemynear,ailevel && random < ifelse(enemynear,life<300,	700*ifelse(life < (lifemax*.5)&&fvar(12)>19,1.5,1),	100*ifelse(fvar(12)>(ifelse(life > (lifemax*.5),36.0,19.0)),1,0))
trigger1 = ((enemynear,pos x+ (enemynear,vel x * 13))  = [-60,60]) && enemynear,ailevel = 0 
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 52 && prevstateno = 620
trigger4 = enemynear,movetype = H && (stateno != [800,812])
;Special
[State -1, AI Special Hurricane Chase]
type = ChangeState
value = 1000
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = !var(11)
triggerall = stateno != [3000,3005]
triggerall = ctrl||stateno = 0 
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = movetype != H
triggerall = (enemynear,pos x+ (enemynear,vel x * 13))  = [-40,40]
triggerall = (enemynear,pos y + (enemynear,vel y * 11))  = [-50,-20]
trigger1 = enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),3+var(35),2+var(35))|| enemynear,ailevel &&  random < ifelse(life < (lifemax*.5),500,200)
trigger2 = stateno = 107 && random < 500
trigger3 = (enemynear,stateno = [631,633]) && ctrl && random < (ailevel * 75)

[State -1, AI Special Kickflip]
type = ChangeState
value = 1010
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = !var(12)
triggerall = (stateno != [3000,3005])
triggerall = ctrl||stateno = 0 || stateno = 107
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype != A
trigger1 =  enemynear,ailevel && random < 500 || enemynear,ailevel=0 && random < var(59)*ifelse(life < (lifemax*.5),3+var(35),2+var(35))
trigger1 =  P2BodyDist y < -50 || p2bodydist x  > 140
trigger2 = (enemynear,stateno = [631,633]) && ctrl

[State -1, AI Special SLAP]
type = ChangeState
value = 1020
triggerall = aiLevel>=4 && roundstate=2 && alive && numenemy
triggerall = !var(13)
triggerall = stateno != [3000,3005]
triggerall = ctrl||stateno = 0 || stateno = 107
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype != A
triggerall = (stateno != [1000,1010])
triggerall =  enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),1,2) || enemynear,ailevel
trigger1 = (enemynear,pos y + (enemynear,vel y * 21))  = [-60,20]
trigger1 = (p2bodydist x - (enemynear,vel x * 21)) = [150, 160]
trigger2 = (enemynear,stateno = [631,633]) && enemynear,life <= 120*fvar(20) && random < 500
;===========================================================================

;Kick
[State -1, AI Footsaw]
type = ChangeState
value = 220
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = (stateno != [3000,3005])
triggerall =  ctrl||stateno = 0 || stateno = 107
triggerall = statetype != A
triggerall = (p2bodydist y- (enemynear,vel y * 11)) = [-60,0]
triggerall = (p2bodydist x - (enemynear,vel x * 11)) = [-5,100]
triggerall = enemynear,ailevel && random < var(59)*(2+var(35)) || enemynear,ailevel=0 && random < var(59)*ifelse(life < (lifemax*.5),3+var(35),1+var(35))
trigger1 = enemynear(!enemynear,alive), statetype != L
trigger1 = 1
trigger2= enemynear(!enemynear,alive), statetype != L
trigger2 =  enemynear,animtime < -13 && !(enemynear,ctrl)
trigger3 =  enemynear,statetype=L&& enemynear,time > enemynear,const(data.liedown.time)-5
;---------------------------------------------------------------------------
;Punch1
[State -1, AI Punch1]
type = ChangeState
value = 200
triggerall = aiLevel && roundstate=2 && alive && numenemy 
triggerall = (stateno != [3000,3005])
triggerall = ctrl||stateno = 0|| (stateno = [20,22]) || stateno = 107 ||stateno = 700&& time = 9 
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = (p2bodydist x = [-5,88]) && (enemynear,pos y + (enemynear,vel y * 6))  = [-70,0]
triggerall = statetype != A 
triggerall =(enemynear,stateno != [120,160])
trigger1 =  enemynear, ailevel=0 && random < var(59)*ifelse(life < (lifemax*.5),7+var(35),5+var(35))|| enemynear,ailevel ;&& random < 500 
trigger2 = (enemynear,stateno = 633) && (enemynear,pos y + (enemynear,vel y * 6))  = [-40,-60]
trigger3 = stateno = 812 && movehit
trigger4 = stateno = 0 && time > 60 ;so he dont do notin for way too long
[State -1, AI AirPunch]
type = ChangeState
value = 600
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = ctrl || stateno = 50||stateno = 700&& time = 9  && pos y != 0
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype = A
triggerall = enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),7,5) || enemynear,ailevel
trigger1 = (((enemynear,pos y + enemynear,vel y * 6) - (pos y + vel y * 6))  = [-80,60])
trigger1 = (((enemynear,pos x + enemynear,vel x * 6) - (pos x + vel x * 6)) = [-25, 60]) 

;---------------------------------------------------------------------------
;Kick
[State -1, AI Kick]
type = ChangeState
value = 210
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = (stateno != [3000,3005])
triggerall = ctrl||stateno = 0 || stateno = 107
triggerall = statetype != A
triggerall = enemynear(!enemynear,alive), statetype != L ;3
triggerall = stateno != 210
triggerall =  enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),5+var(35),3+var(35)) || enemynear,ailevel && random < ifelse(life < (lifemax*.5),500,1000)
trigger1 = ((p2bodydist x - (enemynear,vel x * 7)) = [-5, 100])&& ((enemynear,pos y + (enemynear,vel y * 7))  = [-110,0])

;---------------------------------------------------------------------------
[State -1, AI AxeKick]
type = ChangeState
value = 620
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = ctrl;|| stateno = 50
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype = A
triggerall = (p2bodydist x - (enemynear,vel x * 14)) = [70, 98]
triggerall = (pos y + vel y * 11) < -45 && ((enemynear,pos y + enemynear,vel y * 14) - (pos y + vel y * 14)) >-100
trigger1 = enemynear, ailevel = 0 &&random < var(59)*(4+var(35))|| enemynear,ailevel 
[State -1, AI AirKick]
type = ChangeState
value = 610
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = random < var(59)*(1+var(35))
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype = A
triggerall = (enemynear,pos x + (enemynear,vel x * 6))  = [0,104]
triggerall = (enemynear,pos y + (enemynear,vel y * 6))  = [-64,52]
trigger1 = ctrl
;AirAttack

[State -1, AI Uppercut]
type = ChangeState
value = 601
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = var(7) = 0
triggerall = random < var(59)*3
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype = A
triggerall = (p2bodydist x - (enemynear,vel x * 12)) = [0, 60]
triggerall = (enemynear,pos y + (enemynear,vel y * 12))  = [20,-70]
trigger1 = ctrl

[State -1, AI punch 1 combo];"STOLE THIS IDEA FROM POYOCHAN LOL" - guymbagoomba
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = stateno = 200 && movecontact
trigger1 = var(54):= 201 || 1
trigger2 = stateno = 201 && movecontact
trigger2 = var(54):= 202 || 1
trigger3 = stateno = 202 && movecontact 
trigger3 = var(54):= 210 || 1



[State -1, AI kick to air combo]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2 && numenemy 
trigger1 = stateno = 210 && movehit || stateno = 202 && movehit
trigger1 = var(54):= ifelse(!var(11),1000,ifelse(!var(12)&&!moveguarded&&enemynear, pos y > -30 && enemynear,statetype = A,1010,ifelse(fvar(20) >=.5&&var(18)<2&&!moveguarded&&(enemynear,pos y + enemynear,vel y * 11)>-50,220,41))) || 1

trigger2 = stateno = 50 && time >= 2 && ((p2bodydist x - (vel x * 4)) = [-25, 60]) && p2bodydist y > -15
trigger2 = var(54):= ifelse(target,pos y > -70&&target,statetype=A&&(pos y <-45),620,600) || 1

;trigger3 = stateno = 600 && movecontact
;trigger3 = var(54):= ifelse(prevstateno != 600&&(p2dist y =[-40,100]),600,ifelse(var(7) < 2 &&p2dist y  < 40*fvar(20), 601,ifelse((((enemynear,pos y + enemynear,vel y * 8) - (pos y + vel y * 8)) = [-80,40]),610,ifelse(p2dist y=[-50,50],620,stateno)))) || 1

;trigger4 = stateno = 601 && movecontact
;trigger4 = var(54):= ifelse((p2dist y =[-40,100]),600,ifelse(  (p2dist y = [20/fvar(20),70]),610,620)) || 1

;trigger5 = stateno = 610 && ifelse(enemynear,ailevel=0,movecontact ,movehit) 
;trigger5 = var(54):= ifelse(var(7) < 2&& p2dist y < 40*fvar(20),601,ifelse((pos y <-45),620,stateno)) || 1

[State -1, AI Axkick Combo]
type = ChangeState
value = 620
triggerall = AILevel>1 && RoundState = 2 && numenemy 
trigger1 = stateno = 610 && movecontact&&pos y < -20
trigger2 = stateno = 600 &&ifelse(p2dist y > 50,1,prevstateno=600) && movecontact&&var(7)&&(p2dist y !=[-30,30])
trigger3 = stateno = 601&& movecontact&&p2dist y > 50

[State -1, AI Uppercut Combo]
type = ChangeState
value = 601
triggerall = AILevel>1 && RoundState = 2 && numenemy 
triggerall = var(7) < 2 
triggerall = (p2dist y =[-70,20])
trigger1 = stateno = 600 && movecontact&&prevstateno=600
;if combo gets too low
trigger2 = stateno = 610 && movecontact&& pos y > -30

[State -1, AI Air Kick Combo]
type = ChangeState
value = 610
triggerall = AILevel>1 && RoundState = 2 && numenemy 
trigger1 = stateno = 600 &&prevstateno=600 && movecontact&&var(7)&&(p2dist y =[-30,30])
;trigger2 = stateno = 601 && movecontact&& (p2dist y =[0,30])
;if the combo is too low for the uppercut
trigger2 = stateno = 600 && movecontact&&(p2dist y =[20,30])

[State -1, AI Air Punch Combo]
type = ChangeState
value = 600
triggerall = AILevel>1 && RoundState = 2 && numenemy 
trigger1 = (p2dist y = [-50,80])
trigger1 = stateno = 600 && movecontact && prevstateno != 600
trigger2 = stateno = 601 && movecontact

[State -1, AI footsaw followup]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = stateno = 52 && movehit
trigger1 = var(54):= ifelse(random<ailevel*100,200,40) || 1

[State -1, AI special 1 combo]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = anim=1001&& movecontact &&animelemtime(3)>=1 ;&& pos y = 0
trigger1 = var(54):= ifelse(statetype = A,ifelse(p2dist y < 20 && pos y > -70,620,600),200) || 1


[State -1, AI special 2 combo]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = stateno = 1010 && movehit && time >= ifelse(var(17)=1,30,35) && random < (ailevel * 50)
trigger1 = var(54):= ifelse(target,pos y > -70&&target,statetype=A&&(pos y <-45),620,600) || 1


[State -1, Wall Jump]
type = ChangeState
value = 55
triggerall = !aiLevel
triggerall = !var(53)
triggerall = Pos Y < -const(movement.airjump.height)
triggerall = stateno != [120,140]
triggerall = ctrl && stateno != 55 || (stateno = [5200,5210]) || (stateno = 5040)&&time>10|| stateno = 1010 && animelemtime(20)>0 && !movecontact
trigger1 = (command = "holdfwd" && vel x <= 0)  || (command = "holdback" && command = "ub")
trigger1 = backedgebodydist <= ceil(95*const(size.xscale)) 
trigger2 = command = "holdback" && vel x >=0  || (command = "holdfwd" && command = "ub")
trigger2 = frontedgebodydist <= ceil(95*const(size.xscale)) 

;---------------------------------------------------------------------------
;Guard
[State -1, Guard]
type = ChangeState
triggerall = !aiLevel && ctrl
triggerall = (stateno != [120,132])
triggerall = movetype !=A
triggerall = var(5) > (1000*.3)
trigger1 = command = "hold_c"
value = 120

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !aiLevel
triggerall = !var(55)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !aiLevel
triggerall = !var(55)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run BackTurn]
type = ChangeState
value = 106
triggerall = !aiLevel
triggerall = !var(55)
trigger1 = command = "holdfwd"
trigger1 = (stateno = 105 && time >= 5) || (stateno = 101 && time >= 9)
;---------------------------------------------------------------------------
;Jump Cancel
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !aiLevel
triggerall = command = "holdup"
triggerall = movehit
trigger1 = stateno = 202 || stateno = 210 

;---------------------------------------------------------------------------
[State -1, Super]
type = ChangeState
value = 3000
triggerall = !aiLevel
triggerall = power = powermax
triggerall = command = "Super"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 1000 && anim = 1001 && movecontact && pos y = 0
trigger4 = stateno = 1020 && movecontact && animelemtime(8)>0
;---------------------------------------------------------------------------
;Special3
[State -1, Special3 Slap]
type = ChangeState
value = 1020
triggerall = !aiLevel
triggerall = !var(13)
triggerall = command = "Special3"
triggerall = (stateno != [810,812]) 
trigger1 = statetype != A && ctrl
trigger2 = hitdefattr = SC, NA 
trigger2 = movecontact
trigger3 = stateno = 195

;---------------------------------------------------------------------------
;Special2
[State -1, Special2 - Kickflip]
type = ChangeState
value = 1010
triggerall = !aiLevel
triggerall = !var(12)
triggerall = command = "Special2"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [202,210]) && movecontact

;---------------------------------------------------------------------------
;Is A Special
[State -1, Special - Hurricane Chase]
type = ChangeState
value = 1000
triggerall = !aiLevel
triggerall = !var(11)
triggerall = command = "Special"
trigger1 = ctrl
trigger2 = (stateno = [202,210]) && movecontact
trigger3 = (stateno = [600,610]) && movecontact
trigger4 = stateno = 620 && movecontact && (enemy,stateno = [631,633])
;===========================================================================
;Kung Fu Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !aiLevel
triggerall = command = "y"
trigger1 = statetype != A && ctrl

;----------------------------------------------------------------------------------------------------------
;Punch1
[State -1, Punch1]
type = ChangeState
value = 200
triggerall = !aiLevel
triggerall = command = "a"
trigger1 = statetype != A && ctrl
trigger2 = anim=1001&& movecontact&&animelemtime(3)>=1 && pos y = 0 ;Combo out of Hurricane Chase


;---------------------------------------------------------------------------
;Punch2
[State -1, Punch2]
type = ChangeState
value = 201
triggerall = !aiLevel
triggerall = command = "a"
trigger1 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;Punch3
[State -1, Punch3]
type = ChangeState
value = 202
triggerall = !aiLevel
triggerall = command = "a"
trigger1 = stateno = 201 && movecontact
;--------------------------------------------
;Kick
[State -1, Footsaw]
type = ChangeState
value = 220
triggerall = !aiLevel
triggerall = command = "b" && command = "holddown" && command = "holdback"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [202,210]) 
trigger2 = movecontact
;Kick
[State -1, Kick]
type = ChangeState
value = 210
triggerall = !aiLevel
triggerall = command = "b"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,202])
trigger2 = movecontact
trigger3 = anim=1001&& movecontact&&animelemtime(3)>=1  && pos y = 0 ;Combo out of Hurricane Chase
trigger4 = stateno = 810 && movecontact && time > 20


[State -1, Uppercut]
type = ChangeState
value = 601
triggerall = !aiLevel
triggerall = var(7) < 2
triggerall = statetype = A
triggerall= command = "holdup" && command = "a"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
;---------------------------------------------------------------------------

;AirAttack
[State -1, AxeKick]
type = ChangeState
value = 620
triggerall = !aiLevel
triggerall = command = "holddown" && command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) & movecontact
trigger3 = stateno = 1010 && !moveguarded && time >= 35 ;Combo out of KickFlip
trigger4 = anim=1001&& movecontact&&animelemtime(3)>=1  && pos y != 0  ;Combo out of Hurricane Chase

;Air Kick
[State -1, AirKick]
type = ChangeState
value = 610
triggerall = !aiLevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = anim=1001&& movecontact&&animelemtime(3)>=1  && pos y != 0 ;Combo out of Hurricane Chase
trigger5 = stateno = 1010 && !moveguarded && time >= 35 ;Combo out of KickFlip

;---------------------------------------------------------------------------
;AirAttack
[State -1, AirPunch]
type = ChangeState
value = 600
triggerall = !aiLevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = prevstateno != 600 && stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = anim=1001&&animelemtime(3)>=1 && movecontact && pos y != 0 ;Combo out of Hurricane Chase
trigger5 = stateno = 1010 && !moveguarded && time >= ifelse(var(17)=1,30,35) ;Combo out of KickFlip
[State -1, TauntAir]
type = ChangeState
value = 196
triggerall = !ailevel
triggerall = command = "start" || command = "holdstart"
triggerall = (roundstate = [2,3])
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1010 && time >= 35
trigger3 = stateno = 620 && movehit  && animelemtime(6)>=0
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ailevel
triggerall = command = "start"
triggerall = (roundstate = [2,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = enemy,life = 0 && movehit
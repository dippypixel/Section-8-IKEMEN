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
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "Super"
command = ~D, F, D, F, a
time = 30

[Command]
name = "Special2"
command = ~D, DF, F, a
[Command]
name = "Special2"
command = ~D, F, a

[Command]
name = "Special3"
command = ~D, B, b

[Command]
name = "Special"
command = ~D, D, a

[Command]
name = "Divekick"     ;Required (do not remove)
command = ~F, F,b
time = 10

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
name = "hold_ab";Required (do not remove)
command = /a+b
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State -1, handicap the poor poor sap]
type = AssertSpecial
trigger1 = AILevel
flag = nowalk
flag2 = NoStandGuard
flag3 = NoCrouchGuard
ignorehitpause = 1
[State -1, handicap the poor poor sap]
type = AssertSpecial
trigger1 = AILevel
flag = noairguard
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = aiLevel
v = 59
value = ifelse(aiLevel=1, 1, ifelse(aiLevel=2, 4, ifelse(aiLevel=3, 9, ifelse(aiLevel=4, 16, ifelse(aiLevel=5, 24, ifelse(aiLevel=6, 34, ifelse(aiLevel=7,48, ifelse(aiLevel=8,64,0))))))))
[State -1, Parry]
type = ChangeState
value = 700
triggerall = AILevel>=6 && roundstate = 2 && alive && numenemy
triggerall = enemynear,ailevel 
triggerall = (stateno != [6565600,6565621]) || (stateno = [6565600,6565621]) && (stateno != [6565610,6565611])
triggerall = movetype = H && gethitvar(hitcount) = 1 && time = 0
triggerall = stateno != 700 && (stateno != [120,160])
trigger1 = hitdefattr != SCA, HA, HP, HT
trigger1 = !inCustomState
[State -1, Ai Recover]
type = ChangeState
value = ifelse(pos y <= -20,5210,5200)
triggerall = aiLevel && roundstate = 2 && alive && numenemy
triggerall = enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),2,1) || enemynear,ailevel 
triggerall = statetype = A && statetype != L
trigger1 = stateno = 5050 && canrecover = 1
ctrl = 1

;Guard
[State -1, AI Guard]
type = ChangeState
triggerall = var(5) > 0
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy 
triggerall = var(5) > (1000*.3) 
triggerall = (stateno != [120,132])
triggerall = stateno != 700 || prevstateno != 700
triggerALL =  enemynear,movetype != H && enemynear(!enemynear,alive),statetype !=L
trigger1 = ctrl || (stateno = [21,22]) || stateno = 107  || stateno = 0 || stateno = 105
trigger1 = inguarddist && enemynear,movetype = A
trigger1 = (enemynear,stateno != [631,633])
value = 120 

;Guard
[State -1, AI GuardCancel]
type = ChangeState
value = ifelse(statetype = A,50,0)
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = stateno = [130,132] 
trigger1 =  !inguarddist
trigger2 = var(5) < 1


[State -1, React after blocking]
type = ChangeState
value = var(54)
triggerall = AILevel>4 && RoundState = 2 && numenemy 
trigger1 = stateno = 130 && enemynear,moveguarded && enemynear,animtime < 0 && !(enemynear,ctrl)
trigger1 = var(54):= 200 || 1


[State -1, punch 1 combo];STOLE THIS IDEA FROM POYOCHAN LOL
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2
trigger1 = stateno = 200 && movecontact
; 201
trigger1 = var(54):= 201 || 1
; 202
trigger2 = stateno = 201 && movecontact
trigger2 = var(54):= ifelse(!var(12)&&	(p2bodydist x - (enemynear,vel x * 8)) = [-5, 12]	,210,202) || 1
trigger3 = stateno = 202 && movecontact
trigger3 = var(54):= ifelse(!var(13)&&movehit,1020,ifelse(!var(11)&&movehit,1000,105)) || 1

[State -1, kick to air combo]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2
trigger1 = stateno = 210 && movehit
trigger1 = var(54):= ifelse(random<500&&!var(13)&&var(12),1020,41) || 1
trigger2 = stateno = 50 && time >= 2 && ctrl|| stateno= 1010 && movecontact
trigger2 = var(54):= 600 || 1
trigger3 = stateno = 600 && movecontact
trigger3 = var(54):= ifelse(prevstateno != 600 ,600,610) || 1
trigger4 = stateno = 610 && movecontact&&!var(12)
trigger4 = var(54):= 1010 || 1

[State -1, AI Super]
type = ChangeState
value = 3000
triggerall = stateno !=[3000,3005]
triggerall = statetype != A &&pos y=0
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = power = powermax
triggerall = ailevel
triggerall = p2dist x > 10
trigger1 = p2dist y = [-60,0]
trigger1 = stateno=[202,210] &&movehit
trigger2 =numhelper(1000)
trigger2 = ctrl&&helper(1000),movehit



[State -1, AI Throw]
type = Changestate
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = statetype != A && pos y = 0
triggerall = enemynear,statetype != A && enemynear,pos y = 0
triggerall = enemynear,movetype != H && enemy,statetype != L
triggerall = stateno != [3000,3005]&&stateno != 107&&stateno != 800
triggerall = ctrl||stateno = 0||(stateno = [120,155])
triggerall = enemynear,ailevel
triggerall = p2bodydist x =[-5,40]
trigger1 = ctrl|| stateno = 0 
trigger2 = (enemynear,stateno = [120,155])||(enemynear,prevstateno = [120,155])
trigger3 =  enemynear,animtime < -4 && !(enemynear,ctrl)
value = 800

[State -1, AI Counter]
type = ChangeState
value = 220
triggerall = statetype != A
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = enemynear(!enemynear,alive), statetype != L 
triggerall = power >500 && random<ifelse(life<lifemax*.5,300,700)
trigger1 = stateno = 130||stateno = [150,151]
trigger1 = inguarddist && p2dist y = [-40,0]
trigger1 = enemynear,moveguarded && enemynear,hitdefattr != SCA,HA


[State -1, AI Jump]
type = ChangeState
value = 41
triggerall = random < var(59)*5 && ctrl
triggerall = aiLevel && roundstate=2 && alive && numenemy && statetype = S && enemynear,statetype != L 
triggerall = (stateno != [100,107]) 
trigger1 = ((enemynear,pos y) + (enemynear,vel y)) < -20 && p2bodydist x < 150 && enemynear,movetype != H


[State 800, 2]
type = ChangeState
triggerall = aiLevel && roundstate=2 && alive && numenemy && statetype = S
Trigger1 = stateno=811
value = ifelse(!var(13),1020,ifelse(!var(11),1000,105))


[State -1, AI Run]
type = ChangeState
value = 107
triggerall = !var(55)
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = p2bodydist x != [-5,47]
triggerall = random < var(59)*3
triggerall = statetype != A
trigger1 = ctrl &&enemynear,movetype = H 
trigger2 =numhelper(1000)
trigger2 = ctrl&&helper(1000),movehit
trigger3 =ctrl &&prevstateno=1001&&numtarget

[State -1, AI HopBack]
type = ChangeState
value = 105
triggerall = !var(55)
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = stateno != 105
triggerall = random < var(59)*ifelse(inguarddist,5,3)
triggerall = statetype != A
triggerall = backedgedist > 70
trigger1 = ctrl && enemy,movetype != H
trigger2 = stateno = 107 && enemy,movetype = A


;Special
[State -1, Puke]
type = ChangeState
value = 1000
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = !var(11)
triggerall = (p2bodydist x - (enemynear,vel x * 15)) = [90, 200]
triggerall = statetype != A && ctrl
trigger1 = 1
trigger2 = enemynear,animtime < -9 && !(enemynear,ctrl)
trigger3 = stateno = [200,210] && movecontact
trigger4 =numhelper(1000)
trigger4 = ctrl&&helper(1000),movehit
[State -1, Ai Dive]
type = ChangeState
value = 1010
triggerall = !var(12)
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = p2bodydist x= [0, 70]
triggerall = p2dist y = [-80, 80]
triggerall = statetype = A && ctrl
trigger1 = enemynear,animtime < -11 && !(enemynear,ctrl)
trigger2 = !var(54)

[State -1, Ai Firework]
type = ChangeState
value = 1020
triggerall = !var(13)
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
trigger1 = statetype != A && ctrl
trigger1 = (p2bodydist x - (enemynear,vel x * 10)) >= ifelse(enemynear,statetype=L,0,90)
[State -1, AI AirPunch]
type = ChangeState
value = 600
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = ctrl || stateno = 50||stateno = 700&& time = 9  && pos y != 0
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype = A
trigger1 = (((enemynear,pos y + enemynear,vel y * 4) - (pos y + vel y * 4))  = [-375*const(size.yscale),-50*const(size.yscale)])
trigger1 = (((enemynear,pos x + enemynear,vel x * 4) - (pos x + vel x * 4)) = [10, 275*const(size.xscale)]) 


;trigger2 = stateno = 52 && numtarget
;Punch1
[State -1, AI Punch]
type = ChangeState
value = 200
triggerall = aiLevel && roundstate=2 && alive && numenemy 
triggerall = ctrl||stateno = 0|| (stateno = [20,22]) || stateno = 107 ||stateno = 700&& time = 9 
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = p2bodydist x = [0,47] && (enemynear,pos y + (enemynear,vel y * 6))  = [-70,0]
triggerall = statetype != A 
triggerall =(enemynear,stateno != [120,160])
trigger1 = enemynear,ailevel ;&& random < 500 
trigger2 =prevstateno = 1000&&enemynear,movetype=H&& ctrl



[State -1, AI Bite]
type = ChangeState
value = 202
triggerall = aiLevel && roundstate=2 && alive && numenemy 
triggerall = ctrl||stateno = 0|| (stateno = [20,22]) || stateno = 107 ||stateno = 700&& time = 9 
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype != A 
triggerall = random<500
triggerall = (p2bodydist x - (enemynear,vel x * 9)) = [47, 69]
trigger1= 1
trigger2 =  enemynear,animtime < -11 && !(enemynear,ctrl)&&enemynear,movetype=A
;---------------------------------------------------------------------------
;Kick
[State -1, Counter]
type = ChangeState
value = 220
triggerall = !aiLevel && power >500
triggerall = command = "hold_ab"
trigger1 = enemy,moveguarded
trigger1 = stateno = 130||stateno = 150 ||stateno = 151


;---------------------------------------------------------------------------
;Punch1
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !aiLevel
triggerall = command = "y"
trigger1 = statetype != A && ctrl


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
;Special3
[State -1, Super]
type = ChangeState
value = 3000
triggerall = !aiLevel
triggerall = power=powermax
triggerall = command = "Super"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact

;---------------------------------------------------------------------------
;Special3
[State -1, Firework]
type = ChangeState
value = 1020
triggerall = !aiLevel
triggerall = !var(13)
triggerall = command = "Special3"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact

;---------------------------------------------------------------------------
;Special2
[State -1, Dive]
type = ChangeState
value = 1010
triggerall = !aiLevel
triggerall = !var(12)
triggerall = command = "Special2"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,610] && movecontact

;---------------------------------------------------------------------------
;Special
[State -1, Vomit]
type = ChangeState
value = 1000
triggerall = !aiLevel
triggerall = !var(11)
triggerall = command = "Special"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact

;===========================================================================

;---------------------------------------------------------------------------
;Punch1
[State -1, DiveKick]
type = ChangeState
value = 300
triggerall = !aiLevel && !var(16)
triggerall = command = "Divekick"||stateno=100 && command = "b"
trigger1 = statetype != A && ctrl
;Punch1
[State -1, MongolChop]
type = ChangeState
value = 240
triggerall = !aiLevel && var(17)<2
triggerall = command = "holdfwd" && command = "holddown" && command = "a"
trigger1 = statetype != A && ctrl
trigger2= movecontact && stateno = [200,210]



;---------------------------------------------------------------------------
;Punch3
[State -1, Punch3]
type = ChangeState
value = 202
triggerall = !aiLevel
triggerall = command = "a"
trigger1 = stateno = 201 && movecontact
trigger2 = command = "holdback" && command = "holddown"
trigger2 = (statetype != A && ctrl) || (movecontact && stateno = [200,201])

;---------------------------------------------------------------------------
;Punch1
[State -1, Punch1]
type = ChangeState
value = 200
triggerall = !aiLevel
triggerall = command = "a"
trigger1 = statetype != A && ctrl
trigger2= movecontact && stateno = 240 && time > 15
;---------------------------------------------------------------------------
;Punch2
[State -1, Punch2]
type = ChangeState
value = 201
triggerall = !aiLevel
triggerall = command = "a"
trigger1 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
;Kick
[State -1, Kick]
type = ChangeState
value = 210
triggerall = !aiLevel
triggerall = command = "b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,201]
trigger2 = movecontact

;---------------------------------------------------------------------------
;AirAttack
[State -1, AirAttack]
type = ChangeState
value = 610
triggerall = !aiLevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 1010 && movehit
trigger4 = stateno = 300 && movehit

;---------------------------------------------------------------------------
;AirAttack
[State -1, AirAttack]
type = ChangeState
value = 600
triggerall = !aiLevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = prevstateno != 600 && stateno = 600 && movecontact
trigger3 = stateno = 1010 && movehit
trigger4 = stateno = 300 && movehit
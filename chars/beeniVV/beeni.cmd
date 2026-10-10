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
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "Super"
command = ~D, B, D, B, a
time = 30

[Command]
name = "Special3"
command = ~D, DB, B, a
[Command]
name = "Special3"
command = ~D, B, a

[Command]
name = "Special2"
command = ~$D,$F,a

[Command]
name = "Special"
command = ~D, D, b

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
command = x+y
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
[Command]
name = "up"     ;Required (do not remove)
command = U
time = 10
[Command]
name = "down"     ;Required (do not remove)
command = D
time = 10
[Command]
name = "uf"
command = UF
time = 1
[Command]
name = "ub"
command = UB
time = 1


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

;---------------------------------------------------------------------------
[Statedef -1]

[State 0, VarSet]
type = VarSet
trigger1 = aiLevel
v = 59
value = ifelse(aiLevel=1, 1, ifelse(aiLevel=2, 4, ifelse(aiLevel=3, 8, ifelse(aiLevel=4, 14, ifelse(aiLevel=5, 21, ifelse(aiLevel=6, 32, ifelse(aiLevel=7,26, ifelse(aiLevel=8,60,0))))))))
[State -1, Parry]
type = ChangeState
value = 700
triggerall = AILevel>=6 && roundstate = 2 && alive && numenemy
triggerall = random < var(59)/3
triggerall = (stateno != [6565600,6565621] || (stateno = [6565600,6565621] && stateno != [6565610,6565611]))
triggerall = roundstate = 2
triggerall = movetype = H && gethitvar(hitcount) = 1 && time = 0
triggerall = stateno != 700
trigger1 = !inCustomState
trigger1 = hitdefattr != SCA, HA, HP, HT

[State -1, Default Shit Disabled]
type = AssertSpecial
trigger1 = AILevel
flag = nowalk
ignorehitpause = 1

[State AI Walk]
type = ChangeState
value = 21
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = random < var(59)
triggerall = statetype != A
triggerall = enemynear,hitdefattr = SCA,AT || !inguarddist
triggerall = stateno != 100 
trigger1 = ctrl
[State -1, AI Run]
type = ChangeState
value = 107
triggerall = !var(55)
triggerall = random<500
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = (stateno != [100,107])
triggerall = (p2bodydist x - (enemynear,vel x * 8)) != [-5, 85]
triggerall = statetype != A
trigger1 = ctrl
[State -1, AI Run]
type = ChangeState
value = 105
triggerall = !var(55)
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = random < var(59)*ifelse(life < 400,2,1)
triggerall = statetype != A
trigger1 = ctrl

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = random < var(59)
triggerall = stateno != 100
triggerall = aiLevel && roundstate=2 && alive && numenemy
trigger1 = ctrl && statetype != A

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = stateno != [3000,3003]
triggerall = random < var(59)
triggerall = statetype != A
triggerall = AILevel && roundstate = 2 && alive && numenemy 
triggerall = stateno != 195
trigger1 = enemy,stateno = [5100,5110] && p2bodydist x > 100 
trigger2 =p2bodydist x > 300 && random < 500/(ailevel*.5) && enemy,movetype = A
trigger3 = enemy, life = 0 && random < 500 && TeamMode != simul

;Guard
[State -1, AI Guard]
type = ChangeState
triggerall = var(5) > 0
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerALL =  enemynear,movetype != H
triggerall = inguarddist && (enemynear(0),movetype = A && enemynear(0),hitdefattr = SCA, NA, SA, HA || enemynear(1),movetype = A && enemynear(1),hitdefattr = SCA, NA, SA, HA)
trigger1 = ctrl || (stateno = [21,22]) || stateno = 100 
trigger1 = enemynear,ailevel = 0 && random < var(59)*(ailevel/(ifelse(life < 400,3,6))) || enemynear,ailevel
trigger1 = (enemynear(0),stateno != [631,633]) && (enemynear(1),stateno != [631,633])
value = ifelse(pos y = 0,130,132) 

;Guard
[State -1, AI GuardCancel]
type = ChangeState
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = stateno != 140
triggerall = stateno = [130,132] 
trigger1 =  enemynear,movetype = H ||  enemynear,movetype = I 
trigger1 = !inguarddist
value = ifelse(statetype = A,50,0)


;---------------------------------------------------------------------------
;Jump Cancel
[State -1, AI Jump Cancel]
type = ChangeState
value = 40
triggerall = random < var(59);5
triggerall = aiLevel>=6 && roundstate=2 && alive && numenemy
triggerall = movehit
trigger1 = ctrl
trigger1 = stateno = 202 || stateno = 210

;Special
[State -1, AI Special]
type = ChangeState
value = 3000
triggerall = random < var(59)*4
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = power = powermax
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact
;Special
[State -1, Windmill]
type = ChangeState
value = 1000
triggerall =  enemynear,ailevel = 0 && random < var(59)|| enemynear,ailevel ;5
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy
triggerall = !var(11)
triggerall = (p2bodydist x - (enemynear,vel x * 9)) = [-5, 68]
triggerall = p2bodydist y < 70
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact




[State -1, CowaBunga]
type = ChangeState
value = 1010
triggerall = !var(12)
triggerall = enemynear,ailevel = 0 && random < var(59)|| enemynear,ailevel ;4
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=4 && roundstate=2 && alive && numenemy
triggerall = (p2bodydist x - (enemynear,vel x * 9)) = [-5, 68]
triggerall = statetype != A 
triggerall = stateno != 3000
trigger1 = ctrl
trigger2 = enemy,statetype = A &&  statetype != A && ctrl
trigger3 = enemy,movetype = A && movetype != H


[State -1, soda]
type = ChangeState
value = 1020
triggerall = !var(13)
triggerall = enemynear,ailevel = 0 && random < var(59)*ifelse(p2bodydist x >= 120,2,1) ||enemynear,ailevel && random < ifelse(p2bodydist x >= 120,600,400)
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=4 && roundstate=2 && alive && numenemy
triggerall = p2bodydist y < 100
triggerall = p2bodydist X >= 90
trigger1 = statetype != A && ctrl
trigger2 = stateno = 21


;===========================================================================
;---------------------------------------------------------------------------
;Punch1

[State -1, AI Punch1]
type = ChangeState
value = 200
triggerall = statetype != A && (ctrl||stateno=0)
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = (p2bodydist x - (enemynear,vel x * 5)) = [-5, 60]
trigger1 =enemynear,ailevel=0 && random < var(59)*2|| enemynear,ailevel&& random < 700

[State -1, cowabunga divekick];STOLE THIS IDEA FROM POYOCHAN LOL
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2
trigger1 = stateno = 1010 && animelem = 11 && movehit && ifelse(enemynear,ailevel=0,random < (ailevel * 100),random<999)
trigger1 = var(54):= 1012 || 1

[State -1, punch 1 combo];STOLE THIS IDEA FROM POYOCHAN LOL
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2
trigger1 = stateno = 200 && movecontact
; 201
trigger1 = var(54):= 201 || 1
; 202
trigger2 = stateno = 201 && movecontact
trigger2 = var(54):= ifelse(ifelse(enemynear,ailevel=0,random < (ailevel * 75),random<999),210,202) || 1
trigger3 = stateno = 210 && movecontact && !var(11) && random < (ailevel * 50)
trigger3 = var(54):= 1000 || 1
trigger4 = stateno = 1000 && movehit && animelem = 16 && ifelse(enemynear,ailevel=0,random < (ailevel * 75),random<999)
trigger4 = var(54):= 40 || 1


[State -1, kick to air combo]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2
trigger1 = stateno = 210 && movehit
trigger1 = var(54):= 40 || 1
trigger2 = stateno = 50 && time >= 6 && (p2bodydist x - (enemynear,vel x * 10)) = [-5, 85] && ctrl
trigger2 = var(54):= 600 || 1
trigger3 = stateno = 600 && movecontact
trigger3 = var(54):= ifelse(prevstateno != 600 ,600,ifelse(ifelse(enemynear,ailevel = 0,random < (ailevel * 75),random<999),602,610)) || 1
trigger4 = stateno = 602 && movecontact
trigger4 = var(54):= ifelse(var(7) < 2 && random < (ailevel * 100),600,610) || 1

[State -1, kick to air combo]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2
trigger1 = stateno = 601 && movehit
trigger1 = var(54):= 600 || 1
trigger2 = stateno = 600 && movecontact
trigger2 = var(54):= ifelse(prevstateno != 600,600,602) || 1
trigger3 = stateno = 602 && movecontact
trigger3 = var(54):= 610 || 1
trigger4 = stateno = 600 && movecontact && ailevel >= 5
trigger4 = var(54):= ifelse(enemynear,statetype = A,602,601) || 1


;---------------------------------------------------------------------------
;Punch3
[State -1, AI Punch3]
type = ChangeState
value = 202
triggerall = enemynear,ailevel=0 &&random < var(59)||enemynear,ailevel&& random<700;2
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel>=2 && roundstate=2 && alive && numenemy
triggerall = (p2bodydist x - (enemynear,vel x * 10)) = [70, 125]
trigger1 = (statetype != A && ctrl) || (movecontact && stateno = [200,201])

;---------------------------------------------------------------------------
;Kick
[State -1, AI Kick]
type = ChangeState
value = 210
triggerall = random < var(59);3
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel && roundstate=2 && alive && numenemy
trigger1 = statetype != A && ctrl
triggerall = (p2bodydist x - (enemynear,vel x * 8)) = [-5, 85]
trigger2 = stateno = [200,201]
trigger2 = movecontact

;---------------------------------------------------------------------------
;AirAttack
[State -1, AI AirAttack]
type = ChangeState
value = 601
triggerall = random < var(59)*ifelse(life < 400,5,3)
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = statetype = A
triggerall = (p2bodydist x - (enemynear,vel x * 2)) = [60, 114]
triggerall = (enemynear,pos y + (enemynear,vel y * 6))  = [-65,65]
trigger1 = ctrl


;---------------------------------------------------------------------------
;AirAttack
[State -1, AI AirAttack]
type = ChangeState
value = 600
triggerall = enemynear,ailevel = 0 &&random < var(59)*5 ||enemynear,ailevel && random < 700
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = statetype = A
triggerall = (p2bodydist x - (enemynear,vel x * 2)) = [-5, 60]
triggerall = (enemynear,pos y + (enemynear,vel y * 6))  = [-65,65]
trigger1 = ctrl
trigger2 = prevstateno = 600 && stateno = 600 && movecontact

[State -1, Wall Jump]
type = ChangeState
value = 55
triggerall = !aiLevel
triggerall = !var(53)
triggerall = Pos Y < -const(movement.airjump.height)
triggerall = ctrl && stateno != 55
trigger1 = (command = "holdfwd" && vel x <= 0)  || (command = "holdback" && command = "ub")
trigger1 = backedgebodydist <= ceil(map(wallClingOffset)*const(size.xscale)) 
trigger2 = command = "holdback" && vel x >=0  || (command = "holdfwd" && command = "ub")
trigger2 = frontedgebodydist <= 0 ;ceil(-154*const(size.xscale))
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
;Super
[State -1, Super]
type = ChangeState
value = 3000
triggerall = !aiLevel
triggerall = power = powermax
triggerall = command = "Super"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,230] && movecontact
trigger3 = stateno = [1000,1999] && movecontact

;---------------------------------------------------------------------------
;Special3
[State -1, Special3]
type = ChangeState
value = 1020
triggerall = !aiLevel
triggerall = !var(13)
triggerall = command = "Special3"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact

;---------------------------------------------------------------------------
;Special2
[State -1, Special2]
type = ChangeState
value = 1010
triggerall = !aiLevel
triggerall = !var(12)
triggerall = command = "Special2"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact

;---------------------------------------------------------------------------
;Is A Special
[State -1, Special]
type = ChangeState
value = 1000
triggerall = !aiLevel
triggerall = !var(11)
triggerall = command = "Special"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,210] && movecontact

;===========================================================================

;---------------------------------------------------------------------------
;KazotskyKicks
[State -1, KazotskyKicks]
type = ChangeState
value = 230
triggerall = !aiLevel
triggerall = command = "b"
trigger1 = command = "holddown"
trigger1 = statetype != A && ctrl

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
;AirAttackUppercut
[State -1, AirAttackUppercut]
type = ChangeState
value = 602
triggerall = !aiLevel
triggerall = command = "b" && (command = "holdup")
triggerall = statetype = A
triggerall = var(7) < 2
trigger1 = ctrl
trigger2 = stateno = [600,601] && movecontact

;---------------------------------------------------------------------------
;AirAttackCmd
[State -1, AirAttackCmd]
type = ChangeState
value = 601
triggerall = !aiLevel
triggerall = command = "a" && (command = "holdfwd" || command = "holdback")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1000 && movehit && animelemtime(5) >= 0
trigger3 = stateno = 602 && movecontact


;---------------------------------------------------------------------------
;AirAttackL
[State -1, AirAttackL]
type = ChangeState
value = 600
triggerall = !aiLevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl ;&& command != "holdfwd" && command != "holdback"
trigger2 = prevstateno != 600 && stateno = 600 && movecontact
trigger3 = stateno = 1000 && movehit && animelemtime(5) >= 0
trigger4 = stateno = 602 && movecontact


;---------------------------------------------------------------------------
;AirAttackH
[State -1, AirAttackH]
type = ChangeState
value = 610
triggerall = !aiLevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1000 && movehit && animelemtime(5) >= 0
trigger3 = stateno = [600,602] && movecontact
;trigger4 = stateno = 602 && movehit

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

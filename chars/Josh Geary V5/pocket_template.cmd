;; The CMD file.
;-|Hyper Motions |--------------------------------------------------------
;-----------------


;-| AI activativators |--------------------------------------------------------

[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[Command]
name = "ai4"
command = a,b,x,y
time = 1

[Command]
name = "ai5"
command = U,D,F,B
time = 1

[Command]
name = "ai6"
command = D,F,U,B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U
time = 1

[Command]
name = "ai9"
command = F,F,F
time = 1

[Command]
name = "ai10"
command = B,U,U
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F
time = 1

[Command]
name = "ai13"
command = x,y,a,b
time = 1

;Vixen Fury
[Command]
name = "vixfury"
command = ~F, D , DF, x+y
time = 20


[Command]
name = "hyper_art"
command = D, DF, F, x+y
time = 15

[Command]
name = "hyper_art"
command = D, DF, F, x+z
time = 15

[Command]
name = "hyper_art"
command = D, DF, F, y+z
time = 15

;heal
[Command]
name = "Heal"
command = D, DB, B, a+b
time = 15

;speed
[Command]
name = "speed"
command = D, DF, F, a+b
time = 15



;-| Special Motions |------------------------------------------------------
Rolling Attack
[Command]
name = "rollingA"
command = ~10$B, F, x
time = 15

[Command]
name = "rollingB"
command = ~10$B, F, y
time = 15


;----------------------
;Rolling Claw
[Command]
name = "claw"
command = ~D, DF, F, x
time = 15

[Command]
name = "kick"
command = ~D, DF, F, y
time = 15

;----------------------
[Command]
name = "eagleA"
command = ~D, DF, F, x
time = 15

[Command]
name = "eagleB"
command = ~D, DF, F, y
time = 15

;ShoBatKen
[Command]
name = "tornado"
command = ~D, DF, F, a
time = 15

;ShoBatKen
[Command]
name = "tornadoS"
command = ~D, DF, F, b
time = 15


[Command]
name = "holdpunch"
command = /x
time = 5

[Command]
name = "holdpunch"
command = /y
time = 5

[Command]
name = "holdpunch"
command = /z
time = 5

[Command]
name = "holdkick"
command = /a
time = 5

[Command]
name = "holdkick"
command = /b
time = 5

[Command]
name = "holdkick"
command = /c
time = 5



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Super Jump Commands |---------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU"
command = D, UB
time = 10

[Command]
name = "DU"
command = D, UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+z
time = 1

[Command]
name = "guardpush"
command = z+y
time = 1

[Command]
name = "DU"
command = a+b+c
time = 1

[Command]
name = "run"
command = x+y+z
time = 1

[Command]
name = "throw"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "down_z"
command = /$D,z
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

;---------------------------------------------------------------------------
[Statedef -1]

;AirJump
[State -1]
type = ChangeState
value = 45
triggerall = var(45)=0
triggerall = command = "holdup"
trigger1 = stateno = 50 && time > 10
trigger2 = statetype = A && movehit && stateno !=1020

;===========================================================================
;HYPERS
;---------------------------------------------------------------------------
;vixen fury
[State -1,vixen fury]
type = ChangeState
value = 3000
triggerall = !Var(7)
triggerall = command = "vixfury"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)
trigger7 = (stateno = 1030) && (MoveContact)
trigger8 = stateno = 610||stateno=640||stateno=1020
trigger8=movecontact

[State -1, Healing Factor]
type = ChangeState
value = 3300
triggerall = !Var(7)
triggerall = life < 500
triggerall = command = "Heal"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Speed up]
type = ChangeState
value = 3400
triggerall = !Var(7)
triggerall = command = "speed"
triggerall = power >= 1000
triggerall = var(11) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;SUPERS
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Eagle Dive
[State -1, Eagle]
type = ChangeState
value = 1020
triggerall = !Var(7)
triggerall = command = "eagleA" || command = "eagleB"
triggerall = !var(13)
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
;===========================================================================
;---------------------------------------------------------------------------
;SUPERS
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Eagle Dive
[State -1, Divebomb]
type = ChangeState
value = 1010
triggerall = !var(14)
triggerall = command = "rollingA" || command = "rollingB"
trigger1 = StateType = s
trigger1 = ctrl
trigger2 = stateno = [200,420] && MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;SUPERS
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Eagle Dive
[State -1, RollingAttack]
type = ChangeState
value = 1030
triggerall = !var(16)
triggerall = command = "claw" || stateno = 100 && command = "x" 
trigger1 = StateType = s
trigger1 = ctrl
trigger2 = stateno = [200,420] && MoveContact


;----------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 1045
triggerall = !Var(7)
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
;Run Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = !Var(7)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = command = "FF"
trigger2 = command = "run"


;---------------------------------------------------------------------------
;Dash Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !Var(7)
triggerall = statetype = S
trigger1 = ctrl
trigger1 = stateno != 105
trigger1 = stateno != 100
trigger1 = command = "BB"
trigger2 = stateno = 101 && time > 5
trigger2 = command = "holdback"

; Bounce With Wall
[State -1]
type = ChangeState
value = 48
triggerall = !Var(7)
triggerall = statetype = A
trigger1 = command = "holdfwd"
trigger1 = backedgebodydist <= 2
trigger1 = ctrl = 1
trigger1 = anim = 41 || anim = 43
trigger2 = command = "holdback"
trigger2 = frontedgebodydist <= 2
trigger2 = ctrl = 1
trigger2 = anim = 42 || anim = 44

;===========================================================================
; Throw
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = !Var(7)
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Throw 2]
type = ChangeState
value = 810
triggerall = !Var(7)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = !Var(7)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = !var(11) &&(stateno = 200) && MoveContact && PrevStateNo != 200 || var(11) &&(stateno = 200)
trigger3 = stateno = 1010 && MoveContact && pos y= 0
trigger4 = stateno = 1030 && MoveHit && animelemtime(5)>0
;Stand Strong  Punch
[State -1]
type = ChangeState
value = 210
triggerall = !Var(7)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1010 && MoveContact && pos y= 0
trigger5 = stateno = 1030 && MoveHit && animelemtime(5)>0


;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = !Var(7)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = !var(11) && (stateno = 230) && MoveContact && PrevStateNo != 230 || var(11) &&(stateno = 230) 
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 1010 && MoveContact && pos y= 0

;Stand Strong  Kick
[State -1]
type = ChangeState
value = 240
triggerall = !Var(7)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 240 && MoveContact && var(11)
trigger11 = stateno = 1010 && MoveContact && pos y= 0


;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(7)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = !Var(7)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = !var(11) && (stateno = 400) && MoveContact && PrevStateNo != 400 || var(11) &&(stateno = 400) 
trigger7 = stateno = 410 && MoveContact && var(11)
trigger8 = stateno = 440 && MoveContact && var(11)
;Crouch Strong Punch
[State -1]
type = ChangeState
value = 410
triggerall = !Var(7)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 420 && MoveContact
trigger8 = stateno = 430 && MoveContact
trigger9 = stateno = 440 && MoveContact && var(11)
trigger10 = stateno = 1010 && MoveContact && pos y= 0
trigger11 = stateno = 1030 && MoveHit && animelemtime(5)>0



;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = !Var(7)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = !var(11) && (stateno = 430) && MoveContact && PrevStateNo != 430 || var(11) &&(stateno = 430)
trigger10 = stateno = 440 && MoveContact && var(11)

;Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = !Var(7)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact
trigger10 = stateno = 440 && MoveContact && var(11)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = !Var(7)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(11) &&(stateno = 600) && MoveContact && PrevStateNo != 600 || var(11) &&(stateno = 600) && MoveContact
trigger3 = stateno = 1020 && MoveContact
trigger4 = stateno = 610 && MoveContact && var(11)
trigger5 = stateno = 630 && MoveContact && var(11)
trigger6 = stateno = 640 && MoveContact && var(11)

 
;Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = !Var(7)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
trigger4 = stateno = 640 && MoveContact && var(11)


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = !Var(7)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 1020 && MoveContact
trigger4 = !var(11) && (stateno = 630) && MoveContact && PrevStateNo != 630 || var(11) &&(stateno = 630) 
trigger5 = stateno = 640 && MoveContact && var(11)
trigger6 = stateno = 610 && MoveContact && var(11)

;Jump Strong Kick
[State -1]
type = ChangeState
value = 640
triggerall = !Var(7)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact && var(11)


;----------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; AI <Stuff>
;---------------------------------------------------------------------------
;------------------------------------
;AI Guardia (stand)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Statetype = S
triggerall = (Var(1)) && (ctrl||stateno = 102)
triggerall = p2bodydist X <= 100
trigger1 = (P2statetype != C) && (P2Movetype = A)
value = 130

;------------------------------------
;AI Guardia (par-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = StateNo = 150
value = 152

;------------------------------------
;AI Guardia (Agachado)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = StateType != A
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = (P2statetype = C) && (P2Movetype = A)
trigger2 = (P2statetype != C) && (P2Movetype = A)
value = 131

;------------------------------------
;AI Guardia (aga-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = StateNo = 152
value = 150

;------------------------------------
;AI Guardia (aereo)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = Statetype = A
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = P2Movetype = A
value = 132

;------------------------------------
;AI Guardia (aer-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 152

;------------------------------------
;AI Guardia (aer-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 150


;------------------------------------
;AI Air Recovery
;------------------------------------
[State -1]
type = ChangeState
value = 5210
triggerall = Var(7) = 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y < -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;------------------------------------
;AI Air Recovery (suelo)
;------------------------------------
[State -1]
type = ChangeState
value = 5200
triggerall = Var(7) = 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y >= -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050
;---------------------------------------------------------------------------
; Shun Goku Satsu - Startup

;- | AI Dashes | ----------------------------------------------------------

[State -1, ai run]
type = ChangeState
value = 102
triggerall = var(7)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2stateno != [5100,5119]
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl
trigger2 = P2BodyDist X >= 30 && var(11) 


[State -1, ai jump]
type = ChangeState
value = 40
triggerall = var(7)
triggerall = P2stateno = [5100,5119] && !var(11)
triggerall = (StateType != A) && (MoveType != H) && (P2life != 0) && ctrl
triggerall = P2BodyDist X <= 40
trigger1 = random < 500
trigger2 = (P2StateType = A) 

[State -1, ai walk]
type = ChangeState
value = 20
triggerall = var(7)
triggerall = P2stateno = [5100,5119] && !var(11)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl

[State -1, Super Jump]
type = ChangeState
value = 1045
triggerall = var(7)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 410 && MoveContact
trigger2 = enemynear, pos y <= -70 && ctrl

[State -1, ai VixenFury]
type = ChangeState
value =3300
triggerall = var(7)
triggerall = power >= 1000 && life < 500
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = ctrl
trigger2 = p2bodydist x > 200
[State -1, ai super]
type = ChangeState
value =3400
triggerall = var(7)
triggerall = power >= 1000  && random < ifelse(life<200,700,200)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = ctrl

[State -1, ai light punch]
type = ChangeState 
value = 200
triggerall = var(7)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
triggerall = P2stateno != [5100,5119] && !var(11)  && random < 100 || var(11)
trigger1 = P2BodyDist X <= 20 && P2BodyDist y <= 80
trigger1 = (ctrl||stateno = 102)
trigger2 = stateno = 200 && MoveContact && prevstateno != 200
trigger3 = stateno = 210 && MoveContact && VAR(11) && random < 100
trigger4 = stateno = 240 && MoveContact && VAR(11)&& random < 500
trigger5 = stateno = 230 && MoveContact && VAR(11)&& random < 500
[State -1, ai light punch]
type = ChangeState
value = 210
triggerall = var(7)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 200 && MoveContact
trigger2 = stateno = 240 && MoveContact && VAR(11)&& random < 500
[State -1, ai light punch]
type = ChangeState
value = 230
triggerall = var(7)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 200 && MoveContact&& random < 500
trigger2 = stateno = 210 && MoveContact && random < 100
trigger3 = stateno = 240 && MoveContact && VAR(11)&& random < 500
[State -1, ai light punch]
type = ChangeState
value = 240
triggerall = var(7)
triggerall = !var(11) && P2stateno != [5100,5119] || var(11)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 230 && MoveContact

[State -1, ai light punch]
type = ChangeState
value = 410
triggerall = var(7)
triggerall = !var(11) && P2stateno != [5100,5119] || var(11)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = ctrl && enemynear,statetype = A && p2bodydist x <= 30
trigger2 = stateno = 210 && MoveContact
trigger3 = stateno = 240 && MoveContact && P2BodyDist X <= 30
[State -1, eagle]
type = ChangeState
value = 1020
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2life != 0)
triggerall = !var(13)
trigger1 = p2bodydist x = [60,120] && ctrl
trigger2 = (stateno = [600,640]) && movecontact 
[State -1, light air punch]
type = ChangeState
value = 600
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = P2BodyDist X <= 55 && P2BodyDist y = [-40,40] && !var(11) && random < 100 || var(11)
trigger1 = ctrl || stateno = 50 && time <= 6 
trigger2 = stateno = 1020 && movecontact
trigger3 = stateno = 600 && MoveContact && prevstateno != 600
trigger4 = stateno = 600 && MoveContact && var(11)&& random < 300
trigger5 = stateno = 630 && MoveContact && var(11)&& random < 500
trigger6 = stateno = 640 && MoveContact && var(11)&& random < 300
trigger7 = stateno = 610 && MoveContact && var(11)&& random < 100
[State -1,heavy air punch]
type = ChangeState
value = 610
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact && var(11)&& random < 100
trigger3 = stateno = 640 && MoveContact && var(11)&& random < 500
[State -1, light air kick]
type = ChangeState
value = 630
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger2 = stateno = 600 && MoveContact && var(11)&& random < 500
trigger3 = stateno = 630 && MoveContact && var(11)&& random < 500
trigger4 = stateno = 640 && MoveContact && var(11)&& random < 500
trigger5 = stateno = 610 && MoveContact && var(11)&& random < 500
[State -1, heavy air kick]
type = ChangeState
value = 640
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2life != 0)
trigger1 = stateno = 630 && movecontact
trigger2 = stateno = 610 && movecontact
[State -1]
type = ChangeState
value = 195
triggerall = var(7)
triggerall = var(8) = 1
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A)
trigger1 = P2BodyDist X = [100,115]
trigger1 = ctrl

;[State -1]
;type = ChangeState
;value = 1010
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;triggerall = (StateType != A) && (MoveType != H)
;triggerall = (P2StateType != A) && (P2life != 0)
;triggerall = (stateno != 102) && (prevstateno != 102)
;trigger1 = P2BodyDist X <= 30
;trigger1 = ctrl

;[State -1]
;type = ChangeState
;value = 1000
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;triggerall = (StateType != A) && (MoveType != H)
;triggerall = (P2StateType != A) && (P2life != 0)
;trigger1 = P2BodyDist X = [20,220]
;trigger1 = ctrl


;[State -1]
;type = ChangeState
;value = 1100
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;triggerall = prevstateno = 1010
;triggerall = (StateType != A) && (MoveType != H)
;triggerall = (P2StateType != A) && (P2life != 0)
;trigger1 = P2BodyDist X = [60,100]
;trigger1 = ctrl




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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
  [Command]
name = "throw"     ;Required (do not remove)
command = D,DF,F,a
time = 60
 [Command]
name = "throw"     ;Required (do not remove)
command = D,DF,F,b
time = 60
 [Command]
name = "throw"     ;Required (do not remove)
command = D,DF,F,c
time = 60
[Command]
name="pow"
command=D,DF,F,x
[Command]
name="pow"
command=D,DF,F,y
time=60
[Command]
name="pow"
command=D,DF,F,z
time=60

time=60
[Command]
name="kickup"
command=D,DB,B,a
time=60
[Command]
name="kickup"
command=D,DB,B,b
time=60
[Command]
name="kickup"
command=D,DB,B,c
time=60

[Command]
name="owl"
command=D,DB,B,x
time=40
[Command]
name="owl"
command=D,DB,B,y
time=40
[Command]
name="owl"
command=D,DB,B,z
time=40

;-| Special Motions |------------------------------------------------------

[Command]
name="ovocourt"
command=DF,F,y+z
time=60

[Command]
name="keke"
command=DF,F,b+c
time=60


[Command]
name="nicejump"
command=DB,B,y+z
time=60



[Command]
name="rolex"
command=DB,B,b+c
time=60

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


[Command]
name = "Adash"     ;Required (do not remove)
command = U,F, F
time = 50

[Command]
name = "Adashb"     ;Required (do not remove)
command = U,B, B
time = 50


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
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
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel <8
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0
;--|-AI Defense-|-----------------------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132
;===========================================================================
;-----------------------------
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = [200,210]) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
trigger1 = IfElse(P2BodyDist X > 15,200,210)
value=240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 240) && movecontact
value = 250

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 20) && (random > 900)
value = 200
;End Standing Chain

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 250) && movecontact
value =1416
;-------------

;-------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Start Crouching Chain
[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel < 3
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 440) && movecontact
trigger2 = (stateno = 240) && (var(15)>0 || var(14) >0) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1)
trigger3 = (stateno = 440) && (p2bodydist x <= 59)
value = 420

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = AILevel < 3
trigger2 = (stateno = 430) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1) && (stateno != 440)
trigger3 = p2stateno = 5110 && (p2bodydist x <= 85)
value = 400

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1, Alternate start for Easy AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
trigger2 = AILevel < 3
value = 430
;---------------------------------------------------------------------------
;Start Air Chain
[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 640) && movecontact && (random = [0,500])
value = 650

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 640) && movecontact && (random = [501,999])
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 5
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

[State -1, Followup jump attack with crouch hard kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 50 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 750) ;This will happen 75% of the time that the other triggers are true
value = 620
;===========================================================================
[State -1, Artificial Intelligence]
type = ChangeState
trigger1 = TeamMode = Single
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x =0) && (prevstateno != 5120)
value = 800
;-----------------------------
;-----------------------------

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000 && (Statetype = S)
triggerall = (Ctrl) && (random = [0,500]) && p2movetype=A
trigger1 = (p2bodydist x<= 30) && (prevstateno != 5120)
value =3112
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000 && (Statetype != A)&& (p2Statetype != A)
triggerall = (Ctrl) && (random = [0,500])
trigger1 = (p2bodydist x>= 131) && (prevstateno != 5120)
value =1416
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000 && (Statetype != A)&& (p2Statetype != A)
triggerall = (Ctrl) && (random = [0,500]) && p2movetype =H
trigger1 = (p2bodydist x<= 130) && (prevstateno != 5120)
value =32108
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000 && (Statetype != A) && (p2Statetype = A)
triggerall = (Ctrl) && (random = [0,500]) && p2movetype=A
trigger1 = (p2bodydist x>= 81) && (prevstateno != 5120)
value =2893

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000 && (Statetype = C)
triggerall = (Ctrl) && (random = [0,500])
trigger1 = (p2bodydist x<= 10) && (prevstateno != 5120)
value =420

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000 && (Statetype != A)
triggerall = (Ctrl) && (random = [0,500])
trigger1 = (p2bodydist x>= 111) && (prevstateno != 5120)
value =40

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)  && stateno !=1414
triggerall = stateno < 3000 && (Statetype = A)
triggerall = (Ctrl) && (random = [0,500])  && (pos Y<-100)
trigger1 = (p2bodydist x>= 111) && (prevstateno != 5120)
value =1414

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)  && stateno =1414
triggerall = stateno < 3000 && (Statetype = A)
triggerall = (Ctrl) && (random = [0,500]) && (pos X<110)
trigger1 = (p2bodydist x<= 50) && (prevstateno != 5120)
value =650


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)  && stateno !=1414
triggerall = stateno < 3000 && (Statetype = A)
triggerall = (Ctrl) && (random = [0,500]) && (pos X<110)
trigger1 = (p2bodydist x<= 50) && (prevstateno != 5120)
value =640




;---------------------------------hypers
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (p2bodydist x<= 90)
triggerall = (roundstate = 2) && (var(59) != 0)&& (p2movetype = A)
triggerall = (Ctrl)
trigger1 = (power >=1000) && (random = [0,300]) && (statetype = S)
value =900



[State -1, Artificial Intelligence]
type = ChangeState
trigger1 = TeamMode = Single
triggerall = (p2bodydist x>= 40)
triggerall = (roundstate = 2) && (var(59) != 0) && (p2movetype = H)
triggerall = (Ctrl)
trigger1 = (power >=1000) && (random = [0,300]) && (statetype = S)
value =45678

[State -1, Artificial Intelligence]
type = ChangeState
trigger1 = TeamMode = Single
triggerall = (p2bodydist x<= 60)
triggerall = (roundstate = 2) && (var(59) != 0)&& (p2movetype =H)
triggerall = (Ctrl)
trigger1 = (power >=1000) && (random = [0,300]) && (statetype = S)
value =32107

;-------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------

[State -1, fire]
type = ChangeState
value = 45678
triggerall = statetype != A
triggerall = command = "ovocourt"
triggerall= power>=1000
trigger1 = ctrl

[State -1, fire]
type = ChangeState
value =32107
triggerall = statetype != A
triggerall = command = "keke"
triggerall= power>=1000
trigger1 = ctrl



[State -1,]
type = ChangeState
value =900
triggerall = command = "nicejump"
trigger1 = statetype != A
triggerall= power>=1000
trigger1 = ctrl
;============================
;----------------------------------------------------------------------------
;------------------------------------
;----------------
[State -1, Adash]
type = ChangeState
value = 1414

trigger1 = command = "Adash"

trigger1 = statetype = A
trigger1 = ctrl

; adash
[State -1, Adashb]
type = ChangeState
value = 1415

trigger1 = command = "Adashb"
trigger1 = statetype = A
trigger1 = ctrl

;----------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 2893
triggerall = command = "throw"
trigger1 = statetype = S
trigger1 = ctrl

;===========================
[State -1,]
type = ChangeState
value =3112
triggerall = command = "kickup"
trigger1 = statetype != A
trigger1 = ctrl
;============================


;============================

[State -1,]
type = ChangeState
value =32108
triggerall = command = "owl"
trigger1 = statetype != A
trigger1 = ctrl
;============================
[State -1,]
type = ChangeState
value =1416
triggerall = command = "pow"
trigger1 = statetype != A
trigger1 = ctrl
;============================

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

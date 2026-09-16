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
name = "r_start"
command = ~s
time = 1
buffer.time = 5

[Command]
name = "charge"
command = /$c
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
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

;-| Hold Button |-----------------------------------------------------------
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
name = "hold_start"
command = /s
time = 1

;-| Super Desperation Move Motions |--------------------------------------------------
[Command]
name = "qcfhcb_xy"
command = ~D, F, $D, B, x+y
time = 30
[Command]
name = "qcbhcf_xy"
command = ~D, B, $D, F, x+y
time = 30
[Command]
name = "qcfhcb_ab"
command = ~D, F, $D, B, a+b
time = 30
[Command]
name = "qcbhcf_ab"
command = ~D, B, $D, F, a+b
time = 30

[Command]
name = "2qcf_xy"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "2qcb_xy"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "2qcf_2k"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "2qcb_2k"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "fhcf_xy"
command = ~F, B, $D, F, x+y
time = 30
[Command]
name = "bhcb_xy"
command = ~B, F, $D, B, x+y
time = 30


;-| Desperation Move Motions |--------------------------------------------------------
[Command]
name = "fhcf_p"
command = ~F, B, $D, F, x
time = 30
[Command]
name = "fhcf_p"
command = ~F, B, $D, F, y
time = 30
[Command]
name = "bhcb_p"
command = ~B, F, $D, B, x
time = 30
[Command]
name = "bhcb_p"
command = ~B, F, $D, B, y
time = 30

[Command]
name = "qcfhcb_x"
command = ~D, F, $D, B, x
time = 30

[Command]
name = "qcbhcf_x"
command = ~D, B, $D, F, x
time = 30

[Command]
name = "qcfhcb_y"
command = ~D, F, $D, B, y
time = 30

[Command]
name = "qcbhcf_y"
command = ~D, B, $D, F, y
time = 30

[Command]
name = "qcfhcb_a"
command = ~D, F, $D, B, a
time = 30

[Command]
name = "qcbhcf_a"
command = ~D, B, $D, F, a
time = 30

[Command]
name = "qcfhcb_b"
command = ~D, F, $D, B, b
time = 30

[Command]
name = "qcbhcf_b"
command = ~D, B, $D, F, b
time = 30

[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "2qcb_x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "2qcb_y"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "zawarudo"
command = ~F, y, a, F, x
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "fbf_a"
command = ~F, B, F, a
time = 30
[Command]
name = "fbf_b"
command = ~F, B, F, b
time = 30
[Command]
name = "fbf_x"
command = ~F, B, F, x
time = 30
[Command]
name = "fbf_y"
command = ~F, B, F, y
time = 30

[Command]
name = "bfb_a"
command = ~F, B, F, a
time = 30
[Command]
name = "bfb_b"
command = ~F, B, F, b
time = 30
[Command]
name = "bfb_x"
command = ~F, B, F, x
time = 30
[Command]
name = "bfb_y"
command = ~F, B, F, y
time = 30

[Command]
name = "cdbf_k"
command = ~30$DB, $F, a
time = 15
[Command]
name = "cdbf_k"
command = ~30$DB, $F, b
time = 15
[Command]
name = "cdfb_k"
command = ~30$DF, $B, a
time = 15
[Command]
name = "cdfb_k"
command = ~30$DF, $B, b
time = 15

[Command]
name = "dbf_k"
command = ~DB, F, a
time = 15
[Command]
name = "dbf_k"
command = ~DB, F, b
time = 15
[Command]
name = "dfb_k"
command = ~DF, B, a
time = 15
[Command]
name = "dfb_k"
command = ~DF, B, b
time = 15

[Command]
name = "cbf_p"
command = ~30$B, $F, x
time = 15
[Command]
name = "cbf_p"
command = ~30$B, $F, y
time = 15
[Command]
name = "cfb_p"
command = ~30$F, $B, x
time = 15
[Command]
name = "cfb_p"
command = ~30$F, $B, y
time = 15

[Command]
name = "bf_p"
command = ~B, F, x
time = 15
[Command]
name = "bf_p"
command = ~B, F, y
time = 15
[Command]
name = "fb_p"
command = ~F, B, x
time = 15
[Command]
name = "fb_p"
command = ~F, B, y
time = 15

[Command]
name = "cbf_k"
command = ~30$B, $F, a
time = 15
[Command]
name = "cbf_k"
command = ~30$B, $F, b
time = 15
[Command]
name = "cfb_k"
command = ~30$F, $B, a
time = 15
[Command]
name = "cfb_k"
command = ~30$F, $B, b
time = 15

[Command]
name = "bf_k"
command = ~B, F, a
time = 15
[Command]
name = "bf_k"
command = ~B, F, b
time = 15
[Command]
name = "fb_k"
command = ~F, B, a
time = 15
[Command]
name = "fb_k"
command = ~F, B, b
time = 15

[Command]
name = "cdu_k"
command = ~30$D, $U, a
time = 15
[Command]
name = "cdu_k"
command = ~30$D, $U, b
time = 15
[Command]
name = "cdu_p"
command = ~30$D, $U, x
time = 15
[Command]
name = "cdu_p"
command = ~30$D, $U, y
time = 15

[Command]
name = "du_k"
command = ~D, U, a
time = 15
[Command]
name = "du_k"
command = ~D, U, b
time = 15
[Command]
name = "du_p"
command = ~D, U, x
time = 15
[Command]
name = "du_p"
command = ~D, U, y
time = 15

[Command]
name = "rdp_a"
command = ~B, D, DB, a
time = 20

[Command]
name = "rdp_b"
command = ~B, D, DB, b
time = 20

[Command]
name = "dp_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "dp_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "dp_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "dp_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "rdp_y"
command = ~B, D, DB, y
time = 20

[Command]
name = "rdp_x"
command = ~B, D, DB, x
time = 20

[Command]
name = "hcbf_p"
command = ~F, D, B, F, y
time = 30

[Command]
name = "hcbf_p"
command = ~F, D, B, F, x
time = 30

[Command]
name = "hcfb_p"
command = ~F, D, B, F, y
time = 30

[Command]
name = "hcfb_p"
command = ~F, D, B, F, x
time = 30

[Command]
name = "hcbf_p"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "hcbf_p"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command]
name = "hcfb_p"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "hcfb_p"
command = ~F, DF, D, DB, B, F, x
time = 30


[Command]
name = "hcb_a"
command = ~F, D, B, a
time = 20

[Command]
name = "hcb_b"
command = ~F, D, B, b
time = 20

[Command]
name = "hcf_a"
command = ~B, D, F, a
time = 20

[Command]
name = "hcf_b"
command = ~B, D, F, b
time = 20

[Command]
name = "hcb_x"
command = ~F, D, B, x
time = 20

[Command]
name = "hcb_y"
command = ~F, D, B, y
time = 20

[Command]
name = "qcb_x"
command = ~D, DB, B, x
time = 20

[Command]
name = "qcb_y"
command = ~D, DB, B, y
time = 20

[Command]
name = "qcf_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "qcf_b"
command = ~D, DF, F, b
time = 20

[Command]
name = "qcb_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "qcb_b"
command = ~D, DB, B, b
time = 20

[Command]
name = "qcf_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "qcf_y"
command = ~D, DF, F, y
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = ~F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = ~B, B
time = 10

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "charge";Required (do not remove)
command = x+y+a
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "roll"
command = x+a
time = 3

[Command]
name = "knock"
command = y+b
time = 10

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "hijump"
command = ~$D, $U
time = 18

[Command]
name = "chargedhijump"
command = ~13$D, $U

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "hold_a2"
command = /a
time = 1

[Command]
name = "hold_b2"
command = /b
time = 1

[Command]
name = "hold_c2"
command = /c
time = 1

[Command]
name = "hold_x2"
command = /x
time = 1

[Command]
name = "hold_y2"
command = /y
time = 1

[Command]
name = "hold_z2"
command = /z
time = 1

[Command]
name = "hold_start2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "recovery2";Required (do not remove)
command = c
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

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State esp]
Type = Helper
Trigger1 = !NumHelper(999999)
helperType = normal
name = "command check"
ID = 999999
pos = 0,0
posType = p1
facing = 1
StateNo = 999999
keyctrl = 1
ownpal = 1
supermoveTime = 65535
pausemoveTime = 65535
size.xscale = 1
size.yscale = 1
size.ground.back = 21
size.ground.front = 14
size.air.back = 16
size.air.front = 18
size.height = 1
size.proj.doscale = 1
size.head.pos = -6,-5
size.mid.pos = -5,-62


;===========================================================================
;Computer Controlled Behavior
;---------------------------------------------------------------------------
;...

; COMBO STUFF

[State AIC, Consider S.CD]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 110
trigger1 = random < 150
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -52
trigger1 = p2dist y >= -80
var(18) = 980
ignorehitpause = 1
[State AIC, Consider S.HP]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 68
trigger1 = random < 350
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -52
trigger1 = p2dist y >= -90
var(18) = 210
ignorehitpause = 1
[State AIC, Consider S.LK]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 60
trigger1 = random < 170
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<20,-44,-29)
trigger1 = p2dist y >= -65
var(18) = 300
ignorehitpause = 1
[State AIC, Consider S.HK]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 56
trigger1 = random < 190
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<24,-55,-32)
trigger1 = p2dist y >= -124
var(18) = 310
ignorehitpause = 1
[State AIC, Consider C.LP]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 55
trigger1 = random < 210
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -37
trigger1 = p2dist y >= -60
var(18) = 400
ignorehitpause = 1
[State AIC, Consider S.LP]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 54
trigger1 = random < 230
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -69
trigger1 = p2dist y >= -90
var(18) = 200
ignorehitpause = 1
[State AIC, Consider C.LK]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 46
trigger1 = random < 250
trigger1 = p2dist y >= -20
var(18) = 500
ignorehitpause = 1
[State AIC, Consider C.HK]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 45
trigger1 = random < 270
trigger1 = p2dist y >= -20
var(18) = 505
ignorehitpause = 1
[State AIC, Consider C.HP]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype != A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 26
trigger1 = random < 310
trigger1 = floor( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
trigger1 = p2dist y >= -135
var(18) = 405
ignorehitpause = 1

[State AIC, Consider ZANGIEF]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype = A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 33
trigger1 = (p2bodydist y + (enemynear,vel y)) = [-70,-15]
trigger1 = random < 90
var(18) = 990
ignorehitpause = 1
[State AIC, Consider J.HP]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype = A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 63
trigger1 = (p2bodydist y + (enemynear,vel y)) = [-52,10]
trigger1 = random < 200
var(18) = 610
ignorehitpause = 1
[State AIC, Consider J.LK]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype = A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 50
trigger1 = (p2bodydist y + (enemynear,vel y)) = [-64,-8]
trigger1 = random < 200
var(18) = 700
ignorehitpause = 1
[State AIC, Consider J.HK]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype = A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 50
trigger1 = (p2bodydist y + (enemynear,vel y)) = [-31,25]
trigger1 = random < 200
var(18) = 710
ignorehitpause = 1
[State AIC, Consider J.LP]
type = VarSet
triggerall = numenemy
triggerall = var(59)
triggerall = statetype = A
trigger1 = (p2bodydist x + (enemynear,vel x)) <= 29
trigger1 = (p2bodydist y + (enemynear,vel y)) = [-51,5]
trigger1 = random < 200
var(18) = 600
ignorehitpause = 1


;

; Just

[State AI, RAEG]
type = ChangeState
value = 3300
triggerall = var(59)
triggerall = statetype != A
triggerall = power >= 3000
triggerall = random < 8 + ((lifemax - life)/3)
triggerall = random < 50 + abs(p2life - life) || random < 50
triggerall = roundno != 1 || teammode = turns
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = [200,799]
trigger2 = movecontact
trigger2 = random < 50
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1500]
trigger3 = movecontact
trigger3 = random < 20

[State AI, Kung Fu Throw]
type = ChangeState
value = ifelse(random<90&&(prevstateno != [1300,1320]),ifelse(random<500,1320,40),ifelse(random<680||(prevstateno = [1300,1320]),ifelse(random<200||p2movetype=H,1500,ifelse(random<500,956,900)),ifelse(random<500,750,760)))
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
;triggerall = stateno != 100
triggerall = stateno != 40
triggerall = random < 900 || (prevstateno = [1300,1320])
triggerall = p2stateno != [5100,5200]
triggerall = prevstateno != [900,999]
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State AI, Halo]
type = ChangeState
triggerall = var(59)
triggerall = numhelper(3400)
triggerall = p2bodydist x <= 55
triggerall = p2bodydist y <= -10
triggerall = statetype != A
triggerall = stateno != 40
triggerall = command = "holdfwd"
trigger1 = ctrl
value = 40
[State AI, Reach]
type = ChangeState
triggerall = var(59)
triggerall = p2bodydist x >= 150
triggerall = statetype != A
triggerall = stateno != 40
triggerall = command = "hijump"
triggerall = command = "holdfwd"
trigger1 = ctrl
value = 40

[State AI, Can't Touch This]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = prevstateno != 1600
triggerall = stateno != 1600
triggerall = numenemy
triggerall = ctrl
triggerall = random < 250
trigger1 = enemynear,stateno=5120
trigger1 = enemynear,animtime >= -6
value = 1600

[State AI, Taunt]
type = ChangeState
triggerall = var(59)
triggerall = p2bodydist x >= 80
triggerall = statetype != A
triggerall = prevstateno != 195
triggerall = stateno != 195
triggerall = ctrl
triggerall = !numhelper(3401)
trigger1 = random < ifelse(p2bodydist x<=45,500,80)
trigger1 = (p2stateno = [5100,5200]) || p2statetype = L
trigger2 = random < 350
trigger2 = prevstateno = [1050,1070]
value = ifelse((random<900&&p2bodydist x<=45)||life<=200,ifelse(random<400&&p2stateno!=5120,1500,105),ifelse(random<150,1000,195))

[State AI, AI]
type = ChangeState
;triggerall = numhelper(3115) = 0
triggerall = var(59)
triggerall = statetype != A
triggerall = (p2movetype = A && enemynear, numproj = 0) && (EnemyNear, Facing != Facing) && (EnemyNear, moveguarded < 8) && (!var(51)) && (inguarddist)
triggerall = p2bodydist x = [-5,80]
triggerall = backedgedist > 80
triggerall = random != [250,400]
trigger1 = ctrl
value = ifelse(random<300&&command="holdback",40,105)

[State AI, ANTI-AIR]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [-5,120]
triggerall = p2bodydist y = [-192,-60]
triggerall = random < 500
triggerall = stateno != 20
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse(random<100||p2bodydist x>=90,1000,ifelse(random<150&&p2bodydist x<= 32,ifelse(random<500,405,310),ifelse(random<500&&p2bodydist y>=-140,1400,ifelse(random<500,1300,1200))))

[State AI, Hi Guard]
type = ChangeState
triggerall = !numhelper(3401)
triggerall = stateno != 40
triggerall = (var(59)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (P2MoveType = A) && ((inguarddist) || (EnemyNear, NumProj > 0)) && (enemynear,moveguarded < 12) && (!var(51))
value = ifelse(random<109&&(stateno!=[130,169]),ifelse(random<250+(enemynear,time)&&p2bodydist x>=85,1000,ifelse(random<800,750,1300)),ifelse(random<350&&(stateno!=[120,152]),1600,130))

[State AI, Lo Guard]
type = ChangeState
triggerall = !numhelper(3401)
triggerall = stateno != 40
triggerall = (var(59)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (P2MoveType = A) && ((inguarddist) || (EnemyNear, NumProj > 0)) && (enemynear,moveguarded < 12) && (!var(51))
value = ifelse(random<16,40,ifelse(random<350&&(stateno!=[120,152]),1600,131))

[State AI, Contra]
type = ChangeState
value = 981
triggerall = var(59)
triggerall = power >= 1000
triggerall = Statetype != A
triggerall = random < 250
triggerall = p2bodydist x <= 70
trigger1 = stateno = 150 && p2statetype = C
trigger2 = stateno = 151 && p2statetype = S

[State AI, LowJump]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = (p2movetype != A || !inguarddist || EnemyNear, Facing = Facing)
triggerall = p2statetype = C
triggerall = (p2movetype != H) || (p2stateno != [120,169])
triggerall = p2bodydist x = [25,108]
;triggerall = p2bodydist y >= -119
triggerall = random < 250
triggerall = var(54) != 2
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = command = "holdfwd"
triggerall = command != "hijump"
triggerall = command != "holdup"
trigger1 = ctrl
value = 40

; First Punch
[State AI, Short Range Poke]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = (p2movetype != A || EnemyNear, Facing = Facing || numhelper(3401))
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [-5,51]
triggerall = p2bodydist y >= -119
triggerall = random < 900
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse(random<180&&p2statetype!=A,1500,ifelse(random<250&&p2movetype!=H,1320,ifelse(random<500,200,300)+ifelse(random<800||p2bodydist x>=44,0,10)+ifelse(p2bodydist y >= -45&&p2bodydist x<=44&&(random<250||statetype=C||p2statetype=C),0,200)))

; After Land Suprise
[State AI, After Land Poke]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded != [1,8]) || (enemynear,HitDefAttr = SCA,AT) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5130]
;triggerall = p2bodydist x <= 80
triggerall = random < 400 + floor( abs(life - p2life) / 4)
triggerall = p2movetype != H || random < 500
trigger1 = stateno = 52
trigger1 = animtime = 0
value = ifelse( p2bodydist x <= 40, ifelse( random<389&&p2statetype!=A , 1500 , ifelse(random<500,1400,1200) ), ifelse(random<800&&command="holdfwd",100,1000) )

; First Punch
[State AI, A'LA Geese]
type = ChangeState
triggerall = prevstateno != 1500
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist x = [-10,44]
triggerall = p2stateno != 5120
triggerall = random < 222 || p2stateno = 5100
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
trigger2 = p2statetype != C
trigger2 = random < 123
trigger2 = (stateno = [200,510]) || (stateno = 1100) || (stateno = 1400)
trigger2 = moveguarded
trigger3 = stateno = 1700
trigger3 = movecontact
trigger3 = random < 350
trigger3 = animelemtime(2) >= 0
trigger3 = p2statetype = L || p2statetype = S
value = 1500
[State AI, GuardBreak]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [35,125]
triggerall = p2bodydist y > -88
trigger1 = stateno = [200,599]
trigger1 = moveguarded >= 3
trigger1 = random < 350
value = 980

; First Punch
[State AI, Mid Range Poke]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded != [1,12]) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80) || (numhelper(3401))
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [40,84]
triggerall = random < 600 + floor( (life - p2life) / 3.5)
triggerall = (stateno != [10,12]) || (numhelper(3401))
triggerall = stateno != 20 || random < 100
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse(random<50&&p2movetype!=H,1600,ifelse( random<100&&p2bodydist x <= 48, ifelse(random<500,1300,500) , ifelse( random < 800&&command="x" , ifelse(random<500,1100,1400) , ifelse(random<500,210,310) ) ))

; First Punch
[State AI, Far Range Poke]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded != [1,12]) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [60,130]
triggerall = random < 400 + floor( (life - p2life) / 2.5)
triggerall = (stateno != [10,12]) || (numhelper(3401))
triggerall = stateno != 20 || random < 100
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse( random<100||p2bodydist x <= 80, ifelse(random<400,750,1300) , ifelse( random < 200 , ifelse(random<350,980,1000) , ifelse(random<500,1100,1400) ) )

[State AI, Predictable Super Throw]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded != [1,12]) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5150]
triggerall = p2stateno != [120,160]
triggerall = random < 100 + floor( abs(p2life - life) / 2) || (p2life <= 150 && random < 300)
triggerall = (stateno != [10,12]) || (numhelper(3401))
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = stateno != 100
triggerall = power >= 1000
triggerall = power < 2500 || random < 100
triggerall = power < 3000
trigger1 = ctrl
trigger1 = p2bodydist x >= 80
trigger1 = life < floor(power/3) || random < 73
trigger2 = stateno = 200 || stateno = 210 || stateno = 300 || stateno = 310 || stateno = 400 || stateno = 405 || stateno = 500 || stateno = 505 || stateno = 1000
trigger2 = movehit = [1,8]
trigger2 = random < 90
value = ifelse(random<500&&power>=2000,ifelse((random<200&&life>=350)||p2life<=100||p2bodydist x>=160||p2bodydist y<=-66,3240,3200),ifelse(random<850&&p2bodydist x<54,3100,3050))

; First Punch
[State AI, Faaar Range Stuff]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded != [1,12]) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x >= 130
triggerall = random < 120 + floor( abs(p2life - life) / 2.5)
triggerall = (stateno != [10,12]) || (numhelper(3401))
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse( random<350&&command="holdfwd", ifelse(random<500,40,100) , ifelse( random < 500 , ifelse(random<400,1300,1000) , ifelse(random<500&&stateno!=195&&numhelper(3401)=0,195,1400) ) )

; Misc
[State AI, I C UR MAKIN MISTAKE]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
;triggerall = var(54) != 2
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [60,168]
triggerall = random < 500
triggerall = (stateno != [10,12]) || random < 150
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse( random<500&&command="holdfwd", ifelse(random<500,40,100) , ifelse( random < 200 , 1000 , ifelse(random<100&&power>=2000,ifelse(!numhelper(3400)&&random<150,3400,3200),1400) ) )

[State AI, I FUCKIN' LOVE THIS MOVE]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
;triggerall = var(54) != 2
triggerall = p2stateno != [120,155]
triggerall = p2stateno != [5100,5130]
triggerall = random < 345
triggerall = p2bodydist y >= -85
trigger1 = stateno = 1300 || stateno = 1320
trigger1 = !numexplod(1310)
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(7) < 0
value = ifelse(ifelse(stateno=1300,(p2dist x = [80+(var(23)*100),120+(var(23)*100)]),(p2dist x = [-120-(var(23)*100),-80-(var(23)*100)]))&&random<350,1306,1305)

; COMBO

[State AI, Stupid Turtles]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
trigger1 = stateno = 200 || stateno = 210 || stateno = 300 || stateno = 310 || stateno = 400 || stateno = 405 || stateno = 500 || stateno = 505
trigger1 = moveguarded
trigger1 = random < 250
value = ifelse( random<400&&power>=3000&&(p2life-life<300)&&(life>=350||random<100) , 3240 , ifelse(random<500,1300,1320) )

[State AI, BasToSpecial COMBO]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
triggerall = (p2bodydist x = [40,135]) || (p2bodydist y <= -88) || (stateno = 980)
trigger1 = stateno = 200 || stateno = 210 || stateno = 300 || stateno = 310 || stateno = 400 || stateno = 405 || stateno = 500 || stateno = 505 || stateno = 980
trigger1 = movecontact
trigger1 = random < 500
value = ifelse(p2bodydist y <= -88 , 1200 , ifelse( random < 100 , ifelse(random<500,1300,1320) , ifelse(random<500,1100,1400) ) )
[State AI, BrazilCOMBO]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [-5,57]
triggerall = (var(18) = [200,985]) && (var(18) != [600,799])
trigger1 = stateno = [200,799]
trigger1 = movecontact; >= 3
trigger1 = random < 500
value = ifelse(p2dist y <= -100,1200,ifelse(moveguarded&&random<150,ifelse(random<500&&p2bodydist x<44&&p2statetype!=C,1500,980),var(18)))

[State AI, Air Jumpin]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
triggerall = Statetype = A
triggerall = (enemynear,pos y = 0)
triggerall = p2bodydist x <= 55
triggerall = random < 500 - abs(pos y)
trigger1 = ctrl
trigger1 = vel y > 0
value = ifelse( p2bodydist y <= 74&&random<900&&p2statetype!=L , ifelse(random<500,710,610) - ifelse(p2bodydist y <= 35,10,0), 1700 )

[State AI, Air COMBO]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
triggerall = Statetype = A
triggerall = (enemynear,pos y != 0)
triggerall = p2bodydist x <= ifelse((stateno=[600,990]),50,65)
triggerall = p2bodydist y = [-60,48]
triggerall = random < 500
trigger1 = ctrl
trigger1 = time >= 8 || prevstateno != 1511
trigger2 = stateno = [600,710]
trigger2 = (movehit) || (moveguarded && random < 100)
value = ifelse( p2bodydist x > 40 , 1200 , ifelse(random<90||p2bodydist y <= -45,ifelse(p2bodydist y <= -120,1200,1700),ifelse( (random<115&&p2bodydist y<=-25)||(var(18)!=[600,710]) , 990 , var(18) )) )

[State AI, Air Dash]
type = ChangeState
triggerall = RoundState = [1,2]
triggerall = var(59)
triggerall = Statetype = A
triggerall = p2bodydist x = [55,179]
triggerall = p2bodydist y = [-25 + (enemynear,vel y),40 + (enemynear,vel y)+(p2dist y/2.5)]
triggerall = random < 323
trigger1 = ctrl
trigger1 = vel y > -3 || random < 90 || p2statetype = A
trigger2 = stateno = [600,710]
trigger2 = (movehit) || (moveguarded && random < 100)
value = 1100

[State AI, Air Shadow]
type = ChangeState
triggerall = RoundState = [1,2]
triggerall = var(59)
triggerall = numenemy
triggerall = Statetype = A
triggerall = p2bodydist x = [15,158-(enemynear,vel x)]
triggerall = p2bodydist y = [(p2bodydist x / 1.5)-20,(p2bodydist x / 1.5)+20]
triggerall = abs(enemynear,vel x) <= 4.5 || random < 250
triggerall = p2stateno != 5120
triggerall = p2statetype != L
triggerall = random < 150 + abs(pos y)
trigger1 = ctrl
trigger2 = stateno = 1100 || stateno = 1200
trigger2 = moveguarded
value = 1800


[State AI, ROUBLE REPPUKEN]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
trigger1 = random < 500
trigger1 = stateno = 1000
trigger1 = anim = 1000
trigger1 = animelemtime(7) >= 2
value = 1000

[State AI, YUGAH!]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
triggerall = random < 100
triggerall = moveguarded
trigger1 = stateno = 1100
trigger1 = var(23) = 0
trigger2 = stateno = 1101
trigger3 = stateno = 1400
value = ifelse( random<400&&power>=3000&&(p2life-life<300)&&(life>=350||random<100) , 3240 , ifelse(random<500,1300,1320) )

[State AI, WRATH!]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
trigger1 = random < 500
trigger1 = stateno = 1101
trigger1 = movecontact = [2,8]
value = ifelse(random<900&&frontedgedist <88,1200, ifelse(random<500,1400,ifelse(random<200&&p2bodydist x>50,1100,1000)) )

[State AI, KILL!]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
triggerall = statetype != A
trigger1 = random < 500
trigger1 = stateno = 1100
trigger1 = var(23) = 0
trigger1 = movecontact = [2,8]
value = ifelse(random<600,1200, ifelse(random<200&&power>=2000,ifelse(random<100&&life>=300,3000,ifelse(random<500,3050,3100)),1400) )

[State AI, SAIKOKASSIO]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
triggerall = statetype != A
trigger1 = random < 500
trigger1 = stateno = 1400
trigger1 = movehit = [2,8]
value = ifelse(random<600,1200, ifelse(random<200&&power>=2000,ifelse(random<100&&life>=300,3000,ifelse(random<500,3050,3100)),1000) )

[State AI, HELM BREAKER]
type = ChangeState
triggerall = RoundState < 3
triggerall = var(59)
trigger1 = random < 500
trigger1 = stateno = 1200
trigger1 = movecontact
trigger1 = animelem = 15
trigger1 = p2bodydist y >= -180
trigger2 = random < 350
trigger2 = stateno = 990
trigger2 = movehit
trigger2 = p2bodydist x <= 65
trigger2 = p2bodydist y >= -150
trigger3 = statetype = A
trigger3 = stateno = 1100
trigger3 = movecontact >= 3
value = 1700
;
;===========================================================================
;Player Controlled Behavior
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3300
triggerall = ifelse((Anim!=[5,6]),(command="qcfhcb_xy"),(command="qcbhcf_xy"))
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)

;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3400
triggerall = (!var(59)) || (p2statetype != L)
triggerall = ifelse((Anim!=[5,6]),(command="fhcf_xy"),(command="bhcb_xy"))
triggerall = statetype != A
triggerall = power >= 2000
triggerall = !numhelper(3401)
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = (time >= 5) || (movecontact)
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3200
triggerall = ifelse((Anim!=[5,6]),(command="qcbhcf_xy"),(command="qcfhcb_xy"))
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3240
triggerall = (!var(59)) || (life > 360 || p2life <= 320)
triggerall = ifelse((Anim!=[5,6]),(command="2qcf_xy"),(command="2qcb_xy"))
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3100
triggerall = !var(59) || (p2bodydist x <= 52 && p2statetype != L)
triggerall = ifelse((Anim!=[5,6]),(command="2qcf_k"),(command="2qcb_k"))
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3050
triggerall = ifelse((Anim!=[5,6]),(command="2qcb_x"||command="2qcb_y"),(command="2qcf_x"||command="2qcf_y"))
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;@%#$(^@$#W)(%
[State -1, #@$%(*@$()@#*$#4]
type = ChangeState
value = 3000
triggerall = !var(59) || ((p2bodydist x <= 58 && p2statetype != L) && (life > 260 || p2life <= 220))
triggerall = ifelse((Anim!=[5,6]),(command="2qcf_x"||command="2qcf_y"),(command="2qcb_x"||command="2qcb_y"))
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1500
triggerall = !var(59) || p2statetype != A
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="hcbf_p"),(command="hcfb_p"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != [1600,1620]
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1600
triggerall = !var(59) || p2movetype != H
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="hcb_a"||command="hcb_b"),(command="hcf_a"||command="hcf_b"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != [1600,1620]


;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1400
triggerall = RoundState < 3
;triggerall = ifelse((Anim!=[5,6]),(command="cbf_p"||command="qcb_b"),(command="qcf_a"||command="qcf_b"))
triggerall = command = "cbf_p"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 =(stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1400
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != [1600,1620]
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1320
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="qcb_a"||command="qcb_b"),(command="qcf_a"||command="qcf_b"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1300
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != 1305
trigger3 = stateno != 1306
trigger3 = stateno != [1600,1620]
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1300
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="qcf_a"||command="qcf_b"),(command="qcb_a"||command="qcb_b"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1300
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != 1305
trigger3 = stateno != 1306
trigger3 = stateno != [1600,1620]
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1305
triggerall = RoundState < 3
triggerall = command = "x" || command = "y"
triggerall = statetype != A
trigger1 = stateno = 1300 || stateno = 1320
trigger1 = !numexplod(1310)
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(7) < 0
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1306
triggerall = RoundState < 3
triggerall = command = "a" || command = "b"
triggerall = statetype != A
trigger1 = stateno = 1300 || stateno = 1320
trigger1 = !numexplod(1310)
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(7) < 0
;---------------------------------------------------------------------------
;$@#%(#$*%@#($*
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1200
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="dp_x"||command="dp_y"),(command="rdp_x"||command="rdp_y"))
triggerall = statetype != A || !var(59)
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980) || (stateno=990)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1200
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != [1600,1620]
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1100
triggerall = (!var(59)) || (statetype!=A) || (ctrl)
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="qcb_x"||command="qcb_y"),(command="qcf_x"||command="qcf_y"))
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = movecontact
trigger3 = stateno != 1100
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != [1600,1620]
trigger4 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1000
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="qcf_x"||command="qcf_y"),(command="qcb_x"||command="qcb_y"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [200,799]) || (stateno=980) || (stateno=990)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != 1500
trigger3 = stateno != 1605
trigger3 = stateno != [1600,1620]
trigger3 = movecontact
trigger4 = stateno = 1000
trigger4 = var(23) = 0
trigger4 = command="y"
trigger4 = animelemtime(7) >= 2
trigger5 = (stateno = 1510) && (animelemtime(12) >= 0) && (animelemtime(15) < 0)
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1700
triggerall = RoundState < 3
triggerall = (command="qcb_a"||command="qcb_b")
triggerall = statetype = A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [600,799]) || (stateno=980) || (stateno=990)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != 1700
trigger3 = movecontact
;---------------------------------------------------------------------------
;%^()W*#^)(
[State -1, #^$(*%()W*%]
type = ChangeState
value = 1800
triggerall = !var(59)
triggerall = RoundState < 3
triggerall = (command="qcf_x"||command="qcf_y")
triggerall = statetype = A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = (stateno = [600,799]) || (stateno=980) || (stateno=990)
trigger2 = movecontact
;$^(%$#*#$@)(*%$#)^( cancelbabegsr4
trigger3 = stateno = [1000,1800]
trigger3 = stateno != 1800
trigger3 = movecontact
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 956
triggerall = RoundState < 3
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(19) = 0 ; Opponent isn't in guarding state
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = RoundState < 3
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(19) = 0 ; Opponent isn't in guarding state
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Roll 1
[State -1, Roll 1]
type = ChangeState
value = 750
triggerall = RoundState < 3
triggerall = (command = "c" || command = "roll" || command = "roll" && command = "holdfwd")
triggerall = command != "holddown" && command != "holdback"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 && power >= 1000
trigger3 = stateno = 151 && power >= 1000
trigger4 = stateno = 101
;---------------------------------------------------------------------------
;Roll 2
[State -1, Roll 1]
type = ChangeState
value = 760
triggerall = RoundState < 3
triggerall = (command = "c" || command = "roll")
triggerall = command != "holddown" && command = "holdback"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 && power >= 1000
trigger3 = stateno = 151 && power >= 1000
trigger4 = stateno = 101
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = RoundState < 3
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = RoundState < 3
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = RoundState < 3
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Knockdown (FART)
[State -1, Knockdown (FART)]
type = ChangeState
value = 986
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = Statetype != A
triggerall = stateno != 986
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Knockdown (Ground)
[State -1, Knockdown (Ground)]
type = ChangeState
value = 980
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Knockdown Counter
[State -1, Knockdown Counter]
type = ChangeState
value = 981
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = stateno = 150 && power >= 1000
trigger2 = stateno = 151 && power >= 1000
;---------------------------------------------------------------------------
;Knockdown (Air)
[State -1, Knockdown (Air)]
type = ChangeState
value = 990
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,799]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jumping Light Punch
[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerall = RoundState < 3
triggerall = command = "x"
triggerall = Statetype != C
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,799]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jumping Light Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 700
triggerall = RoundState < 3
triggerall = command = "a"
triggerall = Statetype != C
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,799]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jumping Hard Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 710
triggerall = RoundState < 3
triggerall = command = "b"
triggerall = Statetype != C
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,799]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jumping Hard Punch
[State -1, Jumping Hard Punch]
type = ChangeState
value = 610
triggerall = RoundState < 3
triggerall = command = "y"
triggerall = Statetype != C
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,799]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "x" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 405
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "y" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 500
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "a" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 505
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "b" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Light Punch (Close)
[State -1, Light Punch (Close)]
type = ChangeState
value = 200 ; ifelse(P2bodydist X < 16,205,200)
triggerall = RoundState < 3
triggerall = command = "x" && (helper(999999),command != "holddown")
;triggerall = P2bodydist X < 16
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Light Punch (Far)
;[State -1, Light Punch (Far)]
;type = ChangeState
;value = 200
;triggerall = RoundState < 3
;triggerall = command = "x" && (helper(999999),command != "holddown")
;triggerall = P2bodydist X >= 16
;triggerall = Statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 101
;trigger3 = stateno = [200,799]
;trigger3 = movecontact
;---------------------------------------------------------------------------
;Light Kick
[State -1, Light Kick]
type = ChangeState
value = 300 ;ifelse(P2bodydist X < 20,305,300)
triggerall = RoundState < 3
triggerall = command = "a" && (helper(999999),command != "holddown")
;triggerall = P2bodydist X >= 20;P2dist X >= 39
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Light Kick (Close)
;[State -1, Light Kick (Close)]
;type = ChangeState
;value = 305
;triggerall = RoundState < 3
;triggerall = command = "a" && (helper(999999),command != "holddown")
;triggerall = P2bodydist X < 20;P2dist X < 39
;triggerall = Statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 101
;trigger3 = stateno = [200,799]
;trigger3 = movecontact
;---------------------------------------------------------------------------
;Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = 210 ; ifelse((P2bodydist X < 30&&stateno!=215)||(stateno=210),215,210)
triggerall = RoundState < 3
triggerall = command = "y" && command != "holddown"
;triggerall = P2bodydist X >= 30;P2dist X >= 49
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Hard Punch (Close)
;[State -1, Hard Punch (Close)]
;type = ChangeState
;value = 215
;triggerall = RoundState < 3
;triggerall = command = "y" && command != "holddown"
;triggerall = P2bodydist X < 30;P2dist X < 49
;triggerall = Statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 101
;trigger3 = stateno = [200,799]
;trigger3 = movecontact
;---------------------------------------------------------------------------
;Hard Kick
[State -1, Hard Kick]
type = ChangeState
value = 310 ; ifelse(P2bodydist X < 24,315,310)
triggerall = RoundState < 3
triggerall = command = "b" && command != "holddown"
;triggerall = P2bodydist X >= 24;P2dist X >= 49
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [200,799]
trigger3 = movecontact
;---------------------------------------------------------------------------
;Hard Kick (Close)
;[State -1, Hard Kick (Close)]
;type = ChangeState
;value = 315
;triggerall = RoundState < 3
;triggerall = command = "b" && command != "holddown"
;triggerall = Statetype != A
;triggerall = P2bodydist X < 24;P2dist X < 49
;trigger1 = ctrl
;trigger2 = stateno = 101
;trigger3 = stateno = [200,799]
;trigger3 = movecontact

[statedef 999999]
anim = 1
ctrl=0

;helper for command check

[State esp]
Type = null
Trigger1 = 0
;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

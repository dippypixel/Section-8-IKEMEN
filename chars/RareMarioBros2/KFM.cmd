;   slash (/) - means the key must be held down
;   tilde (~) - to detect key releases
;   dollar ($) - Direction-only: detect as 4-way
;   plus (+) - Buttons only: simultaneous press
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;-| Button Remapping |-----------------------------------------------------
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
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Hyper1"
command = ~D, DF, F, x+y
[Command]
name = "Hyper1"
command = ~D, DF, F, x+z
[Command]
name = "Hyper1"
command = ~D, DF, F, z+y
;-| Special Motions |------------------------------------------------------

[Command]
name = "FQCF_x"
command = ~F, D, DF, x

[Command]
name = "FQCF_y"
command = ~F, D, DF, y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "SuperJump"
command = $D, $U
time = 20

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

;-| Hold Dir |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Hold button
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
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Statedef -1]

;===================================================;
;                   HYPER MOVES                     ;
;===================================================;
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3100;3000
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3100)
trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check 1]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

[State -1, Combo condition 2 Reset]
type = VarSet
trigger1 = 1
var(3) = 0

[State -1, Combo condition Check 2]
type = VarSet
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(3) = 1

[State -1, Air Condition Reset]
type = VarSet
trigger1 = stateno != 101 && stateno != 102 && statetype != A
trigger2 = movetype = H
var(2) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = stateno = 101 || stateno = 102
var(2) = 1

;===================================================;
;                   SUPER MOVES                     ;
;===================================================;
;---------------------------------------------------------------------------
;Projectile 3 - Fart (1/3 super bar)
[State -1, Projectile 3 - Fart]
type = ChangeState
value = 1020
triggerall = command = "QCF_z"
triggerall = power >= 330 && numhelper(1021) = 0
trigger1 = var(1) ;Use combo condition (above)
;===================================================;
;                 SPECIAL MOVES                     ;
;===================================================;

;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = power < powermax
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdy" && command = "holdb"

;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = command = "FQCF_x"
trigger1 = var(1) || var(3) ;Use combo condition (above)

;Projectile 1 - Fireball
[State -1, Projectile 1 - Fireball]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = numhelper(1001) < 2
trigger1 = var(1) ;Use combo condition (above)

;Projectile 2 - Powah Wave
[State -1, Projectile 2 - Powah Wave]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = numhelper(1011) < 2
trigger1 = var(1) ;Use combo condition (above)

;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "QCF_a"
trigger1 = var(1) ;Use combo condition (above)

;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1110
triggerall = command = "QCF_b"
trigger1 = var(1) ;Use combo condition (above)

;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1150
triggerall = command = "QCB_a"
triggerall = numexplod(1150)=0
trigger1 = var(1) || var(3) ;Use combo condition (above)

;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1160
triggerall = command = "QCB_b"
trigger1 = var(1) || var(3) ;Use combo condition (above)
;===================================================;
;                  NORMAL MOVES                     ;
;===================================================;
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact ;&& prevstateno != 200

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) && Movecontact
;trigger3 = (StateNo = 230) && Movecontact

;Stand K.D.
[State -1, Stand Knock Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = (stateno = [120,169]) && stateno!= 140
trigger3 = power >= 500

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact

;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) ||(StateNo = 230) && time >= 8
trigger2 =  Movecontact

;Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) || (StateNo = 400)
trigger2 = Movecontact
;trigger3 = (StateNo = 230) && Movecontact

;Crouch Stong Punch
[State -1, Crouch Stong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 400) && Movecontact
;trigger3 = (StateNo = 230) && Movecontact
;trigger4 = (StateNo = 400) && Movecontact
;trigger5 = (StateNo = 430) && Movecontact
;trigger6 = (StateNo = 210) && Movecontact

;Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
;trigger2 = (Stateno = 200) && Movecontact
;trigger3 = (Stateno = 230) && Movecontact
;trigger4 = (Stateno = 400) && Movecontact

;Crouch Strong Kick
[State -1, Crouch Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
;trigger2 = (StateNo = 200) && Movecontact
;trigger3 = (StateNo = 230) && Movecontact
;trigger4 = (StateNo = 410) && Movecontact
;trigger5 = (StateNo = 430) && Movecontact
;trigger6 = (StateNo = 210) && Movecontact
;trigger7 = (StateNo = 240) && Movecontact
;trigger8 = (StateNo = 220) && Movecontact

;Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && Statetype = A
trigger1 = ctrl || var(2) && movetype != A
trigger2 = (StateNo = 600) && Movecontact
;trigger3 = (StateNo = 630) && Movecontact

;Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y" && Statetype = A
trigger1 = ctrl || var(2) && movetype != A
trigger2 = (StateNo = 600) && Movecontact
;trigger3 = (StateNo = 630) && Movecontact

;Air K.D.
[State -1, Stand Knock Punch]
type = ChangeState
value = 620
triggerall = command = "z" & prevstateno!= 620
triggerall = statetype = A
trigger1 = ctrl || var(2) && movetype != A
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = (stateno = [120,169]) && stateno!= 140
trigger3 = power >= 500

;Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && Statetype = A
trigger1 = ctrl || var(2) && movetype != A
trigger2 = (StateNo = 600) && Movecontact

;Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b" && Statetype = A
trigger1 = ctrl || var(2) && movetype != A
trigger2 = (StateNo = 600) || (StateNo = 630)
trigger2 = Movecontact

;===================================================;
;           MISCELLANEOUS MOVES                     ;
;===================================================;

;-----------------------------
;Launcher kinda hope this dont break anything
[State -1, Launcher] ;by GGN
type = ChangeState
value = 40
triggerall = Command = "holdup" && stateno!= 40
trigger1 = stateno = 410  || stateno = 440
trigger1 =  movehit

;Super Jump
[State -1, Super Jump]
type = null;ChangeState
value = 60
trigger1 = command = "SuperJump"
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = Command = "holdup"
;trigger2 = stateno = 420 && movehit

; Run Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;AirDash Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = var(2) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;AirDash Back
[State -1, Run Back]
type = ChangeState
value = 102
triggerall = var(2) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

; Run Backward
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dodge Back
[State -1, T S]
type = ChangeState
value = 705
triggerall = command = "c" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]

;---------------------------------------------------------------------------
;Dodge Forward
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = stateno = [150,151]
trigger3 = stateno = 100
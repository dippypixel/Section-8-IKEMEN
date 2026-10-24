; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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

;------------------------------------------------------------------------------
[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI_19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1
;-| FATAL Motions |--------------------------------------------------------
[command]
name = "SUPERSTAR MARIO"
command =  ~D, F, s
;-| Super Motions |--------------------------------------------------------
[command]
name = "Super Hammer"
command = D, DF, F, x+y
time = 15

[command]
name = "SMBZ-Styled Combo(?)"
command = D, DF, F, y+z
time = 15

[command]
name = "F.L.U.D.D Overdrive"
command = D, DB, B, x+y
time = 15

[command]
name = "Boomerang Cappy"
command = D, DB, B, y+z
time = 15

[command]
name = "Hammer Mario"
command = D, DF, F, a+b
time = 15

[command]
name = "Heavy Thunderstorm"
command = D, DF, F, b+c
time = 15

[command]
name = "Mario Finale"
command = D, DB, B, a+b
time = 15

[command]
name = "Rainbow Star"
command = D, DB, B, b+c
time = 15


;-| Special Motions |------------------------------------------------------
[Command]
name = "GuardCancel"
command = c+z
time = 10

[Command]
name = "Dodge"
command = a+x
time = 1

[Command]
name = "walljumpback"
command = UB

[Command]
name = "walljumpfwd"
command = UF

[Command]
name = "Fireball"
command = ~D, F, x
time = 10

[Command]
name = "Fireball EX"
command = ~F, D, DF, x
time = 10

[Command]
name = "Cape EX"
command = ~F, D, DF, y
time = 10

[command]
name = "Cape"
command =  ~D, F, y
time = 10

[command]
name = "Super Jump Punch"
command =  ~D, F, z
time = 10

[command]
name = "Super Spin"
command =  ~D, B, x
time = 10

[command]
name = "Flip Kick"
command =  ~D, B, y
time = 10

[command]
name = "Luigi"
command =  ~D, B, z
time = 10

[Command]
name = "Iceball"
command = ~D, F, a
time = 10

[Command]
name = "Tanooki"
command = ~D, F, b
time = 10

[Command]
name = "Tanooki EX"
command = ~F, D, DF, b
time = 10

[Command]
name = "Rock Mario"
command = ~D, F, c
time = 10

[Command]
name = "Thunder"
command = ~D, B, a
time = 10

[Command]
name = "Drill"
command = ~D, B, b
time = 10

[Command]
name = "Yoshi"
command = ~D, B, c
time = 10

[command]
name = "Galactic Spin"
command =  ~F, F, a
time = 10

[command]
name = "Galactic Spin"
command =  ~F, F, b
time = 10

[command]
name = "Galactic Spin"
command =  ~F, F, c
time = 10

[command]
name = "Ground Pound"
command =  ~D, D, x
time = 10

[command]
name = "Ground Pound"
command =  ~D, D, y
time = 10

[command]
name = "Ground Pound"
command =  ~D, D, z
time = 10

[command]
name = "Slide"
command =  ~F, F, x
time = 10

[command]
name = "Slide"
command =  ~F, F, y
time = 10

[command]
name = "Slide"
command =  ~F, F, z
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

[Command]
name = "Super Jump"     ;Required (do not remove)
command = ~D, U
time = 10

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

;---------------------------------------------------------------------------
[State -1 ,ALL AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
v = 59
value = 1


[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*500)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*500)
trigger2 = roundstate != 2
v = 59
value = 0

;---------------------------------------------------------------------------
; Taunt AI
[State -1, Taunt AI]
type = ChangeState
value = 195+random%3
triggerall = var(59) != 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = roundstate = 3
trigger1 = win
trigger1 = prevstateno != [195,198]
;---------------------------------------------------------------------------
[State -1, AI powercharge]
type=changestate
value=7000
triggerall = !var(11)
triggerall = !var(12)
triggerall = !var(13)
triggerall = var(59) > 0
trigger1=roundstate=2&&statetype!=A&&power<3000&&ctrl
trigger1=random<50&&!inguarddist&&p2bodydist x>=100
;---------------------------------------------------------------------------
[State -1]
Type=Changestate
triggerall = AIlevel >= 5
triggerall= statetype != A
Triggerall=Inguarddist ; Guard when in guard distance
triggerall = var(59)  ; and the AI is on
triggerall = roundstate = 2
triggerall = random<var(50)*0.25
trigger1 = stateno!=[900,920]
Trigger1=ctrl ; and we have control
value=ifelse(p2bodydist X <= 70,ifelse(random>500,920,910),ifelse(random>500,900,ifelse(random>500,920,910)))
;---------------------------------------------------------------------------
[State -1];???
Type = ChangeState
Value = 1100
triggerall = AIlevel >= 5
triggerall = numhelper(1101) = 0
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType = A
TriggerAll = Ctrl
triggerall = !var(12)
triggerall = !var(40)
triggerall = fvar(5) = 1
triggerall = p2bodydist X = [0,270]
triggerall = p2bodydist Y = [-44,88]
triggerall = random<var(50)*0.9
trigger1 = PlayerIdExist(helper(33333333),var(18)) ;enemy projectile exists
trigger1 = PlayerID(helper(33333333),var(18)), pos y > -100 || PlayerID(helper(33333333),var(18)), vel y > 0 ; Avoid attempt to reflect projectiles that are to high. 100 = char height or reflector height, unless the enemy projectile is moving downwards.
trigger1 = PlayerID(helper(33333333),var(18)), vel x != 0 ; Avoid "Division by Zero" debug overflow
;distance / velocity = time = startup time + active 
trigger1 = (((PlayerID(helper(33333333),var(18)), pos x - pos x )* facing) - const(size.ground.front) - PlayerID(helper(33333333),var(18)),const(size.ground.front)) / (PlayerId(helper(33333333),var(18)),vel x) = [5,22] ; 5 = startup time, 22 = active ; [0,5] for last second reflect.

[State -1];???
Type = ChangeState
Value = 1100
triggerall = AIlevel >= 5
triggerall = numhelper(1101) = 0
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType != A
TriggerAll = Ctrl
triggerall = !var(12)
triggerall = !var(40)
triggerall = fvar(5) = 1
triggerall = p2bodydist X = [0,270]
triggerall = random<var(50)*0.9
trigger1 = PlayerIdExist(helper(33333333),var(18)) ;enemy projectile exists
trigger1 = PlayerID(helper(33333333),var(18)), pos y > -100 || PlayerID(helper(33333333),var(18)), vel y > 0 ; Avoid attempt to reflect projectiles that are to high. 100 = char height or reflector height, unless the enemy projectile is moving downwards.
trigger1 = PlayerID(helper(33333333),var(18)), vel x != 0 ; Avoid "Division by Zero" debug overflow
;distance / velocity = time = startup time + active 
trigger1 = (((PlayerID(helper(33333333),var(18)), pos x - pos x )* facing) - const(size.ground.front) - PlayerID(helper(33333333),var(18)),const(size.ground.front)) / (PlayerId(helper(33333333),var(18)),vel x) = [5,22] ; 5 = startup time, 22 = active ; [0,5] for last second reflect.
;---------------------------------------------
[State -1];???
Type = ChangeState
Value = 120
triggerall = AIlevel = [6,8]
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType = A
TriggerAll = Ctrl
TriggerAll = IfElse(Facing*(EnemyNear(floor(fvar(36))),Facing)*P2Dist X >0,(Abs(P2Dist X) <= 60),1)
triggerall = !var(12)
triggerall = !var(40)
triggerall = fvar(5) = 1
Trigger1 = InGuardDist || (Facing*(EnemyNear(floor(fvar(36))),Facing)*P2Dist X >0 && P2MoveType = A)
Trigger1 = EnemyNear(floor(fvar(36))),HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear(floor(fvar(36))),HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger2 = InGuardDist || Facing*(EnemyNear(floor(fvar(36))),Facing)*P2Dist X >0 
Trigger2 = Enemy,NumProj > 0 
Trigger3 = EnemyNear(floor(fvar(36))),HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear(floor(fvar(36))),HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger3 = P2BodyDist X < 0
Trigger4 = EnemyNear(floor(fvar(36))),Vel X > 0
Trigger4 = EnemyNear(floor(fvar(36))),HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear(floor(fvar(36))),HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger5 = Enemy,NumHelper
Trigger5 = InGuardDist

[State -1];???
Type = ChangeState
Value = 120
triggerall = AIlevel = [6,8]
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType != A
TriggerAll = Ctrl
TriggerAll = IfElse(Facing*(EnemyNear(floor(fvar(36))),Facing)*P2Dist X >0,(Abs(P2Dist X) <= 60),1)
triggerall = !var(12)
triggerall = !var(40)
triggerall = fvar(5) = 1
Trigger1 = InGuardDist || (Facing*(EnemyNear(floor(fvar(36))),Facing)*P2Dist X >0 && P2MoveType = A)
Trigger1 = EnemyNear(floor(fvar(36))),HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear(floor(fvar(36))),HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger2 = InGuardDist || Facing*(EnemyNear(floor(fvar(36))),Facing)*P2Dist X >0 
Trigger2 = Enemy,NumProj > 0
Trigger3 = EnemyNear(floor(fvar(36))),HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear(floor(fvar(36))),HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger3 = P2BodyDist X < 0
Trigger4 = EnemyNear(floor(fvar(36))),Vel X > 0
Trigger4 = EnemyNear(floor(fvar(36))),HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear(floor(fvar(36))),HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger5 = Enemy,NumHelper
Trigger5 = InGuardDist
;---------------------------------------------------------------------------
[State -1, AI Stand Guarding]
type = ChangeState
value = 130
triggerall = AIlevel = [3,5]
triggerall = stateno != 130
triggerall = fvar(5) = 1
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = p2statetype != C
triggerall = inguarddist
trigger1 = statetype != A && ctrl

[State -1, AI Crouch Guarding]
type = ChangeState
value = 131
triggerall = AIlevel = [3,5]
triggerall = stateno != 131
triggerall = fvar(5) = 1
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = p2statetype = C
triggerall = inguarddist
trigger1 = statetype != A && ctrl

[State -1, AI Air Guarding]
type = ChangeState
value = 132
triggerall = AIlevel = [3,5]
triggerall = stateno != 132
triggerall = fvar(5) = 1
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = inguarddist
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = numpartner
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 40
trigger1 = enemynear,statetype = A
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1 = AILevel >= 6
trigger1 = random<var(50)*2.0
trigger2 = random<var(50)*2.0
trigger2 = enemynear,statetype = A
trigger2 = enemynear,movetype = H
trigger2 = AILevel > 5
;---------------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
value = ifelse(random>500,3800,3700)
triggerall = fvar(24) <= 1
triggerall = AILevel >= 6
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 42
triggerall = numtarget(3100)
triggerall = NumHelper(3701) = 0 || numhelper(3801) = 0
triggerall = power >= 1000
trigger1 = p2bodydist X > 120

[State -1, AI Jump]
type = ChangeState
value = 103
triggerall = AILevel >= 6
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 103
triggerall = numtarget(3100)
trigger1 = p2bodydist X = [10,120]

[State -1, AI Jump]
type = ChangeState
value = 1400
triggerall = AILevel >= 6
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [1400,1405]
triggerall = numtarget(3100)
trigger1 = p2bodydist X < 10

[State -1, AI Jump]
type = ChangeState
value = 44
triggerall = AILevel >= 6
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 44
triggerall = fvar(26) 
trigger1 = p2bodydist X = [-100,100]

[State -1, AI Jump]
type = ChangeState
value = 730
triggerall = AILevel >= 6
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 730
triggerall = prevstateno = 44
triggerall = backedgebodydist <= 5
trigger1 = p2movetype = H
;---------------------------------------------------------------------------
;AI Run Fwd
[State -1, AI stumble really fast to the enemy]
type = ChangeState
value = 100
triggerall = !fvar(26)
triggerall = !numhelper(1614)
Triggerall=!Inguarddist
triggerall = var(59)
triggerall = roundstate = 2
triggerall = AILevel >= 3
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [100,101]
triggerall = p2movetype != A
triggerall = enemynear, numproj = 0
trigger1 = p2bodydist x >= 50
trigger1 = random<var(50)*0.2
trigger2 = p2movetype = H && p2bodydist x >= 15
trigger2 = random<var(50)*1.0
;-------------------------------------------------------------------------
[State -1, AI Guard Counter Attack]
type = ChangeState
value = 750
triggerall = var(59) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = stateno = [150,153] 
triggerall = power >= 1000
triggerall = p2bodydist x <= 70
triggerall = p2bodydist Y >= -68
Trigger1 = Random<=var(50)*0.16

[State -1, AI Guard Counter PARRY]
type = ChangeState
value = 751
triggerall = var(59) > 0 && roundstate = 2
triggerall = statetype != A
triggerall = stateno = 150 || stateno = 152
triggerall = p2bodydist x <= 70
triggerall = p2bodydist Y >= -68
Trigger1 = Random<=var(50)*0.18
;---------------------------------------------------------------------------
[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 999

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,10])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 210
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,10])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 230
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,10])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 240
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,10])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 400
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 410
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 430
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
[State -1,AI Stand Light Punch]
type = ChangeState
value = 440
triggerall = !numhelper(1614)
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 600
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,100])
trigger1 = (p2bodydist Y = [-44,88])

;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 610
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,100])
trigger1 = (p2bodydist Y = [-44,88])

;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 630
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,100])
trigger1 = (p2bodydist Y = [-44,88])

;---------------------------------------------------------------------------
[State -1,AI Stand Medium Punch]
type = ChangeState
value = 640
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = random<var(50)*1.1
trigger1 = (P2BodyDist X = [0,100])
trigger1 = (p2bodydist Y = [-44,88])

;===========================================================================
;AI Throw
[State -1, AI throw them]
type = ChangeState
value = 800
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
triggerall = enemynear,prevstateno != 5120
trigger1 = p2bodydist x <= 24
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = random<var(50)*0.5
trigger2 = enemynear, stateno >= 120 && enemynear, stateno <= 155 && p2bodydist x <= 24
trigger2 = p2statetype != A
trigger2 = p2movetype != H
trigger2 = random<var(50)*1.0
trigger2 = AILevel >= 5

;AI Throw (AIR)
[State -1, AI throw them (AIR)]
type = ChangeState
value = 830
triggerall = var(59) && roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = enemynear,stateno != [1120,1122]
triggerall = enemynear,stateno != 5120
triggerall = enemynear,prevstateno != 5120
trigger1 = p2bodydist x <= 24
trigger1 = p2bodydist Y = [-44,88]
trigger1 = p2movetype != H
trigger1 = p2statetype = A
trigger1 = random<var(50)*1.0
trigger2 = (enemynear, stateno >= 120) && (enemynear, stateno <= 155) && (p2bodydist x <= 24) && (p2bodydist Y = [-44,88])
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = random<var(50)*1.0
trigger2 = AILevel >= 5
;---------------------------------------------------------------------------
;OHKO
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numhelper(3607) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,100])
triggerall = (prevstateno != 5120)  && (statetype != A)
trigger1 = (power >= 3000) &&  (statetype != A)
triggerall = Life <= 250
value = 3600
;---------------------------------------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !fvar(25)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2movetype != H) 
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [60,115]) && (statetype != A)
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !fvar(25)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (p2statetype != L) && (p2movetype != H) 
trigger1 = (p2bodydist X = [0,50]) && (p2bodydist Y = [-44,88]) && (prevstateno != 5120) && (statetype = A)
trigger1 = (power >= 1000) && (random = [60,115]) && (statetype = A)
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !fvar(23)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2movetype != H) 
trigger1 = (p2bodydist X <= 35) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [60,115]) && (statetype != A)
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !var(56)
triggerall = !numhelper(1614)
triggerall = fvar(24) <= 1
triggerall = (roundstate = 2) && (var(59) != 0) && (power >= 1000) 
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
triggerall = numhelper(3701) = 0
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (random = [60,115]) && (statetype != A) && (p2movetype != H) 
trigger2 = (random = [60,115]) && (p2statetype = A) && (p2movetype = H) 
value = 3700

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !var(56)
triggerall = fvar(24) <= 1
triggerall = (roundstate = 2) && (var(59) != 0) && (power >= 1000) 
triggerall = (Ctrl) && (Statetype = A) && (p2statetype != L) 
triggerall = numhelper(3701) = 0
trigger1 = (p2bodydist X = [0,270]) && (p2bodydist Y = [-105,75]) && (prevstateno != 5120) && (statetype = A)
trigger1 = (random = [60,115]) && (statetype = A) && (p2movetype != H)
trigger2 = (p2bodydist X = [0,270]) && (p2bodydist Y = [-105,75])  
trigger2 = (random = [60,115]) && (p2statetype = A) && (p2movetype = H) 
value = 3700

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2movetype != H) 
triggerall = numhelper(3801) = 0
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [60,115]) && (statetype != A)
value = 3800

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !numhelper(1614)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
triggerall = numhelper(3202) = 0
triggerall = numhelper(3206) = 0
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1500) && (random = [60,115]) && (statetype != A)
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2movetype != H) 
triggerall = numhelper(3301) = 0
triggerall = numhelper(3302) = 0
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1500) && (random = [60,115]) && (statetype != A)
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !var(11)
triggerall = !var(12)
triggerall = !var(13)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2movetype != H) 
triggerall = numhelper(3401) = 0
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 3000) && (random = [60,115]) && (statetype != A)
value = 3400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !numhelper(1614)
triggerall = (roundstate = 2) && (var(59) != 0) && (power >= 2000)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
triggerall = numhelper(3501) = 0
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (random = [60,115]) && (statetype != A) && (p2movetype != H) 
trigger2 = (random = [60,115]) && (p2statetype = A) && (p2movetype = H) 
value = 3500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (power >= 2000)
triggerall = (Ctrl) && (Statetype = A) && (p2statetype != L) 
triggerall = numhelper(3501) = 0
trigger1 = (p2bodydist X = [0,270]) && (p2bodydist Y = [-125,125]) && (prevstateno != 5120) && (statetype = A)
trigger1 = (random = [60,115]) && (statetype = A) && (p2movetype != H)
trigger2 = (p2bodydist X = [0,270]) && (p2bodydist Y = [-125,125]) 
trigger2 = (random = [60,115]) && (p2statetype = A) && (p2movetype = H)
value = 3500


;---------------------------------------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X = [90,270]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135])
trigger1 = (p2bodydist X = [20,270]) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = power >= 500
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numhelper(1101) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135]) && (p2bodydist Y = [-44,88])
trigger1 = (p2bodydist X = [0,70]) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !fvar(22)
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X = [0,70]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1113

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !fvar(22)
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135]) && (p2bodydist Y = [-44,88])
trigger1 = (p2bodydist X = [0,70]) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1113

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 30) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 45) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1299

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135])
trigger1 = (p2bodydist X = [0,60]) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1299

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 35) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = p3name != "Super Better Luigi V3"
triggerall = enemy,name != "Super Better Luigi V3"
triggerall = numhelper(1501) = 0
triggerall = numhelper(2301) = 0
triggerall = numhelper(2310) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X = [120,270]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numhelper(1602) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1600

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numhelper(1602) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135])
trigger1 = (p2bodydist X <= 170) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1609

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 220) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1700

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 220) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1703

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numhelper(1807) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1800

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numhelper(2101) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) 
trigger1 = random = [50,135]
trigger1 = (p2bodydist X <= 250) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger2 = random<var(50)*1.1
trigger2 = (p2bodydist X <= 210) && (prevstateno != 5120) && (p2statetype = L) && (statetype != A)
value = 2100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 2200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 2200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = p3name != "Super Better Yoshi" 
triggerall = enemy,name != "Super Better Yoshi"
triggerall = numhelper(1501) = 0
triggerall = numhelper(2301) = 0
triggerall = numhelper(2310) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X = [120,270]) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 2300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135])
trigger1 = (p2bodydist X <= 20) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 2400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 90) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 2500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = NumHelper(2604) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 65) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 2600

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = NumHelper(2604) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,135])
trigger1 = (p2bodydist X = [0,65]) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 2600
;===========================================================================
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = stateno != 110 && stateno != 115 && stateno != 116
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) 
triggerall = (p2bodydist X <= 250) && (p2statetype != L)
trigger1 = stateno = 731 && time >= 20
value = 110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = stateno != 110 && stateno != 115 && stateno != 116
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,100])
triggerall = (p2bodydist X <= 250) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (Statetype = A)
value = 110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = stateno != 110 && stateno != 115 && stateno != 116
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [50,100])
triggerall = (p2bodydist X <= 65) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (Statetype = A)
value = 115
;===========================================================================
[State -1,Dodge]
type = changestate
value = 920
triggerall = Var(59) <= 0
triggerall = command = "Dodge"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Dodge]
type = changestate
value = 910
triggerall = Var(59) <= 0
triggerall = command = "Dodge"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Dodge]
type = changestate
value = 900
triggerall = Var(59) <= 0
triggerall = command = "Dodge"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
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
;Dash Fwd
[State -1, Air]
type = ChangeState
value = 110
triggerall = stateno != 110 && stateno != 115 && stateno != 116
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dash Back
[State -1, Air]
type = ChangeState
value = 115
triggerall = stateno != 110 && stateno != 115 && stateno != 116
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 2000
trigger1 = Command = "Super Jump"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 420 || stateno = 421
trigger2 = (movecontact) && (command = "holdup")
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 7000
triggerall = !var(11)
triggerall = !var(12)
triggerall = !var(13)
triggerall = Var(59) <= 0
triggerall = power < 3000
triggerall = command = "hold_y"
triggerall = command = "hold_b"
trigger1 = ctrl && statetype != A
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
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
;===========================================================================
; AIR Throw
[State -1, AIR Throw]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H
;----------------------------------------------------------------------------
;OHKO
;SUPERSTAR MARIO
[State -1, SUPERSTAR MARIO]
type = ChangeState
value = 3600
triggerall = Life <= 250
triggerall = Power >= 3000
triggerall = numhelper(3607) = 0
triggerall = command = "SUPERSTAR MARIO"
triggerall = statetype = S
trigger1 = ctrl
;===========================================================================
;HYPERS
;---------------------------------------------------------------------------
;Super Hammer
[State -1, Super Hammer]
type = ChangeState
value = 3000
triggerall = !fvar(25)
Triggerall = var(59) <= 0
triggerall = power>=1000
triggerall = command = "Super Hammer"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 430 && movecontact && time >=2
trigger9 = stateno = 440 && movecontact && time >=2
trigger10 = stateno = 1300 && movecontact && time >= 10
trigger11 = stateno = 2500 && movecontact && time >= 6
trigger12 = stateno = 2601 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Super Hammer (AIR)
[State -1, Super Hammer (AIR)]
type = ChangeState
value = 3000
triggerall = !fvar(25)
Triggerall = var(59) <= 0
triggerall = power>=1000
triggerall = command = "Super Hammer"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
trigger6 = stateno = 1303 && movecontact && time >= 10
trigger7 = stateno = 26010 && movecontact && time >= 2
;---------------------------------------------------------------------------
;SMBZ-Styled Combo(?)
[State -1, SMBZ-Styled Combo(?)]
type = ChangeState
value = 3100
triggerall = !fvar(23)
Triggerall = var(59) <= 0
triggerall = power>=1000
triggerall = command = "SMBZ-Styled Combo(?)"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 430 && movecontact && time >=2
trigger9 = stateno = 440 && movecontact && time >=2
trigger10 = stateno = 1300 && movecontact && time >= 10
trigger11 = stateno = 2500 && movecontact && time >= 6
trigger12 = stateno = 2601 && movecontact && time >= 2
;---------------------------------------------------------------------------
;F.L.U.D.D Overdrive
[State -1, F.L.U.D.D Overdrive]
type = ChangeState
value = 3700
triggerall = fvar(24) <= 1
Triggerall = var(59) <= 0
triggerall = power>=1000
triggerall = command = "F.L.U.D.D Overdrive"
triggerall = statetype != A
triggerall = NumHelper(3701) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;F.L.U.D.D Overdrive (AIR)
[State -1, F.L.U.D.D Overdrive (AIR)]
type = ChangeState
value = 3700
triggerall = fvar(24) <= 1
Triggerall = var(59) <= 0
triggerall = power>=1000
triggerall = command = "F.L.U.D.D Overdrive"
triggerall = statetype = A
triggerall = NumHelper(3701) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Boomerang Cappy
[State -1, Boomerang Cappy]
type = ChangeState
value = 3800
Triggerall = var(59) <= 0
triggerall = power>=1000
triggerall = command = "Boomerang Cappy"
triggerall = statetype != A
triggerall = NumHelper(3801) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hammer Mario
[State -1, Hammer Mario]
type = ChangeState
value = 3200
Triggerall = var(59) <= 0
triggerall = power>=1500
triggerall = command = "Hammer Mario"
triggerall = statetype != A
triggerall = NumHelper(3202) = 0
triggerall = NumHelper(3206) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Heavy Thunderstorm
[State -1, Heavy Thunderstorm]
type = ChangeState
value = 3300
Triggerall = var(59) <= 0
triggerall = power>=1500
triggerall = command = "Heavy Thunderstorm"
triggerall = statetype != A
triggerall = NumHelper(3301) = 0
triggerall = NumHelper(3302) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Rainbow Star
[State -1, Rainbow Star]
type = ChangeState
value = 3400
triggerall = !var(11)
triggerall = !var(12)
triggerall = !var(13)
Triggerall = var(59) <= 0
triggerall = power>=3000
triggerall = command = "Rainbow Star"
triggerall = statetype != A
triggerall = NumHelper(3401) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Mario Finale
[State -1, Mario Finale]
type = ChangeState
value = 3500
Triggerall = var(59) <= 0
triggerall = power>=2000
triggerall = command = "Mario Finale"
triggerall = statetype != A
triggerall = NumHelper(3501) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Mario Finale (AIR)
[State -1, Mario Finale (AIR)]
type = ChangeState
value = 3500
Triggerall = var(59) <= 0
triggerall = power>=2000
triggerall = command = "Mario Finale"
triggerall = statetype = A
triggerall = NumHelper(3501) = 0
trigger1 = ctrl
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = !var(32)
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 450 ;Except for sweep kick
trigger2 = movecontact
var(9) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(10) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619]) || (stateno = [630,699])
trigger2 = stateno != 620 ;Except for sweep kick
trigger2 = movecontact
var(10) = 1

;---------------------------------------------------------------------------
;Fireball EX
[State -1, Fireball EX]
type = ChangeState
value = 1010
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = power>=500
triggerall = Var(59) <= 0
triggerall = command = "Fireball EX"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fireball (EX AIR)
[State -1, Fireball (EX AIR)]
type = ChangeState
value = 1010
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = power>=500
triggerall = Var(59) <= 0
triggerall = command = "Fireball EX"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = var(10) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = Var(59) <= 0
triggerall = command = "Fireball"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fireball (AIR)
[State -1, Fireball (AIR)]
type = ChangeState
value = 1000
triggerall = NumHelper(1001) = 0
triggerall = numhelper(1011) = 0
triggerall = Var(59) <= 0
triggerall = command = "Fireball"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = var(10) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Cape EX
[State -1, Cape EX]
type = ChangeState
value = 1113
triggerall = !fvar(22)
triggerall = power>=500
triggerall = Var(59) <= 0
triggerall = command = "Cape EX"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9)
trigger3 = stateno = 750 && movecontact && time >= 25
;---------------------------------------------------------------------------
;Cape EX (AIR)
[State -1, Cape EX (AIR)]
type = ChangeState
value = 1113
triggerall = !fvar(22)
triggerall = power>=500
triggerall = Var(59) <= 0
triggerall = command = "Cape EX"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = var(10)
;---------------------------------------------------------------------------
;Cape
[State -1, Cape]
type = ChangeState
value = 1100
triggerall = NumHelper(1101) = 0
triggerall = Var(59) <= 0
triggerall = command = "Cape"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
trigger10 = stateno = 750 && movecontact && time >= 25
;---------------------------------------------------------------------------
;Cape (AIR)
[State -1, Cape (AIR)]
type = ChangeState
value = 1100
triggerall = NumHelper(1101) = 0
triggerall = Var(59) <= 0
triggerall = command = "Cape"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
;Super Jump Punch
[State -1, Super Jump Punch]
type = ChangeState
value = 1200
triggerall = Var(59) <= 0
triggerall = command = "Super Jump Punch"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
trigger10 = stateno = 1300 && movecontact && time >= 10
trigger11 = stateno = 750 && movecontact && time >=28
trigger12 = stateno = 2500 && movecontact && time >= 6
trigger13 = stateno = 2601 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Super Jump Punch (AIR)
[State -1, Super Jump Punch (AIR)]
type = ChangeState
value = 1200
triggerall = Var(59) <= 0
triggerall = command = "Super Jump Punch"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
trigger6 = stateno = 1701 && movecontact && time >= 2
trigger7 = stateno = 1303 && movecontact && time >= 4
trigger8 = stateno = 26010 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Super Spin
[State -1, Super Spin]
type = ChangeState
value = ifelse(stateno=751,1298,1299)
triggerall = Var(59) <= 0
triggerall = command = "Super Spin"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
trigger10 = stateno = 750 && movecontact && time >=28
;---------------------------------------------------------------------------
;Super Spin (AIR)
[State -1, Super Spin (AIR)]
type = ChangeState
value = 1299
triggerall = Var(59) <= 0
triggerall = command = "Super Spin"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
;Flip Kick
[State -1, Flip Kick]
type = ChangeState
value = ifelse(stateno=751,1399,1400)
triggerall = Var(59) <= 0
triggerall = command = "Flip Kick"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
trigger10 = stateno = 1300 && movecontact && time >= 10
trigger11 = stateno = 1200 && movecontact && time >= 2
trigger12 = stateno = 750 && movecontact && time >=28
trigger13 = stateno = 2500 && movecontact && time >= 6
trigger14 = stateno = 2601 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Flip Kick (AIR)
[State -1, Flip Kick (AIR)]
type = ChangeState
value = 1400
triggerall = Var(59) <= 0
triggerall = command = "Flip Kick"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
trigger6 = stateno = 1201 && movecontact && time >= 2
trigger7 = stateno = 1701 && movecontact && time >= 2
trigger8 = stateno = 1303 && movecontact && time >= 4
trigger9 = stateno = 26010 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Luigi
[State -1, Luigi]
type = ChangeState
value = 1500
triggerall = p3name != "Super Better Luigi V3"
triggerall = enemy,name != "Super Better Luigi V3"
triggerall = Var(59) <= 0
triggerall = command = "Luigi"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(1501) = 0
triggerall = numhelper(2301) = 0
triggerall = numhelper(2310) = 0
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Iceball
[State -1, Iceball]
type = ChangeState
value = 1600
triggerall = NumHelper(1602) = 0
triggerall = Var(59) <= 0
triggerall = command = "Iceball"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Iceball (AIR)
[State -1, Iceball (AIR)]
type = ChangeState
value = 1609
triggerall = NumHelper(1602) = 0
triggerall = Var(59) <= 0
triggerall = command = "Iceball"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(10) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Tanooki EX
[State -1, Tanooki EX]
type = ChangeState
value = 1703
triggerall = power>=500
triggerall = Var(59) <= 0
triggerall = command = "Tanooki EX"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
trigger10 = stateno = 1300 && movecontact && time >= 10
trigger11 = stateno = 750 && movecontact && time >=28
trigger12 = stateno = 2500 && movecontact && time >= 6
trigger13 = stateno = 2601 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Tanooki (EX AIR)
[State -1, Tanooki (EX AIR)]
type = ChangeState
value = 1703
triggerall = power>=500
triggerall = Var(59) <= 0
triggerall = command = "Tanooki EX"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
trigger6 = stateno = 1303 && movecontact && time >= 10
trigger4 = stateno = 26010 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Tanooki
[State -1, Tanooki]
type = ChangeState
value = 1700
triggerall = Var(59) <= 0
triggerall = command = "Tanooki"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
trigger10 = stateno = 1300 && movecontact && time >= 10
trigger11 = stateno = 750 && movecontact && time >=28
trigger12 = stateno = 2500 && movecontact && time >= 6
trigger13 = stateno = 2601 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Tanooki (AIR)
[State -1, Tanooki (AIR)]
type = ChangeState
value = 1700
triggerall = Var(59) <= 0
triggerall = command = "Tanooki"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
trigger6 = stateno = 1303 && movecontact && time >= 10
trigger7 = stateno = 26010 && movecontact && time >= 2
;---------------------------------------------------------------------------
;Rock Mario
[State -1, Rock Mario]
type = ChangeState
value = 1800
triggerall = numhelper(1807) = 0
triggerall = Var(59) <= 0
triggerall = command = "Rock Mario"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Thunder
[State -1, Thunder]
type = ChangeState
value = 2100
triggerall = NumHelper(2101) = 0
triggerall = Var(59) <= 0
triggerall = command = "Thunder"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Drill
[State -1, Drill]
type = ChangeState
value = 2200
triggerall = Var(59) <= 0
triggerall = command = "Drill"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Drill (AIR)
[State -1, Drill (AIR)]
type = ChangeState
value = 2200
triggerall = Var(59) <= 0
triggerall = command = "Drill"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
trigger6 = stateno = 620 && movecontact && time >=2
;---------------------------------------------------------------------------
;Yoshi
[State -1, Yoshi]
type = ChangeState
value = 2300
triggerall = p3name != "Super Better Yoshi" 
triggerall = enemy,name != "Super Better Yoshi" 
triggerall = Var(59) <= 0
triggerall = command = "Yoshi"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(1501) = 0
triggerall = numhelper(2301) = 0
triggerall = numhelper(2310) = 0
trigger2 = var(9) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Ground Pound
[State -1, Ground Pound]
type = ChangeState
value = 2400
triggerall = Var(59) <= 0
triggerall = command = "Ground Pound"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(10) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Slide
[State -1, Slide]
type = ChangeState
value = 2500
triggerall = Var(59) <= 0
triggerall = command = "Slide"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9)
trigger3 = stateno = 1300 && movecontact && time >= 10
trigger4 = stateno = 2601 && movecontact && time >= 2
trigger5 = stateno = 750 && movecontact && time >= 28
;---------------------------------------------------------------------------
;Galactic Spin
[State -1, Galactic Spin]
type = ChangeState
value = 2600
triggerall = NumHelper(2604) = 0
triggerall = Var(59) <= 0
triggerall = command = "Galactic Spin"
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl
trigger2 = var(9) ;Use combo condition (above)
trigger3 = stateno = 1300 && movecontact && time >= 10
trigger4 = stateno = 750 && movecontact && time >= 28
;---------------------------------------------------------------------------
;Galactic Spin (AIR)
[State -1, Galactic Spin (AIR)]
type = ChangeState
value = 2600
triggerall = NumHelper(2604) = 0
triggerall = Var(59) <= 0
triggerall = command = "Galactic Spin"
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl
trigger2 = var(10) ;Use combo condition (above)
trigger3 = stateno = 1303 && movecontact && time >= 10
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Var(59) <= 0
triggerall = command = "s"
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 197
triggerall = Var(59) <= 0
triggerall = command = "s"
triggerall = command = "holddown" 
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 196
triggerall = Var(59) <= 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
[State -1, Guard Counter Attack]
type = ChangeState
value = 750
triggerall = !var(59)
triggerall = command = "GuardCancel"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [150,153] 
;---------------------------------------------------------------------------
[State -1, Guard Counter Parry]
type = ChangeState
value = 751
triggerall = !var(59)
triggerall = command = "fwd"
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
trigger4 = stateno = 400 && movecontact && time >=2
trigger5 = stateno = 430 && movecontact && time >=2
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
trigger4 = stateno = 240 && movecontact && time >=2
trigger5 = stateno = 210 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 430 && movecontact && time >=2
trigger9 = stateno = 440 && movecontact && time >=2
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = Var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 400 && movecontact && time >=2
trigger6 = stateno = 410 && movecontact && time >=2
trigger7 = stateno = 430 && movecontact && time >=2
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >= 2
trigger7 = stateno = 410 && movecontact && time >= 2
trigger8 = stateno = 430 && movecontact && time >= 2
trigger9 = stateno = 440 && movecontact && time >= 2
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 200 && movecontact && time >=2
trigger5 = stateno = 210 && movecontact && time >=2
trigger6 = stateno = 230 && movecontact && time >=2
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = ifelse(p2bodydist X < 15,420,421)
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 440 && movecontact
trigger6 = stateno = 200 && movecontact && time >=2
trigger7 = stateno = 210 && movecontact && time >=2
trigger8 = stateno = 230 && movecontact && time >=2
trigger9 = stateno = 240 && movecontact && time >=2
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 200 && movecontact && time >=2
trigger4 = stateno = 230 && movecontact && time >=2
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = Var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 200 && movecontact && time >=2
trigger6 = stateno = 210 && movecontact && time >=2
trigger7 = stateno = 230 && movecontact && time >=2
trigger8 = stateno = 240 && movecontact && time >=2
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 440 && movecontact
trigger6 = stateno = 200 && movecontact && time >=2
trigger7 = stateno = 210 && movecontact && time >=2
trigger8 = stateno = 230 && movecontact && time >=2
trigger9 = stateno = 240 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = Var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 630 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = Var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = Var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 610 && movecontact && time >=2
trigger4 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Lie Down Forward Recovery Roll]
type = ChangeState
value = 910
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
[State -1, Lie Down Backward Recovery Roll]
type = ChangeState
value = 920
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = stateno = 5120
trigger1 = alive = 1
;---------------------------------------------------------------------------
;Wall jump
[State -1, Wall jump]
type = ChangeState
value = 730
triggerall = !var(59)
triggerall = command = "walljumpfwd"
triggerall = backedgebodydist <= 0
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;Wall jump
[State -1, Wall jump]
type = ChangeState
value = 735
triggerall = !var(59)
triggerall = command = "walljumpback"
triggerall = frontedgebodydist <= 0
triggerall = statetype = A
trigger1 = ctrl 

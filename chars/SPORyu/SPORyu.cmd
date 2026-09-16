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
;-| Hyper Motions |-----------------------------------------------------------

[Command]
name = "UltraPissed"     ;Required (do not remove)
command = x,x,F,a,z
time = 50

[Command]
name = "UltraFail"     ;Required (do not remove)
command = ~D, F, D, F, a
time = 30

[Command]
name = "UltraFail"     ;Required (do not remove)
command = ~D, F, D, F, b
time = 30

[Command]
name = "UltraFail"     ;Required (do not remove)
command = ~D, F, D, F, c
time = 30

[Command]
name = "TatsuFail_lv3"     ;Required (do not remove)
command = ~D, B, D, B, c
time = 30


[Command]
name = "TatsuFail_lv2"     ;Required (do not remove)
command = ~D, B, D, B, b
time = 30

[Command]
name = "TatsuFail_lv1"     ;Required (do not remove)
command = ~D, B, D, B, a
time = 30

[Command]
name = "Fail_lv1"     ;Required (do not remove)
command = ~D, F, D, F, x
time = 30

[Command]
name = "Fail_lv2"     ;Required (do not remove)
command = ~D, F, D, F, y
time = 30

[Command]
name = "Fail_lv3"     ;Required (do not remove)
command = ~D, F, D, F, z
time = 30

;-| Special Motions |-----------------------------------------------------------
[Command]
name = "Outside_The_Screen_X"     ;Required (do not remove)
command = ~F, D, B, x
time = 20

[Command]
name = "Outside_The_Screen_Y"     ;Required (do not remove)
command = ~F, D, B, y
time = 20

[Command]
name = "Outside_The_Screen_Z"     ;Required (do not remove)
command = ~F, D, B, z
time = 20

[Command]
name = "Outside_The_Screen_EX"     ;Required (do not remove)
command = ~F, D, B, x+y
time = 20

[Command]
name = "Outside_The_Screen_EX"     ;Required (do not remove)
command = ~F, D, B, x+z
time = 20

[Command]
name = "Outside_The_Screen_EX"     ;Required (do not remove)
command = ~F, D, B, z+y
time = 20


[Command]
name = "ShoFail_x"     ;Required (do not remove)
command = ~F, D, DF, x
time = 15


[Command]
name = "ShoFail_y"     ;Required (do not remove)
command = ~F, D, DF, y
time = 15

[Command]
name = "ShoFail_z"     ;Required (do not remove)
command = ~F, D, DF, z
time = 15

[Command]
name = "ShoFail_ex"     ;Required (do not remove)
command = ~F, D, DF, x+y
time = 15


[Command]
name = "ShoFail_ex"     ;Required (do not remove)
command = ~F, D, DF, x+z
time = 15

[Command]
name = "ShoFail_ex"     ;Required (do not remove)
command = ~F, D, DF, y+z
time = 15

[Command]
name = "Fail_x"     ;Required (do not remove)
command = ~D, DF, F, x
time = 15


[Command]
name = "Fail_y"     ;Required (do not remove)
command = ~D, DF, F, y
time = 15

[Command]
name = "Fail_z"     ;Required (do not remove)
command = ~D, DF, F, z
time = 15

[Command]
name = "Fail_ex"     ;Required (do not remove)
command = ~D, DF, F, x+y
time = 15


[Command]
name = "Fail_ex"     ;Required (do not remove)
command = ~D, DF, F, x+z
time = 15

[Command]
name = "Fail_ex"     ;Required (do not remove)
command = ~D, DF, F, y+z
time = 15

[Command]
name = "S_Fail_x"     ;Required (do not remove)
command = ~B,D, F, x
time = 20

[Command]
name = "S_Fail_y"     ;Required (do not remove)
command = ~B,D, F, y
time = 20

[Command]
name = "S_Fail_z"     ;Required (do not remove)
command = ~B,D,F, z
time = 20

[Command]
name = "S_Fail_EX"     ;Required (do not remove)
command = ~B,D,F, x+y
time = 20

[Command]
name = "S_Fail_EX"     ;Required (do not remove)
command = ~B,D,F, y+z
time = 20

[Command]
name = "S_Fail_EX"     ;Required (do not remove)
command = ~B,D,F, x+z
time = 20

[Command]
name = "Tatsufail_EX"     ;Required (do not remove)
command = ~D,DB,B,a+b
time = 15

[Command]
name = "Tatsufail_EX"     ;Required (do not remove)
command = ~D,DB,B,b+c
time = 15


[Command]
name = "Tatsufail_EX"     ;Required (do not remove)
command = ~D,DB,B,a+c
time = 15

[Command]
name = "Tatsufail_a"     ;Required (do not remove)
command = ~D,DB,B,a
time = 15

[Command]
name = "Tatsufail_b"     ;Required (do not remove)
command = ~D,DB,B,b
time = 15

[Command]
name = "Tatsufail_c"     ;Required (do not remove)
command = ~D,DB,B,c
time = 15

[Command]
name = "Elite_Butt_Throw_a"     ;Required (do not remove)
command = ~F,D,DF,a
time = 15

[Command]
name = "Elite_Butt_Throw_b"     ;Required (do not remove)
command = ~F,D,DF,b
time = 15

[Command]
name = "Elite_Butt_Throw_c"     ;Required (do not remove)
command = ~F,D,DF,c
time = 15

[Command]
name = "Elite_Butt_Throw_EX"     ;Required (do not remove)
command = ~F,D,DF,a+b
time = 20

[Command]
name = "Elite_Butt_Throw_EX"     ;Required (do not remove)
command = ~F,D,DF,a+c
time = 20

[Command]
name = "Elite_Butt_Throw_EX"     ;Required (do not remove)
command = ~F,D,DF,b+c
time = 20
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
name = "powerup"
command = a+b
time = 1

[Command]
name = "holdpowerup"
command = /a+b
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
[State -1, ULTRA FAIL]
type = ChangeState
value = 3200
triggerall = command = "UltraPissed" && power >= 3000 && var(7) = 0
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,255]
trigger2 = !movecontact

[State -1, ULTRA FAIL]
type = ChangeState
value = 3500
triggerall = command = "UltraFail" && power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20


[State -1, YOU FAIL]
type = ChangeState
value = 3120-10*(power < 3000)-10*(power < 2000)
triggerall = command = "TatsuFail_lv3" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20


[State -1, YOU FAIL]
type = ChangeState
value = 3110-10*(power < 2000)
triggerall = command = "TatsuFail_lv2" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20


[State -1, YOU FAIL]
type = ChangeState
value = 3100
triggerall = command = "TatsuFail_lv1" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20

[State -1, YOU FAIL]
type = ChangeState
value = 3020-10*(power < 3000)-10*(power < 2000)
triggerall = command = "Fail_lv3" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20


[State -1, YOU FAIL]
type = ChangeState
value = 3010-10*(power < 2000)
triggerall = command = "Fail_lv2" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20

[State -1, YOU FAIL]
type = ChangeState
value = 3000
triggerall = command = "Fail_lv1" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2
trigger4 = hitdefattr = SC,SA && movecontact
trigger5 = projcontact1100 = 1, < 20
trigger6 = projcontact1010 = 1, < 20

[State -1, YOU FAIL]
type = ChangeState
value = 1330
triggerall = command = "Outside_The_Screen_EX" && power >= 500
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2


[State -1, YOU FAIL]
type = ChangeState
value = 1300+30*var(7)
triggerall = command = "Outside_The_Screen_X"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1310+20*var(7)
triggerall = command = "Outside_The_Screen_Y"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1320+10*var(7)
triggerall = command = "Outside_The_Screen_Z"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1280
triggerall = command = "Elite_Butt_Throw_EX" && power >= 500
trigger1 = statetype = S 
trigger1 = ctrl

[State -1, YOU FAIL]
type = ChangeState
value = 1250+30*var(7)
triggerall = command = "Elite_Butt_Throw_a"
trigger1 = statetype = S 
trigger1 = ctrl

[State -1, YOU FAIL]
type = ChangeState
value = 1260+20*var(7)
triggerall = command = "Elite_Butt_Throw_b"
trigger1 = statetype = S 
trigger1 = ctrl

[State -1, YOU FAIL]
type = ChangeState
value = 1270+10*var(7)
triggerall = command = "Elite_Butt_Throw_c"
trigger1 = statetype = S 
trigger1 = ctrl

[State -1, YOU FAIL]
type = ChangeState
value = 1380
triggerall = command = "Tatsufail_EX" && power >= 500
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = hitdefattr = A,NA && movecontact

[State -1, YOU FAIL]
type = ChangeState
value = 1350+30*var(7)
triggerall = command = "Tatsufail_a"
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = hitdefattr = A,NA && movecontact

[State -1, YOU FAIL]
type = ChangeState
value = 1350+30*var(7)
triggerall = command = "Tatsufail_b"
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = hitdefattr = A,NA && movecontact

[State -1, YOU FAIL]
type = ChangeState
value = 1350+30*var(7)
triggerall = command = "Tatsufail_c"
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = hitdefattr = A,NA && movecontact

[State -1, YOU FAIL]
type = ChangeState
value = 1230
triggerall = command = "Tatsufail_EX" && power >= 500
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1200+30*var(7)
triggerall = command = "Tatsufail_a"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1210+20*var(7)
triggerall = command = "Tatsufail_b"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1220+10*var(7)
triggerall = command = "Tatsufail_c"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1080
triggerall = command = "ShoFail_ex" && power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1050+30*var(7)
triggerall = command = "ShoFail_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1060+20*var(7)
triggerall = command = "ShoFail_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1070+10*var(7)
triggerall = command = "ShoFail_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2


[State -1, YOU FAIL]
type = ChangeState
value = 1140
triggerall = command = "S_Fail_EX" && power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1120+20*var(7)
triggerall = command = "S_Fail_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1110+30*var(7)
triggerall = command = "S_Fail_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1100+40*var(7)
triggerall = command = "S_Fail_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1030
triggerall = command = "Fail_ex" && power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1000+30*var(7)
triggerall = command = "Fail_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1010+20*var(7)
triggerall = command = "Fail_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 1020+10*var(7)
triggerall = command = "Fail_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA && movecontact && stateno != 255
trigger3 = hitdefattr = SC,NA && movecontact && stateno = 255 && hitcount = 2

[State -1, YOU FAIL]
type = ChangeState
value = 800
triggerall = command = "powerup"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno !=801

[State -1, YOU FAIL]
type = ChangeState
value = 750
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "a") && (command = "x") && (command = "holdfwd")

[State -1, YOU FAIL]
type = ChangeState
value = 760
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "a") && (command = "x") && (command != "holdfwd")

[State -1, YOU FAIL]
type = ChangeState
value = 700
triggerall = P2bodydist X <= 5
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = statetype = S
triggerall = p2stateno != 5120
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = (command = "y") && (command = "holdfwd")
trigger2 = (command = "z") && (command = "holdfwd")
trigger3 = (command = "y") && (command = "holdback")
trigger4 = (command = "z") && (command = "holdback")

[State -1, YOU FAIL]
type = ChangeState
value = 710
triggerall = P2bodydist X <= 5
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = statetype = S
triggerall = p2stateno != 5120
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = (command = "b") && (command = "holdfwd")
trigger2 = (command = "c") && (command = "holdfwd")
trigger3 = (command = "b") && (command = "holdback")
trigger4 = (command = "c") && (command = "holdback")

[State -1, YOU FAIL]
type = ChangeState
value = 300
triggerall = statetype != A
triggerall = ctrl
trigger1 = (command = "b") && (command = "holdfwd")

[State -1, YOU FAIL]
type = ChangeState
value = 310
triggerall = statetype != A
triggerall = ctrl
trigger1 = (command = "y") && (command = "holdfwd")

[State -1, YOU FAIL]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, YOU FAIL]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time = [4,9]
trigger3 = stateno = 630 && time = [5,10]
trigger4 = stateno = 635 && time = [5,10]

[State -1, YOU FAIL]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time = [4,9]
trigger3 = stateno = 630 && time = [5,10]
trigger4 = stateno = 635 && time = [5,10]
trigger5 = stateno = 640 && time = [7,12]
trigger6 = stateno = 645 && time = [7,12]

[State -1, YOU FAIL]
type = ChangeState
value = 630+5*(vel X != 0)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time = [4,9]

[State -1, YOU FAIL]
type = ChangeState
value = 640+5*(vel X != 0)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time = [4,9]
trigger3 = stateno = 630 && time = [5,10]
trigger4 = stateno = 635 && time = [5,10]

[State -1, YOU FAIL]
type = ChangeState
value = 650+5*(vel X != 0)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time = [4,9]
trigger3 = stateno = 630 && time = [5,10]
trigger4 = stateno = 635 && time = [5,10]
trigger5 = stateno = 640 && time = [7,12]
trigger6 = stateno = 645 && time = [7,12]

[State -1, YOU FAIL]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [5,9]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 400 && time = [3,8]


[State -1, YOU FAIL]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [5,9]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 400 && time = [3,8]
trigger6 = stateno = 430 && time = [4,9]


[State -1, YOU FAIL]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [5,9]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 410 && time = [5,10]
trigger6 = stateno = 440 && time = [10,15]
trigger7 = stateno = 400 && time = [3,8]
trigger8 = stateno = 430 && time = [4,9]


[State -1, YOU FAIL]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [5,9]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 400 && time = [3,8]

[State -1, YOU FAIL]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown" 
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [5,9]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 410 && time = [5,10]
trigger6 = stateno = 400 && time = [3,8]
trigger7 = stateno = 430 && time = [4,9]

[State -1, YOU FAIL]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [5,9]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 410 && time = [5,10]
trigger6 = stateno = 440 && time = [10,15]
trigger7 = stateno = 400 && time = [3,8]
trigger8 = stateno = 430 && time = [4,9]


[State -1, YOU FAIL]
type = ChangeState
value = 200 + 5*(p2bodydist X < 15)
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [4,8]

[State -1, YOU FAIL]
type = ChangeState
value = 210 + 5*(p2bodydist X < 15)
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [4,8]
trigger4 = stateno = 230 && time = [4,8]

[State -1, YOU FAIL]
type = ChangeState
value = 220 + 5*(p2bodydist X < 15)
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [4,8]
trigger4 = stateno = 210 && time = [8,15]
trigger5 = stateno = 215 && time = [7,12]
trigger6 = stateno = 240 && time = [9,14]
trigger7 = stateno = 245 && time = [5,10]

[State -1, YOU FAIL]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [4,8]
trigger4 = stateno = 230 && time = [4,8]

[State -1, YOU FAIL]
type = ChangeState
value = 240 + 5*(p2bodydist X < 20)
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [4,8]
trigger4 = stateno = 230 && time = [4,8]
trigger5 = stateno = 210 && time = [8,15]
trigger6 = stateno = 215 && time = [7,12]

[State -1, YOU FAIL]
type = ChangeState
value = 250 + 5*(p2bodydist X < 25)
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time = [4,8]
trigger3 = stateno = 205 && time = [4,8]
trigger4 = stateno = 210 && time = [8,15]
trigger5 = stateno = 215 && time = [7,12]
trigger6 = stateno = 240 && time = [9,14]
trigger7 = stateno = 245 && time = [5,10]
trigger8 = stateno = 220 && time = [11,15]
trigger9 = stateno = 225 && time = [8,13]

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

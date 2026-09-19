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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
; name = "5x"
; command = x, x, x, x, x
; time = 20
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;-| CPUアルゴリズム用コマンド |------------------------------

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpu10"
command = c,U,D,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu11"
command = a,U,D,F,F,B,B,B,D,U,U
time = 1
[Command]
name = "cpu12"
command = b,U,D,F,B,F,B,B,D,U,D
time = 1
[Command]
name = "cpu13"
command = c,U,D,B,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu14"
command = x,U,D,B,F,B,F,B,D,U,F
time = 1
[Command]
name = "cpu15"
command = y,U,D,F,F,B,B,B,D,U,a
time = 1
[Command]
name = "cpu16"
command = z,U,B,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu17"
command = s,U,D,B,F,B,F,B,D,U,c
time = 1
[Command]
name = "cpu18"
command = b,U,D,B,F,B,F,B,D,U,x
time = 1
[Command]
name = "cpu19"
command = c,U,D,F,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu20"
command = c,U,D,B,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu21"
command = a,U,D,F,F,s,B,B,D,U,U
time = 1
[Command]
name = "cpu22"
command = b,U,s,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu23"
command = c,U,D,B,F,B,F,s,D,U,B
time = 1
[Command]
name = "cpu24"
command = x,U,D,B,s,F,F,B,D,U,F
time = 1
[Command]
name = "cpu25"
command = y,U,D,s,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu26"
command = z,U,D,F,B,F,s,B,D,U,b
time = 1
[Command]
name = "cpu27"
command = s,U,D,s,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu28"
command = b,U,D,B,s,F,F,B,s,D,U,x
time = 1
[Command]
name = "cpu29"
command = c,U,D,F,s,B,F,B,D,U,y
time = 1
[Command]
name = "cpu30"
command = c,U,D,B,B,F,B,s,D,U,y
time = 1
[Command]
name = "cpuA"
command = y,U,D,B,F,B,F,D,U,z
time = 1
[Command]
name = "cpuB"
command = z,U,D,B,F,F,B,D,U,s
time = 1
[Command]
name = "cpuC"
command = U,D,F,F,B,B,D,U,a+x
time = 1
[Command]
name = "cpuD"
command = U,D,F,B,F,B,D,U,b+y
time = 1
[Command]
name = "cpuE"
command = U,D,B,F,B,F,D,U,c+z
time = 1
[Command]
name = "cpuF"
command = U,D,s,B,F,F,B,s,D,U
time = 1
[Command]
name = "cpuG"
command = y,U,D,B,F,B,F,D,U,z,s
time = 1
[Command]
name = "cpuH"
command = z,U,D,B,F,F,B,D,U,s,z
time = 1
[Command]
name = "cpuI"
command = U,D,F,F,B,B,D,U,a+x,s
time = 1
[Command]
name = "cpuJ"
command = U,D,F,B,F,B,D,U,b+y,s
time = 1
[Command]
name = "cpuK"
command = U,D,B,F,B,F,D,U,c+z,s
time = 1
[Command]
name = "cpuL"
command = U,D,s,B,F,F,B,s,D,U,z
time = 1
[Command]
name = "cpuM"
command = U,D,F,B,D,B,D,U,b+y,s
time = 1
[Command]
name = "cpuN"
command = U,D,B,F,D,F,D,U,c+z,s
time = 1
[Command]
name = "cpuO"
command = U,D,s,B,F,D,B,s,D,U,z
time = 1
[Command]
name = "cpuP"
command = a,U,D,F,F,B,B,D,U,U,s
time = 1
[Command]
name = "cpuQ"
command = b,U,D,F,B,F,B,D,U,D,s
time = 1
[Command]
name = "cpuR"
command = c,U,D,B,F,B,F,D,U,B,s
time = 1
[Command]
name = "cpuS"
command = x,U,D,B,F,F,B,D,U,F,s
time = 1
[Command]
name = "cpuT"
command = y,U,D,F,F,B,B,D,U,a,s
time = 1
[Command]
name = "cpuU"
command = z,U,D,F,B,F,B,D,U,b,s
time = 1
[Command]
name = "cpuV"
command = s,U,D,B,F,B,F,D,U,c,s
time = 1
[Command]
name = "cpuW"
command = b,U,D,B,F,F,B,D,U,x,s
time = 1
[Command]
name = "cpuX"
command = c,U,D,F,B,F,B,D,U,y,s
time = 1
[Command]
name = "cpuY"
command = c,U,D,B,B,F,B,D,U,y,s
time = 1
[Command]
name = "cpuZ"
command = c,U,D,B,B,F,B,D,U,y,s,s
time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
;
[Command]
name = "atusi"
command = B,D,D,F,D,D,x
time = 70

[Command]
name = "atusi"
command = B,D,D,F,D,D,y
time = 70

[Command]
name = "atusi"
command = c,c,c,c
time = 40


[Command]
name = "omoi"
command = ~D,F,x+y
time = 40

[Command]
name = "sakana"
command = ~B, D, F ,x+y

[Command]
name = "atemi"
command = ~F, DF, D ,DB, B, x+y

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "SmashKFUpperx"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 30

[Command]
name = "SmashKFUppery"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "bokix"
command = ~B,D,F, x
time =31

[Command]
name = "bokiy"
command = ~B,D,F, y
time =31

[Command]
name = "upper"
command = ~F, D, DF, b

[Command]
name = "BFx2"
command = ~B, F ,x


[Command]
name = "BFy2"
command = ~B, F ,y


[Command]
name = "BFx"
command = ~30$B, F ,x

[Command]
name = "BFy"
command = ~30$B, F ,y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "DDa"     ;Required (do not remove)
command = D, D ,x 
time = 20

[Command]
name = "DDa"     ;Required (do not remove)
command = D, D ,y
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

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1

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
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 4000
triggerall = command = "atusi"
triggerall = power >= 3000
triggerall = var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;キャンセル
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 1
triggerall = command = "a"
triggerall = var(11) = 1
triggerall = var(16) != 0
triggerall = movetype != H
trigger1 = stateno = [0,799]
trigger2 = stateno = [1000,1999]
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3700
triggerall = command = "atemi"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)

;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル2）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3500
triggerall = command = "sakana"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
;---------------------------------------------------------------------------
;忘れぬ想い
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6000
triggerall = command = "omoi"
triggerall = Power >= 3000
trigger1 = var(1)

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル2）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3200
triggerall = command = "SmashKFUpperx"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル2）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3201
triggerall = command = "SmashKFUppery"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 2500
triggerall = command = "a"
triggerall = numhelper(2500) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;ボキン
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "bokix"
trigger1 = var(1)
;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;ボキン
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1450
triggerall = command = "bokiy"
trigger1 = var(1)
;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;リュミリュミ
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "QCF_x"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;リュミリュミ
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1350
triggerall = command = "QCF_y"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;リュミリュミ
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "upper"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;木登りわはー
;カンフー・ウッパー（強）
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1150
triggerall = command = "BFy2"
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(11) = 1
;---------------------------------------------------------------------------
;木登りわはー
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1100
triggerall = command = "BFx2"
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(11) = 1
;---------------------------------------------------------------------------
;木登りわはー
;カンフー・ウッパー（強）
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1150
triggerall = command = "BFy"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;木登りわはー
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1100
triggerall = command = "BFx"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
わ波ー（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
わ波ー（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
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
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
trigger1 = stateno != 100
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
trigger1 = stateno != 100


;---------------------------------------------------------------------------
;Stand Strong Punch
;ひぐらしパンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;エリープ
[State -1, Stand Strong Punch]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && animelemtime(2) > 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;==============================================================================
;AI動作
;==============================================================================
[State -1, AIスイッチ]
type     = VarSet
triggerall = var(59) >= -1
triggerall = helper(100000),var(50) = 1
triggerall = roundstate = [1,2]
trigger1  =  (command="cpu1")||(command="cpu2")
trigger2  =  (command="cpu3")||(command="cpu4")
trigger3  =  (command="cpu5")||(command="cpu6")
trigger4  =  (command="cpu7")||(command="cpu8")
trigger5  =  (command="cpu9")||(command="cpu10")
trigger6  = (command="cpu11")||(command="cpu12")
trigger7  = (command="cpu13")||(command="cpu14")
trigger8  = (command="cpu15")||(command="cpu16")
trigger9  = (command="cpu17")||(command="cpu18")
trigger10 = (command="cpu19")||(command="cpu20")
trigger11 = (command="cpu21")||(command="cpu22")
trigger12 = (command="cpu23")||(command="cpu24")
trigger13 = (command="cpu25")||(command="cpu26")
trigger14 = (command="cpu27")||(command="cpu28")
trigger15 = (command="cpu29")||(command="cpu30")
trigger16 =  (command="cpuA")||(command="cpuB")
trigger17 =  (command="cpuC")||(command="cpuD")
trigger18 =  (command="cpuE")||(command="cpuF")
trigger19 =  (command="cpuH")||(command="cpuI")
trigger20 =  (command="cpuJ")||(command="cpuK")
trigger21 =  (command="cpuL")||(command="cpuM")
trigger22 =  (command="cpuN")||(command="cpuO")
trigger23 =  (command="cpuP")||(command="cpuQ")
trigger24 =  (command="cpuR")||(command="cpuS")
trigger25 =  (command="cpuT")||(command="cpuU")
trigger26 =  (command="cpuV")||(command="cpuW")
trigger27 =  (command="cpuX")||(command="cpuY")
trigger28 =  (command="cpuZ");||(command = "start")
var(59)  = 1

[State -1, AI]
Type = VarSet
TriggerAll = Var(59) >= 1
Trigger1 = RoundState >= 3
V = 59
Value = 0

[State -1, Random_AIvar]
type     = VarRandom
TriggerAll = Var(59) >= 1
trigger1 = gametime%6 = 0
v     = 58
range = 0,30

[State -1, Random_AIvar]
type     = VarRandom
TriggerAll = Var(59) >= 1
trigger1 = gametime%10 = 0
v     = 57
range = 0,40

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 4000
triggerall = var(59) = 1
triggerall = power >= 3000
triggerall = var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;キャンセル
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 1
triggerall = var(59) = 1
triggerall = var(11) = 1
triggerall = var(16) != 0
triggerall = movetype != H
triggerall = var(57) < 10
trigger1 = stateno = [0,799]
trigger2 = stateno = [1000,1999]
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3700
triggerall = var(59) = 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
trigger1 = var(57) = 0
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = enemy,movetype = A
trigger2 = random < 200
trigger2 = p2bodydist x = [150,160]
trigger3 = statetype != A
trigger3 = ctrl
trigger3 = enemy,movetype = A
trigger3 = random < 200
trigger3 = p2bodydist x = [0,50]

;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル2）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3500
triggerall = var(59) = 1
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
trigger1 = var(57) = [1,3]

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
trigger1 = var(57) = 3
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = enemy,statetype = A
trigger2 = enemy,movetype = A
trigger2 = random < 200
trigger2 = p2bodydist x = [0,100]
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル2）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
trigger1 = var(57) = [4,6]
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル2）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3201
triggerall = var(59) = 1
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
trigger1 = var(57) = [6,8]
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 2500
triggerall = var(59) = 1
triggerall = numhelper(2500) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1)
trigger1 = var(57) = 8
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;ボキン
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = var(59) = 1
trigger1 = var(1)
trigger1 = var(58) = 19
trigger2 = stateno = 230 && movecontact
trigger2 = var(58) = [0,6]
;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;ボキン
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1450
triggerall = var(59) = 1
trigger1 = var(1)
trigger1 = var(58) = 18
trigger2 = stateno = 230 && movecontact
trigger2 = var(58) = [6,12]
;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;リュミリュミ
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(58) = 17
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = var(58) = [8,10]
trigger3 = time < 5
trigger3 = ctrl
trigger3 = prevstateno = 1007
trigger3 = var(58) = [0,8]
trigger4 = time < 5
trigger4 = ctrl
trigger4 = prevstateno = 1017
trigger4 = var(58) = [0,8]
trigger5 = time < 3
trigger5 = ctrl
trigger5 = target,stateno = 1221
trigger5 = var(58) = [12,18]

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;リュミリュミ
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1350
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(58) = 16
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = var(58) = [10,11]
trigger3 = time < 5
trigger3 = ctrl
trigger3 = prevstateno = 1007
trigger3 = var(58) = [8,16]
trigger4 = time < 5
trigger4 = ctrl
trigger4 = prevstateno = 1017
trigger4 = var(58) = [8,16]
trigger5 = time < 3
trigger5 = ctrl
trigger5 = target,stateno = 1221
trigger5 = var(58) = [6,12]

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;リュミリュミ
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(58) = 15

;---------------------------------------------------------------------------
;木登りわはー
;カンフー・ウッパー（強）
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1150
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(11) = 1
trigger1 = var(58) = 14
;---------------------------------------------------------------------------
;木登りわはー
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1100
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(11) = 1
trigger1 = var(58) = 13
;---------------------------------------------------------------------------
;木登りわはー
;カンフー・ウッパー（強）
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1150
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(58) = 12

;---------------------------------------------------------------------------
;木登りわはー
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1100
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(58) = 11

;---------------------------------------------------------------------------
;Light Kung Fu Palm
わ波ー（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(58) = 10
trigger2 = stateno = 230 && movecontact
trigger2 = var(58) = [12,18]
trigger3 = time < 3
trigger3 = ctrl
trigger3 = target,stateno = 1221
trigger3 = var(58) = [0,6]

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
わ波ー（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = var(59) = 1
trigger1 = var(1) ;Use combo condition (above)
trigger1 = var(58) = 9
trigger2 = stateno = 230 && movecontact
trigger2 = var(58) = [18,24]

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(58) = 8
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(58) = [6,8]

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(58) = 7

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = var(58) = [4,6]
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = var(58) = 6


;---------------------------------------------------------------------------
;Stand Strong Punch
;ひぐらしパンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(58) = 5
;---------------------------------------------------------------------------
;Stand Strong Punch
;エリープ
[State -1, Stand Strong Punch]
type = ChangeState
value = 230
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(58) = 4
;===========================================================================

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(58) = 0
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = random < 50

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(58) = 1
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger2 = random < 500
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemy,stateno = 195
trigger1 = random < 600
trigger2 = random < 50

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(58) = 2
trigger2 = (stateno = 400) && time > 10
trigger2 = random < 50
;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(58) = 3
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger2 = random < 500

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(58) = [0,2]

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(58) = [2,4]
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger2 = random < 500

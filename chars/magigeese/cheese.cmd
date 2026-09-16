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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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
name = "holdstart"
command = /s
time = 1

;--- None of your own command definitions should be above this line. ---

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
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "QCF_2P"
command = ~D, DF, F, x+y

[Command]
name = "QCF_2P"
command = ~D, DF, F, y+z

[Command]
name = "QCF_2P"
command = ~D, DF, F, x+y

[Command]
name = "QCB_2P"
command = ~D, DB, B, x+y

[Command]
name = "QCB_2P"
command = ~D, DB, B, y+z

[Command]
name = "QCB_2P"
command = ~D, DB, B, x+y

;

[Command]
name = "QCF_2K"
command = ~D, DF, F, a+b

[Command]
name = "QCF_2K"
command = ~D, DF, F, b+c

[Command]
name = "QCF_2K"
command = ~D, DF, F, a+c

[Command]
name = "QCB_2K"
command = ~D, DB, B, a+b

[Command]
name = "QCB_2K"
command = ~D, DB, B, b+c

[Command]
name = "QCB_2K"
command = ~D, DB, B, a+c

[Command]
name = "SGS"
command = ~x, x, F, a, z
time = 35


;-| Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = ~F, D, B, x

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, D, B, y

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCF_x"
command = ~B, D, F, x

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "HCF_y"
command = ~B, D, F, y

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "rupper_x"
command = ~B, D, DB, x

[Command]
name = "rupper_y"
command = ~B, D, DB, y

[Command]
name = "rupper_z"
command = ~B, D, DB, z

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "rupper_a"
command = ~B, D, DB, a

[Command]
name = "rupper_b"
command = ~B, D, DB, b

[Command]
name = "rupper_c"
command = ~B, D, DB, c

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
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y


[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "HCB_a"
command = ~F, D, B, a

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a

[Command]
name = "HCB_b"
command = ~F, D, B, b

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b

[Command]
name = "HCB_c"
command = ~F, D, B, c

[Command]
name = "HCB_c"
command = ~F, DF, D, DB, B, c

[Command]
name = "HCF_a"
command = ~B, D, F, a

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, D, F, b

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b

[Command]
name = "HCF_c"
command = ~B, D, F, c

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c

[Command]
name = "360_x"
command = ~$F, $D, $B, $U, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$D, $B, $U, $F, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$B, $U, $F, $D, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$U, $F, $D, $B, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$B, $D, $F, $U, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$D, $F, $U, $B, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$F, $U, $B, $D, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$U, $B, $D, $F, x
time = 15
buffer.time = 3

[Command]
name = "360_y"
command = ~$F, $D, $B, $U, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$D, $B, $U, $F, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$B, $U, $F, $D, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$U, $F, $D, $B, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$B, $D, $F, $U, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$D, $F, $U, $B, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$F, $U, $B, $D, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$U, $B, $D, $F, y
time = 15
buffer.time = 3

[Command]
name = "360_z"
command = ~$F, $D, $B, $U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$D, $B, $U, $F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$B, $U, $F, $D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$U, $F, $D, $B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$B, $D, $F, $U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$D, $F, $U, $B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$F, $U, $B, $D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$U, $B, $D, $F, z
time = 15
buffer.time = 3

;-| N.Edge Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = ~F, D, B, ~x

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, ~x

[Command]
name = "HCB_y"
command = ~F, D, B, ~y

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, ~y

[Command]
name = "HCF_x"
command = ~B, D, F, ~x

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, ~x

[Command]
name = "HCF_y"
command = ~B, D, F, ~y

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, ~y

[Command]
name = "upper_x"
command = ~F, D, DF, ~x

[Command]
name = "upper_y"
command = ~F, D, DF, ~y

[Command]
name = "upper_z"
command = ~F, D, DF, ~z

[Command]
name = "rupper_x"
command = ~B, D, DB, ~x

[Command]
name = "rupper_y"
command = ~B, D, DB, ~y

[Command]
name = "rupper_z"
command = ~B, D, DB, ~z

[Command]
name = "upper_a"
command = ~F, D, DF, ~a

[Command]
name = "upper_b"
command = ~F, D, DF, ~b

[Command]
name = "upper_c"
command = ~F, D, DF, ~c

[Command]
name = "rupper_a"
command = ~B, D, DB, ~a

[Command]
name = "rupper_b"
command = ~B, D, DB, ~b

[Command]
name = "rupper_c"
command = ~B, D, DB, ~c

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x

[Command]
name = "QCF_y"
command = ~D, DF, F, ~y

[Command]
name = "QCF_z"
command = ~D, DF, F, ~z

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x

[Command]
name = "QCB_y"
command = ~D, DB, B, ~y

[Command]
name = "QCB_z"
command = ~D, DB, B, ~z

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a

[Command]
name = "QCF_b"
command = ~D, DF, F, ~b

[Command]
name = "QCB_a"
command = ~D, DB, B, ~a

[Command]
name = "QCB_b"
command = ~D, DB, B, ~b

[Command]
name = "HCB_a"
command = ~F, D, B, ~a

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, ~a

[Command]
name = "HCB_b"
command = ~F, D, B, ~b

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, ~b

[Command]
name = "HCB_c"
command = ~F, D, B, ~c

[Command]
name = "HCB_c"
command = ~F, DF, D, DB, B, ~c

[Command]
name = "HCF_a"
command = ~B, D, F, ~a

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, ~a

[Command]
name = "HCF_b"
command = ~B, D, F, ~b

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, ~b

[Command]
name = "HCF_c"
command = ~B, D, F, ~c

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, ~c

[Command]
name = "360_x"
command = ~$F, $D, $B, $U, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$D, $B, $U, $F, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$B, $U, $F, $D, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$U, $F, $D, $B, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$B, $D, $F, $U, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$D, $F, $U, $B, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$F, $U, $B, $D, ~x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~$U, $B, $D, $F, ~x
time = 15
buffer.time = 3

[Command]
name = "360_y"
command = ~$F, $D, $B, $U, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$D, $B, $U, $F, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$B, $U, $F, $D, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$U, $F, $D, $B, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$B, $D, $F, $U, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$D, $F, $U, $B, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$F, $U, $B, $D, ~y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~$U, $B, $D, $F, ~y
time = 15
buffer.time = 3

[Command]
name = "360_z"
command = ~$F, $D, $B, $U, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$D, $B, $U, $F, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$B, $U, $F, $D, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$U, $F, $D, $B, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$B, $D, $F, $U, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$D, $F, $U, $B, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$F, $U, $B, $D, ~z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~$U, $B, $D, $F, ~z
time = 15
buffer.time = 3


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
name = "SupahJump"
;command = ~$D, $U
command = ~$D, $U
time = 5
buffer.time = 2

[Command]
name = "ChargedSupahJump"
;command = ~$D, $U
command = ~12$D, $U
time = 5
buffer.time = 2

[Command]
name = "upper_what"
command = ~15$D, $U, x
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, y
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, z
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, a
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, b
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, c
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "lplk"
command = x+a
time = 1

[Command]
name = "hphk"
command = z+c
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

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

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
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = anim != 200
;trigger2 = anim != 210
;trigger2 = anim != 220
;trigger2 = anim != 230
;trigger2 = anim != 240
;trigger2 = anim != 250
trigger2 = movecontact
trigger3 = stateno = 100
trigger4 = stateno = 730
trigger4 = animelemtime(6) > 0
trigger4 = movehit
trigger5 = stateno = 40
trigger5 = animtime != 0
var(9) = 1


; AI-related stuff starts here

[State AI, RESET]
type = VarSet
trigger1 = fvar(35)=0
trigger2 = random >= (fvar(35)-8)*2
var(52) = 0
ignorehitpause = 1

; NORMAL AI

[State AI, Consider backing off]
type = VarSet
triggerall = !var(19)
triggerall = fvar(35)
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(backedgebodydist <= 60, 700, ifelse(random<500&&(helper(10003),var(30)|| fvar(35)<=4.0),43,705) )
ignorehitpause = 1

[State CAI, Consider backing off]
type = VarSet
triggerall = var(19)
triggerall = fvar(35)
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(backedgebodydist <= 60&&(helper(10003),var(30)), 42, ifelse(random<500&&(helper(10003),var(30)|| fvar(35)<=4.0),43,105) )
ignorehitpause = 1

[State AI, Consider C.Y]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),15-(9*movecontact)]
triggerall = p2dist y >= -60 - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = (movecontact)
var(52) = 410
ignorehitpause = 1

[State AI, Consider C.A]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),32-(9*movecontact)]
triggerall = p2dist y >= -10 - (enemynear,vel y*3)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(10) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 400
trigger2 = (movecontact)
var(52) = 430
ignorehitpause = 1

[State AI, Consider C.B]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),48-(9*movecontact)]
triggerall = p2dist y >= -10 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = (movecontact)
var(52) = 440
ignorehitpause = 1

[State AI, Consider S.X]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),40-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-60,-85) - (enemynear,vel y*2)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-60,-85)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(10) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200
trigger2 = (movecontact)
trigger2 = prevstateno != 200
var(52) = 200
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),40-(2*movecontact)]
triggerall = p2dist y >= -65 - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -65
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(10) && ctrl&& fvar(35)<=4.0
var(52) = 400
ignorehitpause = 1

[State AI, Consider S.A]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),52-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-20,-20) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-20,-20)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(10) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200
trigger2 = (movecontact)
var(52) = 230
ignorehitpause = 1

[State AI, Consider S.C]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),74-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-40,-40) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-10,-10)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 || (stateno = 220 && anim = 221)
trigger2 = (movecontact)
var(52) = 250
ignorehitpause = 1

[State AI, Consider S.FC]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.5*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 250)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-8),60-(9*movecontact)]
triggerall = p2dist y >= -22 - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -22
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
var(52) = 730
ignorehitpause = 1

[State AI, Consider S.B]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),65-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-70,-60) - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-60,-60)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = (movecontact)
var(52) = 240
ignorehitpause = 1

[State AI, Consider C.C]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),72-(9*movecontact)]
triggerall = p2dist y >= -15 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-10,-10)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = (movecontact)
var(52) = 450
ignorehitpause = 1

[State AI, Consider S.Y]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),80-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-60,-70) - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-60,-65)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = (movecontact)
var(52) = 210
ignorehitpause = 1

[State AI, Keep holding]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = stateno = 730
triggerall = (movehit = [0,4])
trigger1 = p2dist y + (enemynear,vel y) < -20
trigger2 = p2bodydist x != [ifelse(statetype=A,-5,20),60]
;trigger2 = p2dist y + (enemynear,vel y) >= -28
trigger3 = p2stateno = [120,169]
trigger4 = inguarddist
trigger5 = p2stateno = 5120
var(52) = 731
ignorehitpause = 1

[State AI, Consider S.Z]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),110-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-45,-55) - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-68,-55)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = (movecontact)
var(52) = 220
ignorehitpause = 1

[State AI, Consider C.Z]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.8*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),110-(9*movecontact)]
triggerall = p2dist y >= -44 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = (movecontact)
var(52) = 420
ignorehitpause = 1

[State CAI, Consider C. Fast Attack]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 96)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),26-(9*movecontact)]
triggerall = p2dist y >= -45 - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -45
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(10) && ctrl&& fvar(35)<=4.0
var(52) = 400
ignorehitpause = 1
[State CAI, Consider C. Slow Attack]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.8*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),26-(9*movecontact)]
triggerall = p2dist y >= -45 - (enemynear,vel y*3)
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -45
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
var(52) = 410
ignorehitpause = 1

[State CAI, Consider S. Fast Attack]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),75-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-90,-60) - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(10) && ctrl&& fvar(35)<=4.0
var(52) = 200
ignorehitpause = 1
[State CAI, Consider S. Slow Attack]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.8*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 16)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),75-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-90,-60) - (enemynear,vel y*22)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100|| helper(10003),var(11) && ctrl&& fvar(35)<=4.0
var(52) = 210
ignorehitpause = 1

[State AI, Consider contraing]
type = VarSet
triggerall = !var(19)
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x <= 64
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = var(0) = 0
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 101 || stateno = 106
trigger1 = p2movetype = A
trigger1 = facing != enemynear, facing
trigger1 = inguarddist
trigger2 = var(9)
trigger2 = moveguarded
var(52) = ifelse(p2statetype=C,1100,ifelse(p2statetype!=A,1110,1120))
ignorehitpause = 1

[State CAI, Consider contraing]
type = VarSet
triggerall = var(19)
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x <= 80
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = var(0) = 0
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 101 || stateno = 106
trigger1 = p2movetype = A
trigger1 = facing != enemynear, facing
trigger1 = inguarddist
var(52) = 1100
ignorehitpause = 1

[State AI, J.X]
type = Varset
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),26+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -65 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -65 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600
ignorehitpause = 1

[State AI, J.Y]
type = Varset
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),28+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -75 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -75 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
var(52) = 610
ignorehitpause = 1

[State AI, J.Z]
type = Varset
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),31+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -65 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -65 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact
var(52) = 620
ignorehitpause = 1

[State AI, J.A]
type = Varset
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),40+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -65 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -65 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600
trigger2 = movecontact
var(52) = 630
ignorehitpause = 1

[State AI, J.B]
type = Varset
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),50+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -65 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -65 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600  || stateno = 610 || stateno = 630
trigger2 = movecontact
var(52) = 640
ignorehitpause = 1

[State AI, J.C]
type = Varset
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),40+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -65 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -65 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact
var(52) = 650
ignorehitpause = 1

[State CAI, J.Classic]
type = Varset
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-25,45]
triggerall = p2dist y >= -52
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -15
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = fvar(35)
triggerall = random < (15*(fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != [800,830]
triggerall = prevstateno != 1350
triggerall = enemynear,prevstateno != [5120,5129]
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(random<500,1350,ifelse(random<500,830,800))
ignorehitpause = 1

[State CAI, Consider Throwing]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = fvar(35)
triggerall = random < (15*(fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != 10800
triggerall = enemynear,prevstateno != [5120,5129]
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = 220
ignorehitpause = 1

[State AI, Consider BOOM]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.6*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-10,-22),120-(13*(movecontact>=1))]) || (stateno != [200,499])
triggerall = (p2dist y >= -80 - (enemynear,vel y*11)) || (stateno != [200,499])
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1000,1020])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
;trigger1 = !moveguarded
var(52) = ifelse(p2bodydist x<=90,1000,ifelse(p2bodydist x<=110,1010,1020))
ignorehitpause = 1

[State AI, Consider channeling Krizalid]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.6*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 256)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),260-(13*(movecontact>=1))]
triggerall = p2dist y >= -30 - (enemynear,vel y*6)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0
var(52) = ifelse(p2bodydist x>=230||numtarget(1000),1052,ifelse(p2bodydist x>=200,1051,1050))
ignorehitpause = 1

[State AI, Consider slamming with explosions]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.4*(fvar(35)*fvar(35)*fvar(35))) * ifelse(moveguarded||p2statetype=C,2,1)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),260-(13*(movecontact>=1))]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*32) + (enemynear, pos y) <= -32 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 29 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0
var(52) = ifelse(p2dist x>=180,1170,ifelse(p2dist x>=135,1160,1150))
ignorehitpause = 1

[State AI, Consider DADADADADA]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5110]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),100-(13*(movecontact>=1))]
;triggerall = p2dist y >= -64 - (enemynear,vel y*6)
triggerall = (p2bodydist x - (p2bodydist y+75)) = [-50,24]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 20 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1255])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger1 = !moveguarded
var(52) = 1200
ignorehitpause = 1

[State AI, Consider DADADADADA 2]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5110]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),100-(13*(movecontact>=1))]
;triggerall = p2dist y >= -64 - (enemynear,vel y*6)
triggerall = (p2bodydist x - (p2bodydist y+150)) = [-50,24]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 24 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1255])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger1 = !moveguarded
var(52) = 1210
ignorehitpause = 1

[State AI, Consider DADADADADA 3]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),100-(13*(movecontact>=1))]
;triggerall = p2dist y >= -64 - (enemynear,vel y*6)
triggerall = (p2bodydist x - (p2bodydist y+225)) = [-50,24]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 28 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1255])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger1 = !moveguarded
var(52) = 1220
ignorehitpause = 1

[State AI, Consider dabudabudabud]
type = Varset
triggerall = !var(19)
triggerall = p2stateno != [5100,5120]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = fvar(35)
triggerall = p2dist y > -20
triggerall = (p2bodydist x - p2bodydist y) = [-50,24] ; (p2bodydist x - p2bodydist y - (enemynear,vel y*7)) = [-50,24]
triggerall = random < (5*(fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = statetype = A
trigger1 = ctrl || stateno = 110
trigger2 = stateno = [600,650]
trigger2 = movehit
var(52) = 1250
ignorehitpause = 1

[State AI, Consider lau]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),40-(13*(movecontact>=1))]
triggerall = p2dist y >= -40 - (enemynear,vel y*2)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno = 1252
trigger1 = !moveguarded
var(52) = 1255
ignorehitpause = 1

[State AI, Consider Teleport kicking]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),100-(13*(movecontact>=1))]
triggerall = p2dist y >= -64 - (enemynear,vel y*6)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 20 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1255])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger1 = !moveguarded || random < (0.35*(fvar(35)*fvar(35)*fvar(35)))
var(52) = 1300+((random%3)*10)
ignorehitpause = 1

[State CAI, Consider Dealing 20% Damage from far away]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.6*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2dist y >= -32 - (enemynear,vel y*19)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 19 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1000,1020])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
var(52) = 1000
ignorehitpause = 1

[State CAI, Consider Being like WHEEEE]
type = VarSet
triggerall = var(19)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.2*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),100-(13*(movecontact>=1))]
triggerall = p2dist y >= -100 - (enemynear,vel y*8)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 15 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1255])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
var(52) = 1300+((random%3)*10)
ignorehitpause = 1

[State AI, Consider blasting Rita Repulsa]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 100
;triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*15)
;triggerall = p2statetype != A
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3002]
triggerall = p2stateno != [120,156]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 0))
trigger2 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger2 = movehit
trigger3 = (stateno = [1000,1020]) || (stateno = 1055)
trigger3 = animelemtime(6) >= 0
trigger4 = stateno = 1255 || (stateno = [1300,1320])
trigger4 = movehit
trigger5 = stateno = 1151
var(52) = 3000
ignorehitpause = 1

[State AI, Consider being extra edgy]
type = Varset
triggerall = !var(19)
triggerall = p2stateno != [5080,5130]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = fvar(35)
triggerall = p2dist y > -20
triggerall = ((p2bodydist x * 0.5) - p2bodydist y) = [-30,24] ; (p2bodydist x - p2bodydist y - (enemynear,vel y*7)) = [-50,24]
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
triggerall = power >= 1000
triggerall = (p2stateno != [120,156]) || (p2statetype=C)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 11 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = statetype = A
trigger1 = ctrl || stateno = 110
trigger2 = (stateno = [600,650]) || (stateno = 1251 && hitcount >= 5)
trigger2 = movehit
var(52) = 3100
ignorehitpause = 1

[State AI, Consider ripping the opponent to Shreds]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 330
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*4)
;triggerall = p2statetype != A
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3002]
triggerall = p2stateno != [120,156]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 0))
trigger2 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger2 = movehit
trigger3 = (stateno = [1000,1020]) || (stateno = 1055)
trigger3 = animelemtime(6) >= 0
trigger4 = stateno = 1255 || (stateno = [1300,1320])
trigger4 = movehit
trigger5 = stateno = 1151
var(52) = 3050
ignorehitpause = 1

[State AI, Consider more of that beatdown]
type = VarSet
triggerall = numenemy
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = stateno = 3051
triggerall = anim = [3060,3066]
trigger1 = movehit >= 8
trigger2 = time >= 8
var(52) = 3051
ignorehitpause = 1

[State AI, Live It Like It's 1991]
type = VarSet
triggerall = numenemy
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = stateno = 3051
triggerall = anim = 3067
trigger1 = movehit >= 8
trigger2 = time >= 8
var(52) = ifelse(random<500,3080,3070)
ignorehitpause = 1

[State AI, DAM]
type = VarSet
triggerall = numenemy
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = stateno = 3080
trigger1 = numenemy
trigger1 = p2dist y + (enemynear,vel y*4) >= -50
var(52) = 3081
ignorehitpause = 1


[State AI, Consider being Michael May]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.4*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 250
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*15)
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = power >= 3000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3002]
triggerall = p2stateno != [120,156]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 0))
trigger2 = (anim != 420 || (anim = 420 && animelemtime(14) > 0))
trigger2 = movehit
trigger3 = (stateno = [1000,1020]) || (stateno = 1055)
trigger3 = animelemtime(6) >= 0
trigger4 = stateno = 1255 || (stateno = [1300,1320])
trigger4 = movehit
trigger5 = stateno = 1151
var(52) = 3400
ignorehitpause = 1

[State AI, Consider a Super Counter]
type = VarSet
triggerall = !var(19)
triggerall = fvar(35)
triggerall = random < (0.8*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype = A) && (EnemyNear, Facing != Facing))
triggerall = p2movetype != H
triggerall = statetype != A
triggerall = power >= 2000
triggerall = p2bodydist x <= 100
trigger1 = stateno != 40
var(52) = 3200

[State AI, Consider Advancing]
type = VarSet
triggerall = !var(19)
triggerall = fvar(35)
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < (33*fvar(35)) * ifelse(numhelper(3050),2,1)
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-fvar(35) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(random<200&&stateno!=100,ifelse(random<500,700,41),100)
ignorehitpause = 1

[State AI, Consider Countering/Guard Canceling]
type = VarSet
triggerall = !var(19)
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.05*(fvar(35)*fvar(35)*fvar(35))) + ifelse(p2life - life<0,0,(p2life - life)/4)
;triggerall = p2bodydist x = [-5,60]
;triggerall = p2dist y >= -50
triggerall = statetype != A
triggerall = power >= 1000
triggerall = power < 2000 || random < 32 || power >= 3000
triggerall = time >= 7-fvar(35) || random < 10
triggerall = (enemynear,time >= 14-(fvar(35)*2)) || random < 10
trigger1 = stateno = 150 || stateno = 152
var(52) = ifelse(random<500,710,ifelse(random<500&&frontedgedist > 64,706,707))
ignorehitpause = 1

[State AI, Consider jumping in]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+fvar(35) + (100*(stateno = 410))
triggerall = fvar(35)
triggerall = p2stateno != [5080,5130]
;triggerall = statetype != A || stateno = 410
triggerall = p2statetype = A && p2movetype = H
triggerall = (enemynear, pos y <= -45) || (stateno = 410)
trigger1 = ctrl || stateno = 100 || stateno = 40 || helper(10003),var(30)
trigger2 = stateno = 410
trigger2 = movecontact
var(52) = ifelse(p2bodydist x>=20,ifelse(p2bodydist x>=160,44,41),42)
ignorehitpause = 1

[State -1, Just Taunt After Everythings Wrapped up]
type = VarSet
var(52) = 195;ifelse(random<500,195,1950)
triggerall = !var(19)
triggerall = (var(58) = -2 && winko && !var(48)) || (fvar(35) > 0 && winko && !var(48))
triggerall = stateno != 195
triggerall = stateno != 1950
;trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State AI, Guard S]
type = ChangeState
triggerall = !var(19)
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(prevstateno!=[700,705]),ifelse(random<123&&p2bodydist x<=55,ifelse(statetype=A,1120,1110),ifelse(random<500,700,705)),130)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),130)

[State AI, Guard L]
type = ChangeState
triggerall = !var(19)
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(prevstateno!=[700,705]),ifelse(random<123&&p2bodydist x<=55,1100,ifelse(random<500,700,705)),131)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),131)

[State CAI, Guard S]
type = ChangeState
triggerall = var(19)
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(prevstateno!=[10830,10840]),10830,130)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),130)

[State CAI, Guard L]
type = ChangeState
triggerall = var(19)
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(prevstateno!=[10830,10840]),10830,131)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),131)


; AI-related stuff ends here

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Michael Bay Satsu]
type = ChangeState
value = 3400
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "SGS") || (var(52) = 3400)
triggerall = power >= 3000
trigger1 = var(9)
trigger2 = (stateno = [1000,1020]) || (stateno = 1055)
trigger2 = animelemtime(6) >= 0
trigger3 = stateno = 1255 || (stateno = [1300,1320]) || stateno = 1151
trigger3 = movecontact
trigger4 = stateno = 1151 || (stateno = [200,440])

[State -1, Super Counter]
type = ChangeState
value = 3200
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCB_2P",command = "QCF_2P")) || (var(52) = [3200,3201])
triggerall = power >= 2000
trigger1 = var(9)
trigger2 = (stateno = [1000,1020]) || (stateno = 1055)
trigger2 = animelemtime(6) >= 0
trigger3 = stateno = 1255 || (stateno = [1300,1320]) || stateno = 1151
trigger3 = movecontact
trigger4 = stateno = 1151

[State -1, Repulsa Blast]
type = ChangeState
value = 3000
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_2P",command = "QCB_2P")) || (var(52) = [3000,3001])
triggerall = power >= 1000
trigger1 = var(9)
trigger2 = (stateno = [1000,1020]) || (stateno = 1055)
trigger2 = animelemtime(6) >= 0
trigger3 = stateno = 1255 || (stateno = [1300,1320]) || stateno = 1151
trigger3 = movecontact
trigger4 = stateno = 1151

[State -1, Deadli Rave]
type = ChangeState
value = 3050
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_2K",command = "QCB_2K")) || (var(52) = 3050)
triggerall = power >= 1000
trigger1 = var(9)
trigger2 = (stateno = [1000,1020]) || (stateno = 1055)
trigger2 = animelemtime(6) >= 0
trigger3 = stateno = 1255 || (stateno = [1300,1320]) || stateno = 1151
trigger3 = movecontact
trigger4 = stateno = 1151

[State -1, Deadli Masher]
type = ChangeState
value = 3051
triggerall = stateno = 3051
triggerall = var(1) = [0,7]
triggerall = time >= 9 || movehit || anim = 3060
trigger1 = (fvar(35)<5 && command = "x") || (var(52) = 3051)
trigger1 = var(1) = 1
trigger2 = (fvar(35)<5 && command = "a") || (var(52) = 3051)
trigger2 = var(1) = [2,3]
trigger3 = (fvar(35)<5 && command = "y") || (var(52) = 3051)
trigger3 = var(1) = [4,5]
trigger4 = (fvar(35)<5 && command = "b") || (var(52) = 3051)
trigger4 = var(1) = [6,7]

[State -1, SMACK]
type = ChangeState
value = 3080
triggerall = stateno = 3051
triggerall = var(1) = [0,8]
triggerall = time >= 9 || movehit || anim = 3060
trigger1 = (fvar(35)<5 && command = "c") || (var(52) = 3080)

[State -1, SMACK]
type = ChangeState
value = 3081
triggerall = stateno = 3080
triggerall = animelemtime(8) >= 0
triggerall = animelemtime(13) < 0
triggerall = numtarget(3050)
triggerall = target(3050),statetype=A
trigger1 = (fvar(35)<5 && (command = "z" || command = "c")) || (var(52) = 3081)

[State -1, TIME TRAVEL]
type = ChangeState
value = 3070
triggerall = stateno = 3051
triggerall = var(1) = [0,8]
triggerall = time >= 9 || movehit || anim = 3060
trigger1 = (fvar(35)<5 && command = "z") || (var(52) = 3070)

[State -1, CAMMY THE ROCKET LAUNCHER]
type = ChangeState
value = 3100
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "QCB_2P") || var(52) = 3100
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) || (stateno = 1251)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, 360]
type = ChangeState
value = 1350
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "360_x" || command = "360_y" || command = "360_z" )) || var(52) = 1350
trigger1 = var(9) ;Use combo condition (above)

[State -1, Counter]
type = ChangeState
value = 1100
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCB_a",command = "HCB_a")) || var(52) = 1100
trigger1 = var(9) ;Use combo condition (above)

[State -1, Counter]
type = ChangeState
value = 1110
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCB_b",command = "HCB_b")) || var(52) = 1110
trigger1 = var(9) ;Use combo condition (above)

[State -1, Counter]
type = ChangeState
value = 1120
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCB_c",command = "HCB_c")) || var(52) = 1120
trigger1 = var(9) ;Use combo condition (above)

[State -1, POOF]
type = ChangeState
value = 1200
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "upper_x",command = "rupper_x")) || var(52) = 1200
trigger1 = var(9) ;Use combo condition (above)

[State -1, POOF]
type = ChangeState
value = 1210
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "upper_y",command = "rupper_y")) || var(52) = 1210
trigger1 = var(9) ;Use combo condition (above)

[State -1, POOF]
type = ChangeState
value = 1220
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "upper_z",command = "rupper_z")) || var(52) = 1220
trigger1 = var(9) ;Use combo condition (above)

[State -1, Suprise Kick]
type = ChangeState
value = 1300
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "upper_a",command = "rupper_a")) || var(52) = 1300
trigger1 = var(9) ;Use combo condition (above)

[State -1, Suprise Kick]
type = ChangeState
value = 1310
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "upper_b",command = "rupper_b")) || var(52) = 1310
trigger1 = var(9) ;Use combo condition (above)

[State -1, Suprise Kick]
type = ChangeState
value = 1320
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "upper_c",command = "rupper_c")) || var(52) = 1320
trigger1 = var(9) ;Use combo condition (above)

[State -1, BOOM]
type = ChangeState
value = 1000
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x")) || var(52) = 1000
trigger1 = var(9) ;Use combo condition (above)

[State -1, BOOM]
type = ChangeState
value = 1010
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y")) || var(52) = 1010
trigger1 = var(9) ;Use combo condition (above)

[State -1, BOOM]
type = ChangeState
value = 1020
triggerall = !var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_z",command = "QCB_z")) || var(52) = 1020
trigger1 = var(9) ;Use combo condition (above)

[State -1, DIVEPUNCH]
type = ChangeState
value = 1250
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "QCF_x" || command = "QCF_y" || command = "QCF_z" )) || var(52) = 1250
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[State -1, Followup]
type = ChangeState
value = 1255
triggerall = (fvar(35)<5 && (command = "x" || command = "y" || command = "z" )) || var(52) = 1255
trigger1 = stateno = 1252
trigger1 = time >= 2
trigger1 = animelemtime(4) < 0

[State -1, Lol Krizalid Followup]
type = ChangeState
value = 1050
triggerall = (fvar(35)<5 && command = "a") || var(52) = 1050
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0

[State -1, Lol Krizalid Followup]
type = ChangeState
value = 1051
triggerall = (fvar(35)<5 && command = "b") || var(52) = 1051
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0

[State -1, Lol Krizalid Followup]
type = ChangeState
value = 1052
triggerall = (fvar(35)<5 && command = "c") || var(52) = 1052
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0

[State -1, Explosion Slam]
type = ChangeState
value = 1150
triggerall = (fvar(35)<5 && command = "x") || var(52) = 1150
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0

[State -1, Explosion Slam]
type = ChangeState
value = 1160
triggerall = (fvar(35)<5 && command = "y") || var(52) = 1160
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0

[State -1, Explosion Slam]
type = ChangeState
value = 1170
triggerall = (fvar(35)<5 && command = "z") || var(52) = 1170
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger1 = animelemtime(6) > 0
trigger1 = animelemtime(11) < 0

;===========================================================================
; Classic Geese Stuff
;---------------------------------------------------------------------------
;Stand Attacks
[State -1, ClassiFATALITY]
type = ChangeState
value = 10183
triggerall = var(19)
triggerall = winko
triggerall = numtarget
triggerall = !(target,ishelper)
triggerall = roundstate = [2,3]
;trigger1 = statetype != A
;trigger1 = ctrl || stateno = 100
trigger1 = stateno != [3070,3079]
trigger1 = stateno != [10183,10187]
;ignorehitpause = 1

[State -1, Classix REPPUKEN]
type = ChangeState
value = 10220
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "QCF_x",command = "QCB_x")) || var(52) = 1000
triggerall = !numhelper(10220)
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix REPPUKEN]
type = ChangeState
value = 10220
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "QCF_y",command = "QCB_y")) || var(52) = 1010
triggerall = !numhelper(10220)
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix REPPUKEN]
type = ChangeState
value = 10220
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "QCF_z",command = "QCB_z")) || var(52) = 1020
triggerall = !numhelper(10220)
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Whee]
type = ChangeState
value = 11200
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "upper_a",command = "rupper_a")) || var(52) = 1300
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Whee]
type = ChangeState
value = 11210
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "upper_b",command = "rupper_b")) || var(52) = 1310
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Whee]
type = ChangeState
value = 11220
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "upper_c",command = "rupper_c")) || var(52) = 1320
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix ATEMINAGE]
type = ChangeState
value = 10830
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "HCB_a",command = "HCF_a")) || var(52) = 1100
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix ATEMINAGE]
type = ChangeState
value = 10830
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "HCB_b",command = "HCF_b")) || var(52) = 1110
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix ATEMINAGE]
type = ChangeState
value = 10830
triggerall = var(19)
triggerall = (fvar(35)<5 && ifelse((anim!=[10005,10006]),command = "HCB_c",command = "HCF_c")) || var(52) = 1120
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Stand Fast Attack]
type = ChangeState
value = 10200
triggerall = var(19)
triggerall = (fvar(35)<5 && ((command = "x" || command = "a") && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Stand Slow Attack]
type = ChangeState
value = 10210
triggerall = var(19)
triggerall = (fvar(35)<5 && ((command = "y" || command = "b") && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Stand Grab Attack]
type = ChangeState
value = 10800
triggerall = var(19)
triggerall = (fvar(35)<5 && ((command = "z" || command = "c"))) || var(52) = 220
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Crouch Fast Attack]
type = ChangeState
value = 10400
triggerall = var(19)
triggerall = (fvar(35)<5 && ((command = "x" || command = "a") && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Crouch Slow Attack]
type = ChangeState
value = 10410
triggerall = var(19)
triggerall = (fvar(35)<5 && ((command = "y" || command = "b") && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Classix Air Attack]
type = ChangeState
value = 10600
triggerall = var(19)
triggerall = (fvar(35)<5 && (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")) || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(19)
trigger1 = (command = "FF") || (var(52) = 100)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = ifelse(!var(19),105,10105)
;triggerall = !var(19)
trigger1 = (command = "BB") || (var(52) = 105)
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = !var(19)
triggerall = (command = "z" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = !var(19)
triggerall = (command = "c" && (command = "holdfwd" || command = "holdback")) || var(52) = 830
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;[State -1, Air Throw]
;type = ChangeState
;value = 860
;triggerall = (command = "y" && (command = "holdfwd" || command = "holdback")) || var(52) = 860
;;triggerall = ((command = "y" || command = "z") && (command = "holdfwd" || command = "holdback")) || var(52) = 800
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = p2bodydist X < 8
;trigger1 = abs(p2bodydist y) < 50
;trigger1 = (p2statetype = A)



;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand focus attack]
type = ChangeState
value = 730
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "hphk")) || var(52) = 730
triggerall = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Guard Counter Attack]
type = ChangeState
value = 710
triggerall = (fvar(35)<5 && command = "hphk" ) || var(52) = 710
triggerall = statetype != A
trigger1 = stateno = [150,156]
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;Stand Dodge
;立ち強パンチ
[State -1, Stand fwd Dodge]
type = ChangeState
value = 700
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "lplk" && command = "holdfwd")) || var(52) = 700
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = stateno = [150,156]
;trigger2 = power >= 1000
;trigger3 = var(9)
;trigger3 = power >= 1000

[State -1, Stand back Dodge]
type = ChangeState
value = 705
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "lplk" && command = "holdback")) || var(52) = 705
triggerall = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Stand Dodge]
type = ChangeState
value = 701
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "lplk")) || var(52) = 701
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = stateno = [150,156]
;trigger2 = power >= 1000
;trigger3 = var(9)
;trigger3 = power >= 1000

[State -1, Stand Dodge]
type = ChangeState
value = 702
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c")) || var(52) = 702
triggerall = statetype != A
trigger1 = stateno = 701
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(4) < 0

[State -1, Guard Cancel Dodge]
type = ChangeState
value = 706
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "lplk") || (var(52) = [706,707])
triggerall = statetype != A
trigger1 = stateno = [150,156]
trigger1 = power >= 1000
;trigger3 = var(9)
;trigger3 = power >= 1000


;===========================================================================
;---------------------------------------------------------------------------
;Stand Attacks
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = (movecontact || animtime >= -6)

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = (movecontact || animtime >= -6)

[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "z" && command != "holddown")) || var(52) = 220
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = (movecontact || animtime >= -6)

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = (movecontact || animtime >= -6)

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = (movecontact || animtime >= -6)

[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "c" && command != "holddown")) || var(52) = 250
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 || (stateno = 220 && anim = 221)
trigger2 = (movecontact || animtime >= -6)

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(52) = 195; || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Crouching Attacks
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = (movecontact || animtime >= -6)

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = (movecontact || animtime >= -6)

[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "z" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = (movecontact || animtime >= -6)

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = (movecontact || animtime >= -6)

[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = (movecontact || animtime >= -6)

[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = !var(19)
triggerall = (fvar(35)<5 && (command = "c" && command = "holddown")) || var(52) = 450
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = (movecontact || animtime >= -6)


;---------------------------------------------------------------------------
;Jump
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger2 = numtarget
trigger2 = target,statetype = A

[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "z") || var(52) = 620
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact
trigger2 = numtarget
trigger2 = target,statetype = A

[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "a") || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger2 = numtarget
trigger2 = target,statetype = A

[State -1, Jump Medium Punch]
type = ChangeState
value = 640
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "b") || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600  || stateno = 610 || stateno = 630
trigger2 = movecontact
trigger2 = numtarget
trigger2 = target,statetype = A

[State -1, Jump Hard Punch]
type = ChangeState
value = 650
triggerall = !var(19)
triggerall = (fvar(35)<5 && command = "c") || var(52) = 650
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact
trigger2 = numtarget
trigger2 = target,statetype = A


[State -1, Air combo lol]
type = ChangeState
value = ifelse(statetype=A,45,40)
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = fvar(35)
trigger1 = stateno != 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 410
trigger3 = movehit


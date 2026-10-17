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

;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

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

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.  You should
; use button-only commands before using any commands with directional
; components, as the latter apparently doesn't work in Linux Mugen 2002.04.14.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

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

;-| Super Motions |--------------------------------------------------------

[Command]
name = "battornado"
command = ~D,DB,B,D,DB,B, x
time = 25

[Command]
name = "battornado"
command = ~D,DB,B,D,DB,B, y
time = 25

[Command]
name = "battornado"
command = ~D,DB,B,D,DB,B, z
time = 25

[Command]
name = "fireball"
command = ~D,DF,F,D,DF,F, x
time = 25

[Command]
name = "fireball"
command = ~D,DF,F,D,DF,F, y
time = 25

[Command]
name = "fireball"
command = ~D,DF,F,D,DF,F, z
time = 25

[Command]
name = "shoegun"
command = ~D,DF,F,D,DF,F, x+y
time = 25

[Command]
name = "shoegun"
command = ~D,DF,F,D,DF,F, y+z
time = 25

[Command]
name = "shoegun"
command = ~D,DF,F,D,DF,F, x+z
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "andthepitch1"
command = ~D,DF,F, x
time = 15

[Command]
name = "andthepitch2"
command = ~D,DF,F, y
time = 15

[Command]
name = "andthepitch3"
command = ~D,DF,F, z
time = 15

[Command]
name = "batterup1"
command = ~D,DB,B, x
time = 15

[Command]
name = "batterup2"
command = ~D,DB,B, y
time = 15

[Command]
name = "batterup3"
command = ~D,DB,B, z
time = 15

[Command]
name = "battoss1"
command = ~D,DF,F,a
time = 15

[Command]
name = "battoss2"
command = ~D,DF,F,b
time = 15

[Command]
name = "battoss3"
command = ~D,DF,F,c
time = 15

[Command]
name = "stupidcartwheel1"
command = ~F,D,DF, a
time = 15

[Command]
name = "stupidcartwheel2"
command = ~F,D,DF, b
time = 15

[Command]
name = "stupidcartwheel3"
command = ~F,D,DF, c
time = 15

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
name = "grab" ;Required (do not remove)
command = a+x
time = 1
[Command]
name = "grab" ;Required (do not remove)
command = b+y
time = 1
[Command]
name = "grab" ;Required (do not remove)
command = c+z
time = 1

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
name = "start"
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

;===========================================================================
;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; AI switch -> ON
[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
trigger9 = command = "CPU8"
trigger10 = command = "CPU9"
trigger11 = command = "CPU10"
trigger12 = command = "CPU11"
trigger13 = command = "CPU12"
trigger14 = command = "CPU13"
trigger15 = command = "CPU14"
trigger16 = command = "CPU15"
trigger17 = command = "CPU16"
trigger18 = command = "CPU17"
trigger19 = command = "CPU18"
trigger20 = command = "CPU19"
trigger21 = command = "CPU20"
v = 59
value = 1

[State -1, AI Beat Up] ; punch
type = ChangeState
value = 3200 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <=50
triggerall = power >=2000
trigger1 = p2bodydist x < 150
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 1020||stateno = 1100||stateno = 1110||stateno = 1120) && movecontact

[State -1, AI Beat Up] ; punch
type = ChangeState
value = 3100 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <=50
triggerall = power >=2000
trigger1 = p2bodydist x < 150
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 1020||stateno = 1100||stateno = 1110||stateno = 1120) && movecontact

[State -1, AI Beat Up] ; punch
type = ChangeState
value = 3000 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <=50
triggerall = power >=1000
trigger1 = p2bodydist x < 15
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 1020) && movecontact

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1220 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype != A 
triggerall = !NumHelper
triggerall = random <= 300 && p2bodydist x > 40
trigger1 = p2statetype != A
trigger1 = ctrl = 1  

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1210 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype != A 
triggerall = !NumHelper
triggerall = random <= 300 && p2bodydist x > 40
trigger1 = p2statetype != A
trigger1 = ctrl = 1  

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1200 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = !NumHelper
triggerall = statetype != A 
triggerall = random <= 300 && p2bodydist x > 40
trigger1 = p2statetype != A
trigger1 = ctrl = 1  

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1120 
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 100 && p2bodydist x > 80
trigger1 = p2statetype != A
trigger1 = ctrl = 1  
trigger2 = stateno = 240 && movecontact

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1110 
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 300 && p2bodydist x > 80
trigger1 = p2statetype != A
trigger1 = ctrl = 1  
trigger2 = (stateno = 220||stateno = 250) && movecontact

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1100 
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 500 && p2bodydist x > 80
trigger1 = p2statetype != A
trigger1 = ctrl = 1  
trigger2 = (stateno = 220||stateno = 250) && movecontact

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1050 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype = A 
triggerall = (stateno = 620) && movehit && random <= 600 && power >=1000
trigger1 = p2statetype = A
trigger1 = ctrl = 1  
trigger2 = (stateno = 620) && movehit && random <= 600 && power >=1000

[State -1, AI Rapid Spin (strong)] ; punch
type = ChangeState
value = 1020 
triggerall = roundstate = 2
triggerall = var(59)
triggerall = statetype != A 
triggerall = (stateno = 220||stateno = 250) && movehit && random <= 600 && power >=1000
trigger1 = p2statetype != A
trigger1 = ctrl = 1  
trigger2 = (stateno = 220||stateno = 250) && movehit && random <= 600 && power >=1000

[State -1, AI Hop fwd] ; punch
type = ChangeState
value = 100
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 200 
trigger1 = p2bodydist x > 140 
trigger1 = ctrl = 1 
trigger2 = (stateno = 1100||stateno = 1110||stateno = 1120) && moveguarded


[State -1, AI Hop back] ; punch
type = ChangeState
value = 105
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 1000
triggerall = life < 500
trigger1 = p2bodydist x <= 10
trigger1 = ctrl = 1

[State -1, AI Throw] ; punch
type = ChangeState
value = 800
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = S 
triggerall = random <= 700 && p2bodydist X < 20 
trigger1 = ctrl = 1 

[State -1, AI LP] ; punch
type = ChangeState
value = 200 ;<----------------------- State no. of the animation you want the CPU to perform
triggerall = roundstate = 2 ;<--------- Trigger during the fighting phase of the round "Round One...Fight"
triggerall = var(59); <--------------- AI variable that must be used in every CPU command
triggerall = statetype != A ;<------------ Trigger when the char is not in air
triggerall = random <= 100 ;<------------- Trigger the move in 50% of the times the conditions is met (i'll explain more)
trigger1 = p2statetype != L ;<----------- Trigger when opponent is not lying on the floor
trigger1 = p2bodydist x <= 25 ;<------- Trigger when the opponent is between 0 to 40 pixels away horizontaly
trigger1 = p2statetype != A ;<----------- Trigger when the opponent is not in air
trigger1 = ctrl = 1  ;<-------------------- Character can be controled (Not performing a move)
trigger2 = (stateno = [600,650]) && movecontact ;<--- Trigger it in a combo when in stateno. 210 and the move hit the opponent
trigger3 = stateno = 0 ||stateno = 100 && time = 40

[State -1, AI MP] ; punch
type = ChangeState
value = 210
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = stateno = 200 && movecontact
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
trigger2 = stateno = 200 && movecontact

[State -1, AI MP] ; punch
type = ChangeState
value = 220
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = stateno = 210 && movecontact
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
trigger2 = stateno = 210 && movecontact

[State -1, AI LK] ; punch
type = ChangeState
value = 230
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 100
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 

[State -1, AI MK] ; punch
type = ChangeState
value = 240
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = stateno = 230 && movecontact 
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
trigger2 = stateno = 230 && movecontact

[State -1, AI MK] ; punch
type = ChangeState
value = 250
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = stateno = 240 && movecontact 
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
trigger2 = stateno = 240 && movecontact

[State -1, AI Crouch LP] ; punch
type = ChangeState
value = 400
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = random <= 100
trigger1 = p2bodydist x < 25
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 

[State -1, AI Crouch MP] ; punch
type = ChangeState
value = 410
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = stateno = 400 && movecontact
trigger1 = p2bodydist x < 25
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
trigger2 = (stateno = 200) && moveguarded
trigger3 = (stateno = 400) && movecontact

[State -1, AI Crouch MP] ; punch
type = ChangeState
value = 420
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
trigger1 = p2bodydist x < 25
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
triggerall = (stateno = 410) && movecontact


[State -1, AI Crouch LK] ; punch
type = ChangeState
value = 430
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = p2bodydist x <= 10
trigger1 = p2statetype != L 
trigger1 = p2statetype != A 
trigger1 = ctrl = 1 
trigger2 = stateno = 230 && movecontact

[State -1, AI Crouch MK] ; punch
type = ChangeState
value = 440
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = p2bodydist x < 25 && random <= 8
trigger1 = ctrl = 1 
trigger2 = (stateno = 230) && movecontact
trigger3 = (stateno = 430) && movecontact

[State -1, AI Crouch MK] ; punch
type = ChangeState
value = 440
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype != A 
triggerall = p2bodydist x < 25 && random <= 8
trigger1 = ctrl = 1 
trigger2 = (stateno = 230||stateno = 240) && movecontact
trigger3 = (stateno = 430||stateno = 440) && movecontact


[State -1, AI Jump LP] ; punch
type = ChangeState
value = 600
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = A 
triggerall = statetype != S && statetype != C
triggerall = random <= 300
trigger1 = p2bodydist x < 20
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 
trigger2 = stateno = 420 && movehit && random > 1

[State -1, AI Jump MP] ; punch
type = ChangeState
value = 610
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = A 
triggerall = statetype != S && statetype != C
triggerall = random <= 7||stateno=600 && movecontact
trigger1 = p2bodydist x < 20
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 
trigger2 = (stateno = 600) && movehit && random > 1

[State -1, AI Jump MP] ; punch
type = ChangeState
value = 620
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = A 
triggerall = statetype != S && statetype != C
triggerall = random <= 7||stateno=610 && movecontact
trigger1 = p2bodydist x < 20
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 
trigger2 = (stateno = 610) && movehit && random > 1

[State -1, AI Jump LK] ; punch
type = ChangeState
value = 630
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = A 
triggerall = statetype != S && statetype != C
triggerall = random <= 7||stateno = 600 && movecontact
trigger1 = p2bodydist x < 20
trigger1 = p2statetype = A 
trigger1 = ctrl = 1 
trigger2 = stateno = 420 && movehit && random > 1

[State -1, AI Jump MK] ; punch
type = ChangeState
value = 640
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = A 
triggerall = statetype != S && statetype != C
triggerall = random <= 2||stateno = 630 && movecontact
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != L
trigger1 = ctrl = 1 
trigger2 = (stateno = 630) && movehit && random > 1

[State -1, AI Jump MK] ; punch
type = ChangeState
value = 650
triggerall = roundstate = 2 
triggerall = var(59)
triggerall = statetype = A 
triggerall = statetype != S && statetype != C
triggerall = random <= 2||stateno = 640 && movecontact
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != L
trigger1 = ctrl = 1 
trigger2 = (stateno = 640) && movehit && random > 1

;---------------------------------------------------------------------------
; Shoe Gun
[State -1, Shoe Gun]
type = ChangeState
value = 3200
triggerall = var(59) != 1
triggerall = command = "shoegun"
triggerall = power >=2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,450]) && (movecontact)&& time > 1
trigger3 = ((stateno=1000)||(stateno=1010)||(stateno=1020)) && (movecontact)&& time > 1
trigger4 = stateno= 1300 && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Fire Ball
[State -1, Fire Ball]
type = ChangeState
value = 3100
triggerall = var(59) != 1
triggerall = command = "fireball"
triggerall = power >=1000
triggerall = !NumProj
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,450]) && (movecontact)&& time > 1
trigger3 = ((stateno=1000)||(stateno=1010)||(stateno=1020)) && (movecontact)&& time > 1
trigger4 = stateno= 1300 && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Bat Tornado
[State -1, Bat Tornado]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "battornado"
triggerall = power >=1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1
trigger3 = ((stateno=1030)||(stateno=1040)||(stateno=1050)) && (movecontact)&& time > 1
trigger4 = ((stateno= 1310)||(stateno= 1320)) && (movecontact)&& time > 1
trigger5 = stateno=3000 && movecontact

;---------------------------------------------------------------------------
; Bat Tornado
[State -1, Bat Tornado]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "battornado"
triggerall = power >=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,450]) && (movecontact)&& time > 1
trigger3 = ((stateno=1000)||(stateno=1010)||(stateno=1020)) && (movecontact)&& time > 1
trigger4 = stateno= 1300 && (movecontact)&& time > 1
trigger5 = stateno=3000 && movecontact

;---------------------------------------------------------------------------
; Stupid Cartwheel Strong
[State -1, Stupid Cartwheel Strong]
type = ChangeState
value = 1320
triggerall = var(59) != 1
triggerall = command = "stupidcartwheel3"
trigger1 = statetype != A || statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1
trigger3 = stateno= 1310 && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Stupid Cartwheel Medium
[State -1, Stupid Cartwheel Medium]
type = ChangeState
value = 1310
triggerall = var(59) != 1
triggerall = command = "stupidcartwheel2"
trigger1 = statetype != A || statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Stupid Cartwheel
[State -1, Stupid Cartwheel]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "stupidcartwheel1"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Bat Toss Strong
[State -1, Bat Toss Strong]
type = ChangeState
value = 1220
triggerall = var(59) != 1
triggerall = !Numhelper(1201)&&!Numhelper(1211)&&!Numhelper(1221)
triggerall = command = "battoss3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Bat Toss Medium
[State -1, Bat Toss Medium]
type = ChangeState
value = 1210
triggerall = var(59) != 1
triggerall = !Numhelper(1201)&&!Numhelper(1211)&&!Numhelper(1221)
triggerall = command = "battoss2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Bat Toss
[State -1, Bat Toss]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = !Numhelper(1201)&&!Numhelper(1211)&&!Numhelper(1221)
triggerall = command = "battoss1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; And the Pitch Strong
[State -1, And the Pitch Strong]
type = ChangeState
value = 1120
triggerall = var(59) != 1
triggerall = !Numhelper(1101)&&!Numhelper(1111)&&!Numhelper(1121)
triggerall = command = "andthepitch3"
triggerall = !NumProj
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; And the Pitch Medium
[State -1, And the Pitch Medium]
type = ChangeState
value = 1110
triggerall = var(59) != 1
triggerall = !Numhelper(1101)&&!Numhelper(1111)&&!Numhelper(1121)
triggerall = command = "andthepitch2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; And the Pitch
[State -1, And the Pitch]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "andthepitch1"
triggerall = !Numhelper(1101)&&!Numhelper(1111)&&!Numhelper(1121)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Batter Up Strong
[State -1, Batter Up Strong]
type = ChangeState
value = 1050
triggerall = var(59) != 1
triggerall = command = "batterup3"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Batter Up Medium
[State -1, Batter Up Medium]
type = ChangeState
value = 1040
triggerall = var(59) != 1
triggerall = command = "batterup2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Batter Up
[State -1, Batter Up]
type = ChangeState
value = 1030
triggerall = var(59) != 1
triggerall = command = "batterup1"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno=[600,650]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Batter Up Strong
[State -1, Batter Up Strong]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = command = "batterup3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Batter Up Medium
[State -1, Batter Up Medium]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "batterup2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1

;---------------------------------------------------------------------------
; Batter Up
[State -1, Batter Up]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "batterup1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno=[200,250])||(stateno=[400,410])||(stateno=[430,450]) && (movecontact)&& time > 1
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "grab"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 100

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl && stateno != 100
trigger2 = stateno = 100
trigger3 = stateno = 1300 && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl && stateno != 100
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 1300 && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl && stateno != 100
trigger2 = stateno = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 1300 && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl && stateno != 100
trigger2 = stateno = 100
trigger3 = stateno = 1300 && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl && stateno != 100
trigger2 = stateno = 100
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 1300 && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl && stateno != 100
trigger2 = stateno = 100
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 1300 && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno= 1310||stateno=1320) && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = (stateno= 1310||stateno=1320) && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = (stateno= 1310||stateno=1320) && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno= 1310||stateno=1320) && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = (stateno= 1310||stateno=1320) && (movecontact) && animelem = 20

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = (stateno= 1310||stateno=1320) && (movecontact) && animelem = 20

;---------------------------------------------------------------------------

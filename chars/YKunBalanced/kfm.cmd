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


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "KickSuper"
command = ~$D, $DF, $F, $D, $DF, $F, a
time = 20
[Command]
name = "KickSuper"   ;Same name as above
command = ~$D, $F, $D, $F, a
time = 20
[Command]
name = "KickSuper"   ;Same name as above
command = ~$D, $DF, $F, $D, $DF, $F, b
time = 20
[Command]
name = "KickSuper"   ;Same name as above
command = ~$D, $F, $D, $F, b
time = 20

[Command]
name = "TripleKFPalm"
command = ~$D, $DB, $B, $D, $DB, $B, x
time = 20
[Command]
name = "TripleKFPalm"
command = ~$D,$B, $D, $B, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~$D, $DF, $F, $D, $DF, $F, y
time = 20
[Command]
name = "TripleKFPalm"
command = ~$D, $F, $D, $F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~$D, $DB, $B, $D, $DB, $B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~$D, $DB, $B, $D, $DB, $B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "SJump"   ;Same name as above
command = ~$D, U
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

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
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FB_x"
command = ~10$B, F, x
[Command]
name = "FB_y"
command = ~10$B, F,y

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

;---------------------------------------------------------------------------



[State -1, Default Shit Disabled]
type = AssertSpecial
trigger1 = AILevel
flag = nowalk
flag2 = NoStandGuard
flag3 = NoCrouchGuard
ignorehitpause = 1
[State -1, Default Shit Disabled]
type = AssertSpecial
trigger1 = AILevel
flag = noairguard
ignorehitpause = 1

[State 0, AILevel]
type = VarSet
trigger1 = aiLevel
v = 59
value = ifelse(aiLevel=1, 1, ifelse(aiLevel=2, 4, ifelse(aiLevel=3, 8, ifelse(aiLevel=4, 14, ifelse(aiLevel=5, 21, ifelse(aiLevel=6, 32, ifelse(aiLevel=7,26, ifelse(aiLevel=8,60,0))))))))


[State -1, Parry]
type = ChangeState
value = 700
triggerall = AILevel>=6 && roundstate = 2 && alive && numenemy
triggerall = enemynear,ailevel 
TRIGGERALL = RANDOM<700
triggerall = (stateno != [6565600,6565621]) || (stateno = [6565600,6565621]) && (stateno != [6565610,6565611])
triggerall = movetype = H && gethitvar(hitcount) = 1 && time = 0
triggerall = stateno != 700 && (stateno != [120,160])
trigger1 = hitdefattr != SCA, HA, HP, HT
;trigger1 = !inCustomState

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = !var(55)
triggerall = (stateno != [100,107])
triggerall = ctrl && statetype != A
triggerall = AILevel && alive && numenemy
triggerall =  roundstate = 2 || roundstate = 3 && prevstateno != 195&& stateno != 195
triggerall = enemynear,TeamMode != simul
trigger1 = enemynear,alive = 0 && life < (lifemax*.5)
;---------------------------------------------------------------------------


[State -1, AI Throw]
type = Changestate
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = statetype != A && pos y = 0
triggerall = enemynear,statetype != A 
triggerall = enemynear,movetype != H && enemy,statetype != L
triggerall = stateno != 800
triggerall = ctrl||stateno = 0||(stateno = [120,155])
triggerall = p2bodydist x =[0,20]
trigger1 = (enemynear,stateno = [120,155])||(enemynear,prevstateno = [120,155])
trigger2 =  enemynear,animtime < -4 && !(enemynear,ctrl)
trigger2 = backedgedist < 15
value = 800
[State -1,Ai Recover]
type = ChangeState
value = ifelse(pos y <= -20,5210,5200)
triggerall = aiLevel>=3 && roundstate=2 && alive&& numenemy 
triggerall = enemynear,ailevel = 0 && random < var(59)*ifelse(life < (lifemax*.5),2,1) || enemynear,ailevel
triggerall = statetype = A && statetype != L
trigger1 = stateno = 5050 && canrecover = 1
;Guard
[State -1, AI Guard]
type = ChangeState
value = ifelse(statetype=A||pos y <0,132,ifelse((enemynear,hitdefattr=C,NA,SA,HA,NP,SP,HP),130,131))
triggerall = aiLevel>=3 && roundstate=2 && alive && numenemy 
triggerall = stateno= [0,199]&& stateno != [120,155]
trigger1 = inguarddist 
[State -1, React after blocking]
type = ChangeState
value = var(54)
triggerall = AILevel>4 && RoundState = 2 && numenemy 
trigger1 = (stateno = [130,132]) && enemynear,moveguarded && enemynear,animtime < 0 && !(enemynear,ctrl)
trigger1 = var(54):= ifelse(pos y <0,600,400) || 1



[State -1, AI Jump]
type = ChangeState
value = 41
triggerall = random < var(59)*5 && ctrl
triggerall = aiLevel && roundstate=2 && alive && numenemy && statetype = S && enemynear,statetype != L 
triggerall = (stateno != [100,107]) 
trigger1 = ((enemynear,pos y) + (enemynear,vel y)) < -20 && p2bodydist x < 150 && enemynear,movetype != H

[State -1, AI Run]
type = ChangeState
value = 107
triggerall = AILevel && roundstate = 2 && alive && numenemy
triggerall = stateno != [100,107]
triggerall = statetype != A  && stateno!=[120,155]
trigger1 = random < p2dist x
trigger1 = ctrl 
trigger1 = p2bodydist x > 200

[State 100, 4]
type = ChangeState
triggerall = stateno=107
trigger1 = p2bodydist x <= 90
value = ifelse((enemy,stateno != [5080,5150])&& p2bodydist y > -40,41,0)
ctrl = 1


;---------------------------------------------------------------------------
[State -1, AI Super2]
type = ChangeState
value = 2010
triggerall = AILevel>1 && RoundState = 2 && numenemy && power > 2000
triggerall = stateno != 800
trigger1 = stateno!=[2010,2012]
trigger1 = p2bodydist x = [0,120]
trigger1 = (enemynear,pos y + enemynear,vel y  = [-40,0]) && enemynear,movetype=H
[State -1, AI Super1]
type = ChangeState
value = 2000
triggerall = AILevel>1 && RoundState = 2 && numenemy && power > 1000
triggerall = statetype=S
triggerall = stateno!=[2000,2012]
triggerall = p2bodydist x >0
triggerall = p2dist y  = [-20,0]
triggerall = stateno != 800
trigger1 = HITDEFATTR = SC,NA,SA&movecontact
trigger1 = fvar(11) > 20*fvar(20)

[State -1, AI CHK ]
type = ChangeState
value = 440
triggerall = AILevel>1 && RoundState = 2 && numenemy 
trigger1 = numtarget(1020) && stateno=1021 && ((enemynear,pos y + (enemynear,vel y * 9/fvar(20)))  = [-80,0])
trigger1 = random<500 && fvar(20)>.6


[State -1, AI BigPunch]
type = ChangeState
value = 1030
triggerall = AILevel>1 && RoundState = 2 && numenemy && power > 100
triggerall = stateno!=1030
trigger1 = stateno = 240 && movecontact && random<100
trigger2 = numtarget(800) && stateno=1031 && ((enemynear,pos y + (enemynear,vel y * 17))  = [-80,0])
TRIGGER3 = numtarget(1002) && stateno=1004 && time > 30
TRIGGER3 = target(1002),backedgedist < 20
trigger4 = fvar(20)>.5
trigger4 = p2bodydist x > 10
trigger4 = numtarget(1020) && stateno=1021 && ((enemynear,pos y + (enemynear,vel y * 17))  = [-80,0])
trigger4 = random< 300


[State -1, AI DashPunch]
type = ChangeState
value = 1020
triggerall = AILevel>1 && RoundState = 2 && numenemy 
triggerall = p2bodydist x < 200
trigger1= stateno=1004
TRIGGER1 = numtarget(1002) && ((enemynear,pos y + (enemynear,vel y * 13+(p2dist x*.5)))  = [-90,0])
TRIGGER2 = stateno=1031&&numtarget(1030)&&((enemynear,pos y + (enemynear,vel y * 13))  = [-90,0])


[State -1, AI StandLightPunch Chain]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = stateno = 200 && movecontact
trigger1 = var(54):= ifelse(prevstateno=200,230,200) || 1
trigger2 = stateno = 230 && movecontact
trigger2 = var(54):= 231 || 1
trigger3 = stateno = 231 && movecontact
trigger3 = var(54):= 232 || 1
trigger4 = stateno = 232 && movecontact && animelemtime(19)>0
trigger4 = var(54):= 210 || 1

[State -1, AI StandHeavyPunch Chain]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = stateno = 210 && movecontact
trigger1 = var(54):= 212 || 1
trigger2 = stateno = 212 && movecontact && target,stateno=633
trigger2 = var(54):= 240 || 1
trigger3 = stateno = 240 && movehit 
trigger3 = var(54):= ifelse(power>100,1020,440) || 1
trigger4 = stateno = 440 && movehit
trigger4 = var(54):= 41 || 1


[State -1, AI CrouchLightPunch Chain]
type = ChangeState
value = var(54)
triggerall = AILevel>1 && RoundState = 2&& numenemy 
trigger1 = stateno = 400 && movecontact
trigger1 = var(54):= ifelse(prevstateno!=400,400,430) || 1
trigger2 = stateno = 430 && movecontact
trigger2 = var(54):= 410 || 1
trigger3 = stateno = 410 && movehit
trigger3 = var(54):= 440 || 1

[State 0, Turn]
type = Turn
trigger1 = ailevel && prevstateno=1020 && p2bodydist x < -40
trigger1 = numtarget
;ignorehitpause = 
;persistent = 

[State -1, AI CLK ]
type = ChangeState
value = 430
triggerall = AILevel>1 && RoundState = 2 && numenemy 
trigger1 = numtarget(1020) && stateno=1021 && ((enemynear,pos y + (enemynear,vel y * 3))  = [-50,0])
trigger1 = p2bodydist x < 90
trigger1 = random<500 && fvar(20)<.6

[State -1, AirAttack]
type = ChangeState
value = 1010
triggerall = aiLevel && roundstate=2 && alive && numtarget&& !var(11)
triggerall = statetype = A
trigger1 = stateno=640
trigger1 = movecontact
[State -1, AirAttack]
type = ChangeState
value = 1000
triggerall = aiLevel && roundstate=2 && alive && numtarget && var(10)<2
triggerall = statetype = A
trigger1 = ((pos y) + (vel y)) > -30||var(11)
trigger1 = stateno=[610,640]
trigger1 = movecontact
trigger2 = p2dist y > 80 && stateno=1010

[State -1, AirAttack]
type = ChangeState
value = 630
triggerall = aiLevel && roundstate=2 && alive && numtarget
triggerall = statetype = A
trigger1 = stateno=600&&movecontact&&prevstateno=600&&p2dist y = [-60,30]
trigger2 = stateno=600&&movecontact&&p2dist y >30
[State -1, AirAttack]
type = ChangeState
value = 610
triggerall = aiLevel && roundstate=2 && alive && numtarget
triggerall = statetype = A
trigger1 = stateno=630&&movecontact&&((pos y) + (vel y)) < -60
[State -1, AirAttack]
type = ChangeState
value = 640
triggerall = aiLevel && roundstate=2 && alive && numtarget
triggerall = statetype = A
trigger1 = stateno=610&&movecontact
trigger2 = stateno=630&&movecontact


[State -1, AirAttack]
type = ChangeState
value = 600
triggerall = aiLevel && roundstate=2 && alive && numenemy
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype = A
triggerall = p2dist x < 110*const(size.xscale) && p2dist y = [-120,60]
trigger1 = !numtarget
trigger1 = ctrl || stateno=[5210,5200]
trigger2 = stateno=600&&movecontact&&prevstateno!=600
trigger3 = stateno=50
trigger4 =stateno=1010&&movecontact
[State -1, AI LightPunch]
type = ChangeState
value = ifelse(p2bodydist x > 40&&random<700,400,200)
triggerall = aiLevel && roundstate=2 && alive && numenemy&& !numtarget
triggerall = ctrl ||stateno=0|| (stateno = [120,140])||stateno=107
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = statetype != A
triggerall = (p2bodydist x = [-5,60]) && (enemynear,pos y + (enemynear,vel y * 6))  = [-70,0]
trigger1 = 1
trigger2 = (enemynear(!enemynear,alive),stateno != [0,199]) && enemynear(!enemynear,alive),ctrl = 0 && enemynear(!enemynear,alive),animtime <= -3 ;thank u jade
[State -1, AI DashPunch]
type = ChangeState
value = 1020
triggerall = aiLevel && roundstate=2 && alive && numenemy && !numtarget
triggerall = ctrl||stateno=107
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = random<100
triggerall = p2bodydist x = [70,200]
trigger1 = (enemynear(!enemynear,alive),stateno != [0,199]) && enemynear(!enemynear,alive),ctrl = 0 && enemynear(!enemynear,alive),animtime <= -13 ;thank u jade

[State -1, AirAttack]
type = ChangeState
value = 1010
triggerall = aiLevel && roundstate=2 && alive && numenemy && !numtarget&& !var(11)
triggerall = enemynear(!enemynear,alive), statetype != L
triggerall = p2bodydist x = [0,40]
triggerall = ctrl||stateno=107|| stateno=[5210,5200]
trigger1 = p2bodydist x < 30&&p2dist y > 10
trigger1 = (enemynear(!enemynear,alive),stateno != [0,199]) && enemynear(!enemynear,alive),ctrl = 0 && enemynear(!enemynear,alive),animtime <= -9

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
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall=!ailevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall=!ailevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;Run Back
[State -1, SJUMP]
type = ChangeState
value = 42
triggerall=!ailevel
trigger1 = command = "SJump"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Light Punch
[State -1, Super]
type = ChangeState
value = 2020
triggerall=!ailevel
triggerall = power = 3000
triggerall = command = "SmashKFUpper"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 =HITDEFATTR = SCA,NA,SA&movecontact




;Stand Light Punch
[State -1, Super]
type = ChangeState
value = 2010
triggerall=!ailevel
triggerall = power >= 2000
triggerall = command = "KickSuper"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 =HITDEFATTR = SCA,NA,SA&movecontact



;Stand Light Punch
[State -1, Super]
type = ChangeState
value = 2000
triggerall=!ailevel
triggerall = power >= 1000
triggerall = command = "TripleKFPalm"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 =HITDEFATTR = SC,NA,SA&movecontact


;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall=!ailevel
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100

;Jump Light Punch
[State -1, BellyFlop]
type = ChangeState
value = 1000
triggerall=!ailevel
triggerall = power>100
triggerall = var(10)<1
triggerall = command = "QCF_x"||command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610||stateno=640
trigger2 = moveContact
;Stand Light Punch
[State -1, HardPunch]
type = ChangeState
value = 1030
triggerall=!ailevel
triggerall = power>200
triggerall = command = "QCF_x"||command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 =HITDEFATTR = SC,NA&&movecontact
[State -1, DashPunch]
type = ChangeState
value = 1020
triggerall=!ailevel
triggerall = power>100
triggerall = command = "FB_x"||command = "FB_y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 =HITDEFATTR = SCA,NA&&movecontact

[State -1, AirKick]
type = ChangeState
value = 1010
triggerall=!ailevel
triggerall = power>100
triggerall = !var(11)
triggerall = command = "QCF_a"||command = "QCF_b"
trigger1 = ctrl
trigger2 =HITDEFATTR = SCA,NA&&movecontact

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall=!ailevel
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200&&movecontact&&PrevStateNo!=200

;---------------------------------------------------------------------------
;Knockdown
[State -1, Knockdown]
type = ChangeState
value = 211
triggerall=!ailevel
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = (stateno = 210) &&movecontact

;Floorbounce
[State -1, BodySlam]
type = ChangeState
value = 212
triggerall=!ailevel
triggerall = command = "y" 
triggerall = command != "holddown"
trigger1 = (stateno = 210) &&movecontact
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall=!ailevel
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) &&movecontact
trigger3 = (stateno = [230,231]) &&movecontact
trigger4 = stateno = 232 &&animelemtime(19)>0 &&movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick3]
type = ChangeState
value = 232
triggerall=!ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (stateno = 231)&&movecontact
;Stand Light Kick
[State -1, Stand Light Kick2]
type = ChangeState
value = 231
triggerall=!ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (stateno = 230)&&animelemtime(2)>0
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=!ailevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210])&&movecontact
trigger3 = (stateno = 230)&&movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=!ailevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) &&movecontact
trigger3 = (stateno = [230,231]) &&movecontact
trigger4 = stateno = 232 &&animelemtime(19)>0 &&movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall=!ailevel
triggerall = (roundstate = [2,3])
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movehit&&win

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall=!ailevel
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=400&&MoveContact&&prevstateno!=400
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall=!ailevel
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=400&&MoveContact
trigger3 = stateno=430&&MoveContact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall=!ailevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno=[400,410])&&MoveContact
trigger3 = (stateno=[230,232])&&MoveContact
trigger4 = stateno=430&&MoveContact&&prevstateno!=430
;---------------------------------------------------------------------------

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall=!ailevel
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=410&&MoveContact
trigger3 = stateno=430&&MoveContact
trigger4 = stateno=240&&MoveContact
trigger5 = stateno=212&&MoveContact
;---------------------------------------------------------------------------


;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall=!ailevel
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600&&MoveContact&&prevstateno!=600

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall=!ailevel
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall=!ailevel
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall=!ailevel
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;-| Supers |------------------------------------------------------
[Command]
name = "temblor_x"
command = ~D, F, D, F, x
time = 40
[Command]
name = "temblor_y"
command = ~D, F, D, F, y
time = 40
[Command]
name = "bunker_a"
command = ~D, F, D, F, a
time = 40
[Command]
name = "bunker_b"
command = ~D, F, D, F, b
time = 40
;-| Specials |------------------------------------------------------
[Command]
name = "golpe_xx"
command = ~D, F, x
time = 15
[Command]
name = "golpe_yy"
command = ~D, F, y
time = 15
[Command]
name = "golpe_x"
command = ~D, B, x
time = 15
[Command]
name = "golpe_y"
command = ~D, B, y
time = 15
[Command]
name = "bgolpe_x"
command = ~D, F, x
time = 15
[Command]
name = "bgolpe_y"
command = ~D, F, y
time = 15
[Command]
name = "giro_a"
command = ~D, F, a
time = 15
[Command]
name = "giro_b"
command = ~D, F, b
time = 15
[Command]
name = "tiembla_a"
command = ~D, B, a
time = 15
[Command]
name = "tiembla_b"
command = ~D, B, b
time = 15
[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 15
[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 15
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "ab"
command = a+x
time = 1

;-| Dir + Button |----------------------------------------------------

[Command]
name = "fwd_x+y"
command = /F,x+y
time = 1

[Command]
name = "fwd_x+z"
command = /F,x+z
time = 1

[Command]
name = "fwd_y+z"
command = /F,y+z
time = 1

[Command]
name = "back_x+y"
command = /B,x+y
time = 1

[Command]
name = "back_x+z"
command = /B,x+z
time = 1

[Command]
name = "back_y+z"
command = /B,y+z
time = 1

[Command]
name = "fwd_a+b"
command = /F,a+b
time = 1

[Command]
name = "fwd_b+c"
command = /F,b+c
time = 1

[Command]
name = "fwd_a+c"
command = /F,a+c
time = 1

[Command]
name = "back_a+b"
command = /B,a+b
time = 1

[Command]
name = "back_b+c"
command = /B,b+c
time = 1

[Command]
name = "back_a+c"
command = /B,a+c
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "fwd_s"
command = /F,s
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
;---------------------------------------------------------------------------;
;                           [ Parrying Commands ]                           ;
;---------------------------------------------------------------------------;
[Command]
name                = "block_c"
command             = D;,~D
time                = 8
                    
[Command]           
name                = "block_sa"
command             = F;,~F
time                = 8

[Command]
name            = "superjump"
command         = ~$D, $U
;---------------------------------------------------------------------------;


[Statedef -1]

;---------------------------------------------------------------------------;
;                             [ Optimizacion de cmd ]                       ;
;---------------------------------------------------------------------------;
[State -1:          Borrar variable]
type                = VarSet
trigger1            = 1
var(20)             = 0

;prendemos un bit si esta en groove cvs, si el bit vale 0 esta en modo omega
[State -1:          CvS Groove]
type                = VarSet
trigger1            = Var(7) = 0
var(20)             = Var(20)|1

;prendemos un bit si tiene control la AI
[State -1:          Shadow Groove]
type                = VarSet
trigger1            = Var(4) =1
var(20)             = Var(20)|2

;prendemos un bit si tiene control
[State -1:          1]
type                = VarSet
trigger1            = ctrl
var(20)             = Var(20)|4

;prendemos un bit si estas de pie 
[State -1:          2]
type                = VarSet
trigger1            = StateType = S
var(20)             = Var(20)|8

;prendemos un bit si estas agachado
[State -1:          3]
type                = VarSet
trigger1            = StateType = C
var(20)             = Var(20)|16

;prendemos un bit si estas en el aire
[State -1:          4]
type                = VarSet
trigger1            = StateType = A
var(20)             = Var(20)|32

;prendemos un bit si tiene mas de 1000 de poder
[State -1:          5]
type                = VarSet
trigger1            = power >=1000
var(20)             = Var(20)|64

;prendemos un bit si tiene mas de 2000 de poder
[State -1:          6]
type                = VarSet
trigger1            = power >=2000
var(20)             = Var(20)|128

;prendemos un bit si tiene mas de 3000 de poder
[State -1:          7]
type                = VarSet
trigger1            = power >=3000
var(20)             = Var(20)|256

;prendemos un bit si no hay projectiles
[State -1:          8]
type                = VarSet
trigger1            = !numprojid(1000)&&!numprojid(1002)&&!numhelper(1000)&&!numhelper(1001)
var(20)             = Var(20)|512

[State -1:          Sommer soult]
type                = VarSet
trigger1            = stateno = 1100||stateno = 1120
var(20)             = Var(20)|600

[State -1:          Stand Moves]
type                = VarSet
trigger1            = stateno = 200 && AnimElemNo(0) = 3 && movecontact
trigger2            = stateno = 210 && AnimElemNo(0) = 3 && movecontact
trigger3            = stateno = 220 && AnimElemNo(0) = 3 && movecontact
trigger4            = stateno = 230 && AnimElemNo(0) = 4 && movecontact
trigger5            = stateno = 240 && AnimElemNo(0) = 3 && movecontact
trigger6            = stateno = 250 && AnimElemNo(0) = 3 && movecontact
trigger7            = stateno = 260 && AnimElemNo(0) = 3 && movecontact
IgnoreHitPause	    = 1
var(20)             = Var(20)|1000

[State -1:          Crunch Moves]
type                = VarSet
trigger1            = stateno = 400 && AnimElemNo(0) = 3 && movecontact
trigger3            = stateno = 410 && AnimElemNo(0) = 3 && movecontact
trigger5            = stateno = 420 && AnimElemNo(0) = 3 && movecontact
trigger7            = stateno = 430 && AnimElemNo(0) = 3 && movecontact
IgnoreHitPause	    = 1
var(20)             = Var(20)|1001

[State -1:          Crunch Moves]
type                = VarSet
trigger1            = stateno = 600 && AnimElemNo(0) = 3 && movecontact
trigger3            = stateno = 610 && AnimElemNo(0) = 3 && movecontact
trigger5            = stateno = 620 && AnimElemNo(0) = 3 && movecontact
trigger7            = stateno = 630 && AnimElemNo(0) = 3 && movecontact
IgnoreHitPause	    = 1
var(20)             = Var(20)|1002
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[State -1]
type                = ChangeState
triggerall          = ((command = "temblor_x"||command = "temblor_y")&&power>=1000) && ((Var(20)&2)=0)
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = [200,299])&&AnimElemNo(3)>0&&movehit
value               = 2100
[State -1]
type                = ChangeState
triggerall          = ((command = "bunker_a"||command = "bunker_b")&&power>=2000) && ((Var(20)&2)=0)
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = [200,299])&&AnimElemNo(3)>0&&movehit
value               = 2000
[State -1]
type                = ChangeState
triggerall          = (command = "upper_x"||command = "upper_y") && ((Var(20)&2)=0)
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1040
;[State -1]
;type                = ChangeState
;triggerall          = (command = "tiembla_a"||command="tiembla_b")&&((Var(20)&2)=0)
;trigger1            = (Var(20)&32) && (Var(20)&4)
;value               = 1050
[State -1]
type                = ChangeState
triggerall          = (command = "giro_a")&&((Var(20)&2)=0)
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1030
[State -1]
type                = ChangeState
triggerall          = (command="giro_b")&&((Var(20)&2)=0)
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1033
[State -1]
type                = ChangeState
triggerall          = (command = "bgolpe_y")&&((Var(20)&2)=0);||command = "sonicboom_y"||command = "sonicboom_z") && 
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1020
[State -1]
type                = ChangeState
triggerall          = (command="bgolpe_x")&&((Var(20)&2)=0);||command = "sonicboom_y"||command = "sonicboom_z") && 
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1023
[State -1]
type                = ChangeState
triggerall          = (command = "golpe_x")&&((Var(20)&2)=0);||command = "sonicboom_y"||command = "sonicboom_z") && 
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1000
[State -1]
type                = ChangeState
triggerall          = (command="golpe_y")&&((Var(20)&2)=0);||command = "sonicboom_y"||command = "sonicboom_z") && 
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 1100
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[State -1]
type                = ChangeState
value               = 100
trigger1            = command = "FF"
trigger1            = statetype = S
trigger1            = ctrl = 1
[State -1]
type                = ChangeState
triggerall          = (command = "FF")&&(statetype = A)&&(var(18) = 0)
trigger1            = ctrl
trigger2            = (stateno=[600,699])&&animelemtime(3)>0&&movehit
value               = 103
[State -1]
type                = ChangeState
triggerall          = (command = "BB")&&(statetype = A)&&(var(18) = 0)
trigger1            = ctrl
trigger2            = (stateno=[600,699])&&animelemtime(3)>0&&movehit
value               = 102
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[State -1]
type                = ChangeState
value               = 105
trigger1            = command = "BB"
trigger1            = statetype = S
trigger1            = ctrl = 1
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Stand Moves ]                               ;
;---------------------------------------------------------------------------;
[State -1:          Light Punch]
type                = ChangeState
triggerall          = (command != "holddown") && (command = "x")
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = stateno=200&&animelemtime(3)>0
value               = 200
[State -1, Batter Up!]
type = ChangeState
value = 800
triggerall          = command = "y"
triggerall          = statetype = S
triggerall          = ctrl
triggerall          = stateno != 100
trigger1            = command = "holdfwd"
trigger1            = p2bodydist X < 3
trigger1            = (p2statetype = S) || (p2statetype = C)
trigger1            = p2movetype != H
trigger2            = command = "holdback"
trigger2            = p2bodydist X < 10
trigger2            = (p2statetype = S) || (p2statetype = C)
trigger2            = p2movetype != H
[State -1:          strong Punch Large]
type                = ChangeState
triggerall          = (command != "holddown") && (command = "y")
trigger1            = (Var(20)&8) && (Var(20)&4) 
value               = 201
[State -1:          hard Punch Small]
type                = ChangeState
triggerall          = command = "y"&&command = "b"
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 202
[State -1:          Light Kick Large]
type                = ChangeState
triggerall          = (command != "holddown") && (command = "a")
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 203
[State -1:          strong Kick Small]
type                = ChangeState
triggerall          = (command != "holddown") && (command = "b")
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 204
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Crunch Moves ]                              ;
;---------------------------------------------------------------------------;
[State -1:		    Light Punch]
type                = ChangeState
triggerall          = (command = "holddown") && (command = "x")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 400
[State -1:		    strong Punch]
type                = ChangeState
triggerall          = (command = "holddown") && (command = "y")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 401
[State -1:		    Light Kick]
type                = ChangeState
triggerall          = (command = "holddown") && (command = "a")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 402
[State -1:		    Strong kick]
type                = ChangeState
triggerall          = (command = "holddown") && (command = "b")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 403
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Air Moves ]                                 ;
;---------------------------------------------------------------------------;
[State -1:          Light Punch]
type                = ChangeState
triggerall          = (command = "x")
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 600
[State -1:          strong Punch]
type                = ChangeState
triggerall          = (command = "y")
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 601
[State -1:          Light Kick]
type                = ChangeState
triggerall          = (command = "a")
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 602
[State -1:          strong Kick]
type                = ChangeState
triggerall          = (command = "b")
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 603
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------


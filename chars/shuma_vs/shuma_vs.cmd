


[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time=15
command.buffer.time=1

;==========================================CHARGE BACK THEN FORWARD========================== 
[command]
name = "charge_x"
command = ~30$B,F,x
time = 10
[command]
name = "charge_y"
command = ~30$B,F,y
time = 10
[command]
name = "charge_z"
command = ~30$B,F,z
time = 10
[command]
name = "charge_a"
command = ~30$B,F,a
time = 10
[command]
name = "charge_b"
command = ~30$B,F,b
time = 10
[command]
name = "charge_c"
command = ~30$B,F,c
time = 10
[command]
name = "charge_x"
command = ~30$B,F,~x
time = 10
[command]
name = "charge_y"
command = ~30$B,F,~y
time = 10
[command]
name = "charge_z"
command = ~30$B,F,~z
time = 10
[command]
name = "charge_a"
command = ~0$B,F,~a
time = 10
[command]
name = "charge_b"
command = ~30$B,F,~b
time = 10
[command]
name = "charge_c"
command = ~30$B,F,~c
time = 10
;===========================================CHARGE DOWN THEN UP==============================
[command]
name = "vcharge_x"
command = ~30$D,U,x
time = 45
[command]
name = "vcharge_y"
command = ~30$D,U,y
time = 45
[command]
name = "vcharge_z"
command = ~30$D,U,z
time = 45
[command]
name = "vcharge_a"
command = ~30$D,U,a
time = 45
[command]
name = "vcharge_b"
command = ~30$D,U,b
time = 45
[command]
name = "vcharge_c"
command = ~30$D,U,c
time = 45
[command]
name = "vcharge_x"
command = ~30$D,U,~x
time = 45
[command]
name = "vcharge_y"
command = ~30$D,U,~y
time = 45
[command]
name = "vcharge_z"
command = ~30$D,U,~z
time = 45
[command]
name = "vcharge_a"
command = ~30$D,U,~a
time = 45
[command]
name = "vcharge_b"
command = ~30$D,U,~b
time = 45
[command]
name = "vcharge_c"
command = ~30$D,U,~c
time = 45
;===============================================HOLD BUTTON====================================
[command]
name = "hold x"
command = /$x
time = 1
[command]
name = "hold y"
command = /$y
time = 1
[command]
name = "hold z"
command = /$z
time = 1
[command]
name = "hold a"
command = /$a
time = 1
[command]
name = "hold b"
command = /$b
time = 1
[command]
name = "hold c"
command = /$c
time = 1
;======================================REVERSE DRAGON PUNCH SINGLE BUTTON=======================
[command]
name = "rdp_x"
command = ~B, D, DB, x
[command]
name = "rdp_y"
command = ~B, D, DB, y
[command]
name = "rdp_z"
command = ~B, D, DB, z
[command]
name = "rdp_a"
command = ~B, D, DB, a
[command]
name = "rdp_b"
command = ~B, D, DB, b
[command]
name = "rdp_c"
command = ~B, D, DB, c
[command]
name = "rdp_x"
command = ~B, D, DB, ~x
[command]
name = "rdp_y"
command = ~B, D, DB, ~y
[command]
name = "rdp_z"
command = ~B, D, DB, ~z
[command]
name = "rdp_a"
command = ~B, D, DB, ~a
[command]
name = "rdp_b"
command = ~B, D, DB, ~b
[command]
name = "rdp_c"
command = ~B, D, DB, ~c
;======================================REVERSE DRAGON PUNCH DOUBLE BUTTON=======================
[command]
name = "rdp_xy"
command = ~B, D, DB, x+y
[command]
name = "rdp_xy"
command = ~B, D, DB, y+z
[command]
name = "rdp_xy"
command = ~B, D, DB, x+z
[command]
name = "rdp_ab"
command = ~B, D, DB, a+b
[command]
name = "rdp_ab"
command = ~B, D, DB, b+c
[command]
name = "rdp_ab"
command = ~B, D, DB, a+c
[command]
name = "rdp_xy"
command = ~B, D, DB, ~x+y
[command]
name = "rdp_xy"
command = ~B, D, DB, ~y+z
[command]
name = "rdp_xy"
command = ~B, D, DB, ~x+z
[command]
name = "rdp_ab"
command = ~B, D, DB, ~a+b
[command]
name = "rdp_ab"
command = ~B, D, DB, ~b+c
[command]
name = "rdp_ab"
command = ~B, D, DB, ~a+c
;========================================DRAGON PUNCH SINGLE BUTTON============================
[command]
name = "dp_x"
command = ~F, D, DF, x
[command]
name = "dp_y"
command = ~F, D, DF, y
[command]
name = "dp_z"
command = ~F, D, DF, z
[command]
name = "dp_a"
command = ~F, D, DF, a
[command]
name = "dp_b"
command = ~F, D, DF, b
[command]
name = "dp_c"
command = ~F, D, DF, c
[command]
name = "dp_x"
command = ~F, D, DF, ~x
[command]
name = "dp_y"
command = ~F, D, DF, ~y
[command]
name = "dp_z"
command = ~F, D, DF, ~z
[command]
name = "dp_a"
command = ~F, D, DF, ~a
[command]
name = "dp_b"
command = ~F, D, DF, ~b
[command]
name = "dp_c"
command = ~F, D, DF, ~c
;==========================================DRAGON PUNCH DOUBLE BUTTON==========================
[command]
name = "dp_xy"
command = ~F, D, DF, x+y
[command]
name = "dp_xy"
command = ~F, D, DF, x+z
[command]
name = "dp_xy"
command = ~F, D, DF, y+z
[command]
name = "dp_ab"
command = ~F, D, DF, a+b
[command]
name = "dp_ab"
command = ~F, D, DF, a+c
[command]
name = "dp_ab"
command = ~F, D, DF, b+c
[command]
name = "dp_xy"
command = ~F, D, DF, ~x+y
[command]
name = "dp_xy"
command = ~F, D, DF, ~y+z
[command]
name = "dp_xy"
command = ~F, D, DF, ~x+z
[command]
name = "dp_ab"
command = ~F, D, DF, ~a+b
[command]
name = "dp_ab"
command = ~F, D, DF, ~a+c
[command]
name = "dp_ab"
command = ~F, D, DF, ~b+c
;==========================================FIREBALL SINGLE BUTTON==============================
[command]
name = "qcf_x"
command = ~D, DF, F, x
[command]
name = "qcf_y"
command = ~D, DF, F, y
[command]
name = "qcf_z"
command = ~D, DF, F, z
[command]
name = "qcf_a"
command = ~D, DF, F, a
[command]
name = "qcf_b"
command = ~D, DF, F, b
[command]
name = "qcf_c"
command = ~D, DF, F, c
[command]
name = "qcf_x"
command = ~D, DF, F, ~x
[command]
name = "qcf_y"
command = ~D, DF, F, ~y
[command]
name = "qcf_z"
command = ~D, DF, F, ~z
[command]
name = "qcf_a"
command = ~D, DF, F, ~a
[command]
name = "qcf_b"
command = ~D, DF, F, ~b
[command]
name = "qcf_c"
command = ~D, DF, F, ~c
;==========================================FIREBALL DOUBLE BUTTON==============================
[command]
name = "qcf_xy"
command = ~D, DF, F, x+y
[command]
name = "qcf_xy"
command = ~D, DF, F, x+z
[command]
name = "qcf_xy"
command = ~D, DF, F, y+z
[command]
name = "qcf_ab"
command = ~D, DF, F, a+b
[command]
name = "qcf_ab"
command = ~D, DF, F, b+c
[command]
name = "qcf_ab"
command = ~D, DF, F, a+c
[command]
name = "qcf_xy"
command = ~D, DF, F, ~x+y
[command]
name = "qcf_xy"
command = ~D, DF, F, ~x+z
[command]
name = "qcf_xy"
command = ~D, DF, F, ~y+z
[command]
name = "qcf_ab"
command = ~D, DF, F, ~a+b
[command]
name = "qcf_ab"
command = ~D, DF, F, ~b+c
[command]
name = "qcf_ab"
command = ~D, DF, F, ~a+c
;====================================HALF CIRCLE FORWARD SINGLE BUTTON========================
[command]
name = "hcf_x"
command = ~B, D, F, x
time = 40
[command]
name = "hcf_y"
command = ~B, D, F, y
time = 40
[command]
name = "hcf_z"
command = ~B, D, F, z
time = 40
[command]
name = "hcf_x"
command = ~B, D, F, ~x
time = 40
[command]
name = "hcf_y"
command = ~B, D, F, ~y
time = 40
[command]
name = "hcf_z"
command = ~B, D, F, ~z
time = 40
[command]
name = "hcf_a"
command = ~B, D, F, a
time = 40
[command]
name = "hcf_b"
command = ~B, D, F, b
time = 40
[command]
name = "hcf_c"
command = ~B, D, F, c
time = 40
[command]
name = "hcf_a"
command = ~B, D, F, ~a
time = 40
[command]
name = "hcf_b"
command = ~B, D, F, ~b
time = 40
[command]
name = "hcf_c"
command = ~B, D, F, ~c
time = 40
;====================================HALF CIRCLE FORWARD DOUBLE BUTTON=========================
[command]
name = "hcf_xy"
command = ~B, D, F, x+z
time = 40
[command]
name = "hcf_xy"
command = ~B, D, F, y+z
time = 40
[command]
name = "hcf_xy"
command = ~B, D, F, x+y
time = 40
[command]
name = "hcf_xy"
command = ~B, D, F, ~x+z
time = 40
[command]
name = "hcf_xy"
command = ~B, D, F, ~y+z
time = 40
[command]
name = "hcf_xy"
command = ~B, D, F, ~x+y
time = 40
[command]
name = "hcf_ab"
command = ~B, D, F, a+b
time = 40
[command]
name = "hcf_ab"
command = ~B, D, F, b+c
time = 40
[command]
name = "hcf_ab"
command = ~B, D, F, a+c
time = 40
[command]
name = "hcf_ab"
command = ~B, D, F, ~a+b
time = 40
[command]
name = "hcf_ab"
command = ~B, D, F, ~b+c
time = 40
[command]
name = "hcf_ab"
command = ~B, D, F, ~a+c
time = 40
;======================================HALF CIRCLE BACK SINGLE BUTTON==========================
[command]
name = "hcb_x"
command = ~F, D, B, x
time = 40
[command]
name = "hcb_y"
command = ~F, D, B, y
time = 40
[command]
name = "hcb_z"
command = ~F, D, B, z
time = 40
[command]
name = "hcb_x"
command = ~F, D, B, ~x
time = 40
[command]
name = "hcb_y"
command = ~F, D, B, ~y
time = 40
[command]
name = "hcb_z"
command = ~F, D, B, ~z
time = 40
[command]
name = "hcb_a"
command = ~F, D, B, a
time = 40
[command]
name = "hcb_b"
command = ~F, D, B, b
time = 40
[command]
name = "hcb_c"
command = ~F, D, B, c
time = 40
[command]
name = "hcb_a"
command = ~F, D, B, ~a
time = 40
[command]
name = "hcb_b"
command = ~F, D, B, ~b
time = 40
[command]
name = "hcb_c"
command = ~F, D, B, ~c
time = 40
;=====================================HALF CIRCLE BACK DOUBLE BUTTON=========================
[command]
name = "hcb_xy"
command = ~F, D, B, x+z
time = 40
[command]
name = "hcb_xy"
command = ~F, D, B, y+z
time = 40
[command]
name = "hcb_xy"
command = ~F, D, B, x+y
time = 40
[command]
name = "hcb_xy"
command = ~F, D, B, ~x+z
time = 40
[command]
name = "hcb_xy"
command = ~F, D, B, ~y+z
time = 40
[command]
name = "hcb_xy"
command = ~F, D, B, ~x+y
time = 40
[command]
name = "hcb_ab"
command = ~F, D, B, a+b
time = 40
[command]
name = "hcb_ab"
command = ~F, D, B, b+c
time = 40
[command]
name = "hcb_ab"
command = ~F, D, B, a+c
time = 40
[command]
name = "hcb_ab"
command = ~F, D, B, ~a+b
time = 40
[command]
name = "hcb_ab"
command = ~F, D, B, ~b+c
time = 40
[command]
name = "hcb_ab"
command = ~F, D, B, ~a+c
time = 40
;==========================================HURRICANE SINGLE BUTTON=============================
[command]
name = "qcb_x"
command = ~D, DB, B, ~x
[command]
name = "qcb_y"
command = ~D, DB, B, ~y
[command]
name = "qcb_z"
command = ~D, DB, B, ~z
[command]
name = "qcb_a"
command = ~D, DB, B, ~a
[command]
name = "qcb_b"
command = ~D, DB, B, ~b
[command]
name = "qcb_c"
command = ~D, DB, B, ~c
[command]
name = "qcb_x"
command = ~D, DB, B, x
[command]
name = "qcb_y"
command = ~D, DB, B, y
[command]
name = "qcb_z"
command = ~D, DB, B, z
[command]
name = "qcb_a"
command = ~D, DB, B, a
[command]
name = "qcb_b"
command = ~D, DB, B, b
[command]
name = "qcb_c"
command = ~D, DB, B, c
;==========================================HURRICANE DOUBLE BUTTON=============================
[command]
name = "qcb_ab"
command = ~D, DB, B, a+b
[command]
name = "qcb_ab"
command = ~D, DB, B, b+c
[command]
name = "qcb_ab"
command = ~D, DB, B, a+c
[command]
name = "qcb_xy"
command = ~D, DB, B, x+y
[command]
name = "qcb_xy"
command = ~D, DB, B, y+z
[command]
name = "qcb_xy"
command = ~D, DB, B, x+z
[command]
name = "qcb_ab"
command = ~D, DB, B, ~a+b
[command]
name = "qcb_ab"
command = ~D, DB, B, ~b+c
[command]
name = "qcb_ab"
command = ~D, DB, B, ~a+c
[command]
name = "qcb_xy"
command = ~D, DB, B, ~x+y
[command]
name = "qcb_xy"
command = ~D, DB, B, ~y+z
[command]
name = "qcb_xy"
command = ~D, DB, B, ~x+z
;============================================= SINGLE BUTTONS ================================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1
;=======================================DOUBLE TAP BUTTONS ================================
[Command]
name="aa"
command=~a,a
time=15
[Command]
name="bb"
command=~b,b
time=15
[Command]
name="cc"
command=~c,c
time=15
[Command]
name="aa"
command=a,a
time=15
[Command]
name="bb"
command=b,b
time=15
[Command]
name="cc"
command=c,c
time=15
[Command]
name="xx"
command=~x,x
time=15
[Command]
name="yy"
command=~y,y
time=15
[Command]
name="zz"
command=~z,z
time=15
[Command]
name="xx"
command=x,x
time=15
[Command]
name="yy"
command=y,y
time=15
[Command]
name="zz"
command=z,z
time=15
;=======================================TRIPLE TAP BUTTONS ================================
[Command]
name="aaa"
command=~a,a,a
time=20
[Command]
name="bbb"
command=~b,b,b
time=20
[Command]
name="ccc"
command=~c,c,c
time=20
[Command]
name="aaa"
command=a,a,a
time=20
[Command]
name="bbb"
command=b,b,b
time=20
[Command]
name="ccc"
command=c,c,c
time=20
[Command]
name="xxx"
command=~x,x,x
time=20
[Command]
name="yyy"
command=~y,y,y
time=20
[Command]
name="zzz"
command=~z,z,z
time=20
[Command]
name="xxx"
command=x,x,x
time=20
[Command]
name="yyy"
command=y,y,y
time=20
[Command]
name="zzz"
command=z,z,z
time=20
;===============================================AIR JUMP======================================
[command]
name = "airjump"
command = $U
time = 1
;============================================DOUBLE TAP DIRECTION=============================
[command]
name = "SJump"
command = ~$D, $U
time = 10
[Command]
name = "DU"
command = ~$D, $U
time = 10


[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10
[Command]
name = "FF";Required (do not remove)
command = x+y
time = 10
[Command]
name = "FF";Required (do not remove)
command = x+z
time = 10
[Command]
name = "FF";Required (do not remove)
command = y+z
time = 10


[Command]
name = "FF";Required (do not remove)
command = F, x+y
time = 10
[Command]
name = "FF";Required (do not remove)
command = F, x+z
time = 10
[Command]
name = "FF";Required (do not remove)
command = F, y+z
time = 10



[Command]
name = "FF";Required (do not remove)
command = ~F, ~x+y
time = 10
[Command]
name = "FF";Required (do not remove)
command = ~F, ~x+z
time = 10
[Command]
name = "FF";Required (do not remove)
command = ~F, ~y+z
time = 10

[Command]
name = "dash_BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "dash_BB";Required (do not remove)
command = B, x+y
time = 10
[Command]
name = "dash_BB";Required (do not remove)
command = B, x+z
time = 10
[Command]
name = "dash_BB";Required (do not remove)
command = B, y+z
time = 10


[Command]
name = "dash_BB";Required (do not remove)
command = /B, ~x+y
[Command]
name = "dash_BB";Required (do not remove)
command = /B, ~x+z
[Command]
name = "dash_BB";Required (do not remove)
command = /B, ~y+z


;===========================================MVC TEAM COMMANDS================================
[Command]
name="Double"
command=~D,DF,F,c+z
[Command]
name="Double"
command=~D,DF,F,~c+z
[Command]
name="assist"
command=y+b
time=1
[Command]
name="assist"
command=~y+b
time=1
[Command]
name="tag"
command=z+c
time=1
[Command]
name="tag"
command=~z+c
time=1
[Command]
name="unique_action"
command=a+x
time=1
[Command]
name="unique_action"
command=~a+x
time=1
;============================================ 2/3  buttons ===================================
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b+y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c+z
time = 1


[Command]
name = "recovery_roll"
command = B,DB,D,a
time = 1
[Command]
name = "recovery_roll"
command = B,DB,D,b
time = 1
[Command]
name = "recovery_roll"
command = B,DB,D,c
time = 1
[Command]
name = "recovery_roll"
command = /F,a
time = 1
[Command]
name = "recovery_roll"
command = /F,b
time = 1
[Command]
name = "recovery_roll"
command = /F,c
time = 1
[Command]
name = "recovery_rollback"
command = /B,a
time = 1
[Command]
name = "recovery_rollback"
command = /B,b
time = 1
[Command]
name = "recovery_rollback"
command = /B,c
time = 1

[Command]
name = "alpha_counter"
command = /B,x
time = 10
[Command]
name = "alpha_counter"
command = /B,y
time = 10
[Command]
name = "alpha_counter"
command = /B,z
time = 10
[Command]
name = "alpha_counter"
command = ~B,DB,D,x
time = 10
[Command]
name = "alpha_counter"
command = ~B,DB,D,y
time = 10
[Command]
name = "alpha_counter"
command = ~B,DB,D,z
time = 10

[Command]
name = "guardpush"
command = x+y
time = 4
[Command]
name = "guardpush"
command = y+z
time = 4
[Command]
name = "guardpush"
command = x+z
time = 4
[Command]
name = "guardpush"
command = x+y+z
time = 4

;===========================================DIRECTION========================================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="down"
command=D
time=1
[Command]
name="up"
command=U
time=1
;===========================================HOLD BUTTON=======================================
[command]
name = "hold x"
command = /$x
time = 1
[command]
name = "hold y"
command = /$y
time = 1
[command]
name = "hold z"
command = /$z
time = 1
[command]
name = "hold a"
command = /$a
time = 1
[command]
name = "hold b"
command = /$b
time = 1
[command]
name = "hold c"
command = /$c
time = 1
;=========================================HOLD DIRECTION=======================================
[Command]
name="holdfwd";Required (do not remove)
command=/$F
time=1
[Command]
name="holdback";Required (do not remove)
command=/$B
time=1
[Command]
name="holdup";Required (do not remove)
command=/$U
time=1
[Command]
name="holddown";Required (do not remove)
command=/$D
time=1
;=====================================DOWN DOWN DOUBLE BUTTONS==================================
[command]
name = "dd_xyz"
command = D,D, x+y
time = 25
[command]
name = "dd_xyz"
command = D,D, y+z
time = 25
[command]
name = "dd_xyz"
command = D,D, x+z
time = 25
[command]
name = "dd_abc"
command = D,D, a+b
time = 25
[command]
name = "dd_abc"
command = D,D, b+c
time = 25
[command]
name = "dd_abc"
command = D,D, a+c
time = 25
[command]
name = "dd_xyz"
command = D,D, ~x+y
time = 25
[command]
name = "dd_xyz"
command = D,D, ~y+z
time = 25
[command]
name = "dd_xyz"
command = D,D, ~x+z
time = 25
[command]
name = "dd_abc"
command = D,D, ~a+b
time = 25
[command]
name = "dd_abc"
command = D,D, ~b+c
time = 25
[command]
name = "dd_abc"
command = D,D, ~a+c
time = 25
;========================================DOWN DOWN SINGLE BUTTONS================================
[command]
name = "dd_x"
command = D,D, x
time = 25
[command]
name = "dd_y"
command = D,D, y
time = 25
[command]
name = "dd_z"
command = D,D, z
time = 25
[command]
name = "dd_a"
command = D,D, a
time = 25
[command]
name = "dd_b"
command = D,D, b
time = 25
[command]
name = "dd_c"
command = D,D, c
time = 25
[command]
name = "dd_x"
command = D,D, ~x
time = 25
[command]
name = "dd_y"
command = D,D, ~y
time = 25
[command]
name = "dd_z"
command = D,D, ~z
time = 25
[command]
name = "dd_a"
command = D,D, ~a
time = 25
[command]
name = "dd_b"
command = D,D, ~b
time = 25
[command]
name = "dd_c"
command = D,D, ~c
time = 25
;===========================================DEMON RAGE COMMANDS==================================
[command]
name = "shun"
command = x,x,F,a,z
time = 35
[command]
name ="shun 2"
command = x,x,F,a,c
time = 40
[command]
name = "shun"
command = x,x,F,a,~z
time = 35
[command]
name ="shun 2"
command = x,x,F,a,~c
time = 40
;========================================BACK FORWARD DOUBLE BUTTONS==============================
[command]
name = "BFXY"
command = ~B, F, x+y
[command]
name = "BFXY"
command = ~B, F, y+z
[command]
name = "BFXY"
command = ~B, F, x+z
[command]
name = "BFXY"
command = ~B, F, ~x+y
[command]
name = "BFXY"
command = ~B, F, ~y+z
[command]
name = "BFXY"
command = ~B, F, ~x+z
[command]
name = "BFAB"
command = ~B, F, a+b
[command]
name = "BFAB"
command = ~B, F, b+c
[command]
name = "BFAB"
command = ~B, F, a+c
[command]
name = "BFAB"
command = ~B, F, ~a+b
[command]
name = "BFAB"
command = ~B, F, ~b+c
[command]
name = "BFAB"
command = ~B, F, ~a+c
;==========================================Statedef values =====================================
[statedef -1]

[State -1, AIhelper]
type=changestate
trigger1=ishelper(9741)
value=9741
;===============================================================================================
;                                            TEAM COMMANDS 
;===============================================================================================
[State -1, Chaos Dimension s.Attack]
type = ChangeState
value = 3210
triggerall=command="unique_action"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
triggerall=var(20)>0
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,210]
trigger3=MoveContact&&StateNo=[230,240]
trigger4=MoveContact&&StateNo=[400,410]
trigger5=MoveContact&&StateNo=[430,440]


[State -1, Chaos Dimension c.Attack]
type = ChangeState
value = 3215
triggerall=command="unique_action"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
triggerall=var(20)>0
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,210]
trigger3=MoveContact&&StateNo=[230,240]
trigger4=MoveContact&&StateNo=[400,410]
trigger5=MoveContact&&StateNo=[430,440]

[State -1, Chaos Dimension a.Attack]
type = ChangeState
value = 3220
triggerall=command="unique_action"
triggerall=Roundstate=2&&statetype=A
triggerall=var(20)>0
trigger1=ctrl
trigger2=MoveContact&&StateNo=[600,610]
trigger3=MoveContact&&StateNo=[630,640]


[State -1, team hyper]
type = null;ChangeState
value = 4600
triggerall =var(53) = 1
triggerall =command = "Double"
triggerall =Var(51) = 1
triggerall =partner, life > 0
triggerall =stateno != 4512
triggerall =power >= 2000
trigger1 =(StateType != A) && (Ctrl = 1)
trigger2 =(stateno = [200,499]) && (StateType != A)
trigger3=(Stateno=[1000,1020])&&(animelemtime(6)>0)
;=======================================
[State -1, tag]
type = null;ChangeState
value = 4510
triggerall = var(53) = 1
triggerall = command = "tag"
triggerall = Var(51) = 1
triggerall = partner, stateno = 4512 
triggerall = partner, life > 0
trigger1 = (StateType != A) && (Ctrl = 1)
trigger2 = (stateno = [200,499]) && (StateType != A)
;=======================================
[State -1, assist]
type = null;ChangeState
value = 4900
triggerall = var(53) = 1
triggerall = command = "assist"
triggerall = Var(51) = 1
triggerall = partner, stateno = 4512 
triggerall = partner, life > 0
trigger1 = (StateType != A) && (Ctrl = 1)
;===============================================================================================
;                                            Hypers Moves
;===============================================================================================
;Hyper 1
[State -1]
type=ChangeState
value=3000
triggerall=command="qcf_ab"&&power>=1000
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
trigger3=StateNo=[1000, 1021]
trigger4=StateNo=[1200,1400]

;=======================================
;Hyper 2
[State -1]
type=ChangeState
value=3100
triggerall=command="qcb_xy"&&power>=1000
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
trigger3=StateNo=[1000, 1021]
trigger4=StateNo=[1200,1400]

;=======================================
;Hyper 2
[State -1]
type=ChangeState
value=3200
triggerall=command="qcf_xy"&&power>=3000
triggerall=roundstate=2&&StateType!=A
triggerall = var(20) = 0
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
trigger3=StateNo=[1000, 1021]
trigger4=StateNo=[1200,1400]
;===============================================================================================
;                                             Specials
;===============================================================================================
;Mystic Smash L
[State -1]
type=ChangeState
value=1050
triggerall=command="qcf_a"
triggerall=roundstate=2&&StateType=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[600,610]
trigger3=MoveContact&&StateNo=[630,640]
;=======================================
;Mystic Smash M
[State -1]
type=ChangeState
value=1060
triggerall=command="qcf_b"
triggerall=roundstate=2&&StateType=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[600,610]
trigger3=MoveContact&&StateNo=[630,640]
;=======================================
;Mystic Smash H
[State -1]
type=ChangeState
value=1070
triggerall=command="qcf_c"
triggerall=roundstate=2&&StateType=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[600,610]
trigger3=MoveContact&&StateNo=[630,640]
;=======================================
;Mystic Smash L
[State -1]
type=ChangeState
value=1000
triggerall=command="qcf_a"
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash M
[State -1]
type=ChangeState
value=1010
triggerall=command="qcf_b"
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash H
[State -1]
type=ChangeState
value=1020
triggerall=command="qcf_c"
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash L
[State -1]
type=ChangeState
value=1100
triggerall=command="hcb_a"
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash M
[State -1]
type=ChangeState
value=1110
triggerall=command="hcb_b"
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash H
[State -1]
type=ChangeState
value=1120
triggerall=command="hcb_c"
triggerall=roundstate=2&&StateType!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash L
[State -1]
type=ChangeState
value=1200
triggerall=command="charge_x"
triggerall=roundstate=2&&StateType!=A
triggerall=!NumHelper(1260)
triggerall=!NumHelper(1261)
triggerall=!NumHelper(1262)
triggerall=!NumHelper(1263)
triggerall=!NumHelper(1264)
triggerall=!NumHelper(1265)
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash M
[State -1]
type=ChangeState
value=1210
triggerall=command="charge_y"
triggerall=roundstate=2&&StateType!=A
triggerall=!NumHelper(1260)
triggerall=!NumHelper(1261)
triggerall=!NumHelper(1262)
triggerall=!NumHelper(1263)
triggerall=!NumHelper(1264)
triggerall=!NumHelper(1265)
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Smash H
[State -1]
type=ChangeState
value=1220
triggerall=command="charge_z"
triggerall=roundstate=2&&StateType!=A
triggerall=!NumHelper(1260)
triggerall=!NumHelper(1261)
triggerall=!NumHelper(1262)
triggerall=!NumHelper(1263)
triggerall=!NumHelper(1264)
triggerall=!NumHelper(1265)
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Ray L
[State -1]
type=ChangeState
value=1300
triggerall=command="vcharge_x"
triggerall=roundstate=2&&StateType!=A
trigger1 = ctrl || stateno = 40
trigger2 = MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Ray M
[State -1]
type=ChangeState
value=1310
triggerall=command="vcharge_y"
triggerall=roundstate=2&&StateType!=A
trigger1 = ctrl || stateno = 40
trigger2 = MoveContact&&StateNo=[200,450]
;=======================================
;Mystic Ray H
[State -1]
type=ChangeState
value=1320
triggerall=command="vcharge_z"
triggerall=roundstate=2&&StateType!=A
trigger1 = ctrl || stateno = 40
trigger2 = MoveContact&&StateNo=[200,450]





;===============================================================================================
;                                            Throws
;===============================================================================================
;Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = StateNo !=[120,160]
triggerall = command = "z"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = ctrl = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;Throw 2
[State -1, Throw 2]
type = ChangeState
value = 850
triggerall = StateNo !=[120,160]
triggerall = command = "c"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = ctrl = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H





;Dash Back
[State -1,Dash Back]
type = ChangeState
value = 105
triggerall = (stateno !=[100,110])
triggerall = roundstate=2
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = command ="dash_BB"
trigger2 = ctrl = 1
trigger2 = command="FF"&&command="holdback"
;=======================================
;Air Dash Back
[State -1]
type = ChangeState
value = 107
triggerall = roundstate=2
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
trigger1 = PrevStateNo != 107
trigger1 = command = "dash_BB"
trigger2 = ctrl
trigger2 = PrevStateNo != 107
trigger2 = command="FF"&&command="holdback"
;=======================================
;Dash Forward
[state -1]
type = changestate
value = 100
triggerall = statetype = S
triggerall = roundstate=2
trigger1 = (stateno !=[100,110])
trigger1 = ctrl
trigger1 = command = "FF"
;=======================================
;Air Dash
[State -1,Air Dash]
type = ChangeState
value = 102
triggerall = roundstate=2
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
trigger1 = PrevStateNo != 102
trigger1 = command = "FF"

;=======================================
;SuperJump
[state -1]
type = changestate
value = 40
triggerall = roundstate=2
triggerall = command = "DU"
trigger1 = statetype != a
trigger1 = ctrl
;=======================================
;Taunt
[State -1, Taunt]
type = ChangeState
value = 115
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl



;===============================================================================================
;                                        Standing Attacks
;===============================================================================================
;stand light punch
[state -1]
type = changestate
value = 200
triggerall=command="x"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
;=======================================
;stand medium punch
[state -1]
type = changestate
value = 210
triggerall=command="y"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,205]
trigger3=MoveContact&&StateNo=[230,235]
trigger4=MoveContact&&StateNo=400
trigger5=MoveContact&&StateNo=430
;=======================================
;stand strong punch
[state -1]
type = changestate
value = 220
triggerall=command="z"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,210]
trigger3=MoveContact&&StateNo=[230,240]
trigger4=MoveContact&&StateNo=[400,410]
trigger5=MoveContact&&StateNo=[430,440]
;=======================================
;stand light kick
[state -1]
type = changestate
value = 230
triggerall=command="a"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,205]
trigger3=MoveContact&&StateNo=400
trigger4=MoveContact&&StateNo=430
;=======================================
;standing strong kick
[state -1]
type = changestate
value = 240
triggerall=command="b"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=230
trigger4 = MoveContact&&StateNo=400
trigger5 = MoveContact&&StateNo=430
;=======================================
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall=command="c"&&command!="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,220]
trigger3 = MoveContact&&StateNo=[230,240]
trigger4 = MoveContact&&StateNo=[400,420]
trigger5 = MoveContact&&StateNo=[430,450]
;===============================================================================================
;                                     Crouching Attacks
;===============================================================================================
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall=command="x"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
;=======================================
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall=command="y"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=200
trigger3=MoveContact&&StateNo=[230,230]
trigger4=MoveContact&&StateNo=400
trigger5=MoveContact&&StateNo=430
;=======================================
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall=command="z"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,210]
trigger3=MoveContact&&StateNo=[230,240]
trigger4=MoveContact&&StateNo=[400,410]
trigger5=MoveContact&&StateNo=[430,440]
;=======================================
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall=command="a"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=200
trigger4=MoveContact&&StateNo=400
;=======================================
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall=command="b"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=MoveContact&&StateNo=[200,210]
trigger3=MoveContact&&StateNo=[230,230]
trigger4=MoveContact&&StateNo=[400,410]
trigger5=MoveContact&&StateNo=430
;=======================================
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall=command="c"&&command="holddown"
triggerall=Roundstate=2&&statetype!=A
trigger1 = ctrl
trigger2 = MoveContact&&StateNo=[200,210]
trigger3 = MoveContact&&StateNo=[230,230]
trigger4 = MoveContact&&StateNo=[400,420]
trigger5 = MoveContact&&StateNo=[430,440]
;===============================================================================================
;                                         Aerial Attacks
;===============================================================================================
;jump light punch
[state -1]
type = changestate
value = 600
triggerall=command="x"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=600
trigger2=ctrl&&var(17)=1

;=======================================
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall=command="y"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=610
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=600
trigger4=MoveContact&&StateNo=630
;=======================================
;jump strong punch
[state -1]
type = changestate
value = 621
triggerall=command="z"&&command="holdup"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=621
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=[600,610]
trigger4=MoveContact&&StateNo=[630,640]
;=======================================
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall=command="z"&&command!="holdup"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=620
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=[600,610]
trigger4=MoveContact&&StateNo=[630,640]
;=======================================
;jump light kick
[state -1]
type = changestate
value = 630
triggerall=command="a"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=630
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=600
;=======================================
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall=command="b"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=640
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=[600,610]
trigger4=MoveContact&&StateNo=630
;=======================================
;jump strong kick down
[state -1]
type = changestate
value = 660
triggerall=command="c"&&command="holddown"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=660
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=[600,610]
trigger4=MoveContact&&StateNo=[630,640]
;=======================================
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall=command="c"&&command!="holddown"
triggerall=Roundstate=2&&statetype=A
trigger1=ctrl&&var(17)=0&&stateno!=650
trigger2=ctrl&&var(17)=1
trigger3=MoveContact&&StateNo=[600,610]
trigger4=MoveContact&&StateNo=[630,640]
;===============================================================================================
;                                          System States
;===============================================================================================
;Jump
[state -1]
type = changestate
value = 40
triggerall = command = "holdup"
trigger1 = statetype != a
trigger1 = ctrl
;=======================================

;Guard Push Standing
[State -1]
type = ChangeState
value = 700
triggerall = command = "guardpush"
triggerall = statetype = S
triggerall = !var(0)&&roundstate=2
trigger1 = stateno = [150,153]
;=======================================
;Guard Push Crouching
[State -1]
type = ChangeState
value = 705
triggerall = command = "guardpush"
triggerall = statetype = C
triggerall = !var(0)&&roundstate=2
trigger1 = stateno = [150,153]
;=======================================
;Guard Push Air
[State -1]
type = ChangeState
value = 710
triggerall = command = "guardpush"
triggerall = statetype = A
triggerall = !var(0)&&roundstate=2
trigger1 = stateno = [154,155]
;=======================================
;Alpha/Zero Counter 
[State -1]
type=ChangeState
value=750
triggerall=command="alpha_counter"||Command = "tag"
triggerall=statetype !=A
triggerall=Power >=500
triggerall=P2BodyDist x=[0,60]
triggerall=p2bodydist Y=[-50,10]
triggerall=!var(0)&&roundstate=2
trigger1=stateno=150||stateno=152
;=======================================
;Air Alpha/Zero Counter
[State -1]
type =null; ChangeState
value = 755
triggerall = command= "alpha_counter"||Command = "tag"
triggerall = statetype=A
triggerall = Power >=500
triggerall = P2BodyDist x=[0,50]
triggerall = p2bodydist Y=[-30,30]
triggerall = !var(0)&&roundstate=2
trigger1 = stateno=[154,155]
;=======================================
;Lie Down Recovery Roll Foward
[State -1]
type = ChangeState
value = 940
triggerall = command = "holdfwd"
triggerall = !var(0)&&roundstate=2
triggerall = time=1
trigger1 = stateno=5120
;=======================================
;Lie Down Recovery Roll Back
[State -1]
type = ChangeState
value = 941
triggerall = command = "holdback"
triggerall = !var(0)&&roundstate=2
triggerall = time=1
trigger1 = stateno=5120
;=======================================
;Tech Hit Recovery Roll Forward
[State -1]
type = ChangeState
value = 942
triggerall = !ctrl && Command = "recovery_roll"
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
triggerall = !var(0)&&roundstate=2
triggerall = movetype != A
trigger1 = pos Y > -10
;=======================================
;Tech Hit Recovery Roll Back
[State -1]
type = ChangeState
value = 943
triggerall = !ctrl && Command = "recovery_rollback"
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
triggerall = !var(0)&&roundstate=2
triggerall = movetype != A
trigger1 = pos Y > -10





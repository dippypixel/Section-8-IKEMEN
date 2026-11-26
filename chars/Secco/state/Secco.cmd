[remap]
x=x;弱
y=y;中
z=z;強
a=a;スタンド
b=b;xyz同時押し
c=c;未使用
s=s;挑発

[defaults]
command.time=15
command.buffer.time=10

;---------------------------------------------------------------------------


[command]
name="忘れぬ想い"
command=~D,DF,F,x+y
[command]
name="忘れぬ想い"
command=~D,DF,F,x+z
[command]
name="忘れぬ想い"
command=~D,DF,F,y+z
[command]
name="忘れぬ想い"
command=~D,DF,F,b

[command]
name="エイジャの赤石"
command=~D,DB,B,x+y
[command]
name="エイジャの赤石"
command=~D,DB,B,x+z
[command]
name="エイジャの赤石"
command=~D,DB,B,y+z
[command]
name="エイジャの赤石"
command=~D,DB,B,b

[command]
name="ブッ壊すほどシュート"
command=~F,D,DF,x+y
[command]
name="ブッ壊すほどシュート"
command=~F,D,DF,x+z
[command]
name="ブッ壊すほどシュート"
command=~F,D,DF,y+z
[command]
name="ブッ壊すほどシュート"
command=~F,D,DF,b

[command]
name="サティポロジアビートル"
command=~B,F,D,F,B,x+y
[command]
name="サティポロジアビートル"
command=~B,F,D,F,B,x+z
[command]
name="サティポロジアビートル"
command=~B,F,D,F,B,y+z
[command]
name="サティポロジアビートル"
command=~B,F,D,F,B,b
;---------------------------------------------------------------------------

[command]
name="クラッカーヴォレイ"
command=~D,DF,F,a

[command]
name="クラッカーブーメラン"
command=~D,DB,B,a

[command]
name="邪魔だぜ・弱"
command=~F,D,DF,x
[command]
name="邪魔だぜ・中"
command=~F,D,DF,y
[command]
name="邪魔だぜ・強"
command=~F,D,DF,z
[command]
name="邪魔だぜ・強"
command=~F,D,DF,b

[command]
name="ミラーマジック"
command=~B,D,DB,x
[command]
name="ミラーマジック"
command=~B,D,DB,y
[command]
name="ミラーマジック"
command=~B,D,DB,z
[command]
name="ミラーマジック"
command=~B,D,DB,b

[command]
name="波紋カッター・弱"
command=~D,DF,F,x
[command]
name="波紋カッター・弱"
command=~D,DF,F,b
[command]
name="波紋カッター・中"
command=~D,DF,F,y
[command]
name="波紋カッター・中"
command=~D,DF,F,b
[command]
name="波紋カッター・強"
command=~D,DF,F,z
[command]
name="波紋カッター・強"
command=~D,DF,F,b

[command]
name="グチャグチャ・弱"
command=~D,DB,B,x
time=30
[command]
name="グチャグチャ・弱"
command=~D,DB,B,b
time=30
[command]
name="グチャグチャ・中"
command=~D,DB,B,y
time=30
[command]
name="グチャグチャ・中"
command=~D,DB,B,b
time=30
[command]
name="グチャグチャ・強"
command=~D,DB,B,z
time=30
[command]
name="グチャグチャ・強"
command=~D,DB,B,b
time=30


[command]
name="波紋肘支疾走・弱"
command=~20$B,$F,x
[command]
name="波紋肘支疾走・弱"
command=~20$B,$F,b
[command]
name="波紋肘支疾走・中"
command=~20$B,$F,y
[command]
name="波紋肘支疾走・中"
command=~20$B,$F,b
[command]
name="波紋肘支疾走・強"
command=~20$B,$F,z
[command]
name="波紋肘支疾走・強"
command=~20$B,$F,b



;---------------------------------------------------------------------------

[command]
name="全同時押し"
command=x+y+z
time=1
[command]
name="全同時押し"
command=b
time=1

;---------------------------------------------------------------------------

[command]
name="FF";必須コマンド名
command=F,F
time=10
buffer.time=1
[command]
name="BB";必須コマンド名
command=B,B
time=10
buffer.time=1

;---------------------------------------------------------------------------

[command]
name="recovery";必須コマンド名
command=x+y
time=1
buffer.time=1
[command]
name="recovery"
command=x+z
time=1
buffer.time=1
[command]
name="recovery"
command=y+z
time=1
buffer.time=1
[command]
name="recovery"
command=b
time=1
buffer.time=1

;---------------------------------------------------------------------------

[command]
name="a"
command=a
time=1
buffer.time=1
[command]
name="b"
command=b
time=1
buffer.time=1
[command]
name="c"
command=c
time=1
buffer.time=1
[command]
name="x"
command=x
time=1
buffer.time=1
[command]
name="y"
command=y
time=1
buffer.time=1
[command]
name="z"
command=z
time=1
buffer.time=1
[command]
name="start"
command=s
time=1
buffer.time=1

[command]
name="hold_a"
command=/a
time=1
buffer.time=1
[command]
name="hold_b"
command=/b
time=1
buffer.time=1
[command]
name="hold_c"
command=/c
time=1
buffer.time=1
[command]
name="hold_x"
command=/x
time=1
buffer.time=1
[command]
name="hold_y"
command=/y
time=1
buffer.time=1
[command]
name="hold_z"
command=/z
time=1
buffer.time=1
[command]
name="hold_s"
command=/s
time=1
buffer.time=1

[command]
name="x"
command=b
time=1
buffer.time=1
[command]
name="y"
command=b
time=1
buffer.time=1
[command]
name="z"
command=b
time=1
buffer.time=1

[command]
name="hold_x"
command=/b
time=1
buffer.time=1
[command]
name="hold_y"
command=/b
time=1
buffer.time=1
[command]
name="hold_z"
command=/b
time=1
buffer.time=1

;---------------------------------------------------------------------------

[command]
name="fwd"
command=F
time=1
buffer.time=1
[command]
name="back"
command=B
time=1
buffer.time=1
[command]
name="up"
command=U
time=1
buffer.time=1
[command]
name="down"
command=D
time=1
buffer.time=1

[command]
name="holdfwd";必須コマンド名
command=/$F
time=1
buffer.time=1
[command]
name="holdback";必須コマンド名
command=/$B
time=1
buffer.time=1
[command]
name="holdup";必須コマンド名
command=/$U
time=1
buffer.time=1
[command]
name="holddown";必須コマンド名
command=/$D
time=1
buffer.time=1

;---------------------------------------------------------------------------

[command]
name="a2"
command=a
time=1
buffer.time=1
[command]
name="b2"
command=b
time=1
buffer.time=1
[command]
name="c2"
command=c
time=1
buffer.time=1
[command]
name="x2"
command=x
time=1
buffer.time=1
[command]
name="y2"
command=y
time=1
buffer.time=1
[command]
name="z2"
command=z
time=1
buffer.time=1
[command]
name="start2"
command=s
time=1
buffer.time=1

[command]
name="x2"
command=b
time=1
buffer.time=1
[command]
name="y2"
command=b
time=1
buffer.time=1
[command]
name="z2"
command=b
time=1
buffer.time=1

[command]
name="fwd2"
command=F
time=1
buffer.time=1
[command]
name="back2"
command=B
time=1
buffer.time=1
[command]
name="up2"
command=U
time=1
buffer.time=1
[command]
name="down2"
command=D
time=1
buffer.time=1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[command]
name="AI0"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI1"
command=b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time=0
[command]
name="AI2"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI3"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI4"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI5"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI6"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI7"
command=F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time=0
[command]
name="AI8"
command=D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time=0
[command]
name="AI9"
command=B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time=0
[command]
name="AI10"
command=U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time=0
[command]
name="AI11"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI12"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI13"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI14"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI15"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI16"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI17"
command=a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time=0
[command]
name="AI18"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI19"
command=b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time=0
[command]
name="AI20"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI21"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI22"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI23"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI24"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI25"
command=F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time=0
[command]
name="AI26"
command=D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time=0
[command]
name="AI27"
command=B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time=0
[command]
name="AI28"
command=U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time=0
[command]
name="AI29"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI30"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI31"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI32"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI33"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI34"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI35"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI36"
command=z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI37"
command=z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time=0
[command]
name="AI38"
command=z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time=0
[command]
name="AI39"
command=z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time=0
[command]
name="AI40"
command=z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time=0
[command]
name="AI41"
command=z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time=0
[command]
name="AI42"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI43"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time=0
[command]
name="AI44"
command=z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time=0
[command]
name="AI45"
command=z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time=0
[command]
name="AI46"
command=z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time=0
[command]
name="AI47"
command=z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI48"
command=z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time=0
[command]
name="AI49"
command=z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time=0
[command]
name="AI50"
command=z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time=0

;===========================================================================
[statedef -1]
;===========================================================================

[state -1,ブッ壊すほどシュート]
type=changestate
value=4000
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="ブッ壊すほどシュート"
triggerall=power>=1000
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,サティポロジアビートル]
type=changestate
value=3200
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="サティポロジアビートル"
triggerall=power>=1000
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,忘れぬ想い]
type=changestate
value=3000
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="忘れぬ想い"
triggerall=power>=1000
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,エイジャの赤石]
type=changestate
value=3100
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="エイジャの赤石"
triggerall=power>=1000
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;===========================================================================

[state -1,波紋肘支疾走・弱]
type=null;changestate
value=2100
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="波紋肘支疾走・弱"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,波紋肘支疾走・中]
type=null;changestate
value=2110
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="波紋肘支疾走・中"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,波紋肘支疾走・強]
type=null;changestate
value=2120
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="波紋肘支疾走・強"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------
[state -1,ミラーマジック]
type=changestate
value=1000
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="ミラーマジック"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,グチャグチャ・弱]
type=changestate
value=1200
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="グチャグチャ・弱"
triggerall=statetype!=a
triggerall=prevstateno != [1200,1220]
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,グチャグチャ・中]
type=changestate
value=1210
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="グチャグチャ・中"
triggerall=statetype!=a
triggerall=prevstateno != [1200,1220]
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,グチャグチャ・強]
type=changestate
value=1220
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="グチャグチャ・強"
triggerall=statetype!=a
triggerall=prevstateno != [1200,1220]
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,邪魔だぜ・弱]
type=changestate
value=1400
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="邪魔だぜ・弱"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,邪魔だぜ・中]
type=changestate
value=1410
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="邪魔だぜ・中"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,邪魔だぜ・強]
type=changestate
value=1420
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="邪魔だぜ・強"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,そこだぁ・弱]
type=changestate
value=1100
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="波紋カッター・弱"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,そこだぁ・中]
type=changestate
value=1110
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="波紋カッター・中"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

[state -1,そこだぁ・強]
type=changestate
value=1115
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="波紋カッター・強"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[state -1,クラッカーヴォレイ]
type=changestate
value=1300
triggerall=!var(59)
triggerall=!var(7)
triggerall = StateNo != [1500,1550]
triggerall=command="クラッカーヴォレイ"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;---------------------------------------------------------------------------

[state -1,クラッカーブーメラン]
type=changestate
value=1500
triggerall=!var(59)
triggerall=!var(7)
triggerall=command="クラッカーブーメラン"
triggerall=statetype!=a
trigger1=ctrl
trigger2=stateno=[195,299]
trigger3=stateno=[400,499]

;===========================================================================

[state -1,ダッシュ]
type=changestate
value=100
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
trigger1=command="FF"
trigger1=statetype!=a
trigger1=ctrl
trigger1=stateno!=100

[state -1,逃げるんだよぉーッ]
type=changestate
value=105
triggerall=!var(59)
trigger1=command="BB"
trigger1=statetype!=a
trigger1=ctrl
trigger1=stateno!=105

;===========================================================================

[state -1,通常投げ]
type=changestate
value=800
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="z"
triggerall=command="holdfwd"||command="holdback"
triggerall=command!="holddown"
triggerall=statetype!=a
triggerall=stateno!=100
triggerall=enemynear,statetype!=a
triggerall=enemynear,movetype!=h
triggerall=p2bodydist x<10
trigger1=ctrl

;---------------------------------------------------------------------------

[state -1,ガーキャン]
type=changestate
value=950
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="波紋カッター・弱"||command="波紋カッター・中"||command="波紋カッター・強"||command="グチャグチャ・弱"||command="グチャグチャ・中"||command="グチャグチャ・強"
triggerall=statetype!=a
trigger1=stateno=[150,155]

;---------------------------------------------------------------------------

[state -1,立ちアドガ]
type=changestate
value=160
triggerall=!var(59)
triggerall=command="全同時押し"
triggerall=stateno=[150,155]
triggerall=statetype!=a
trigger1=!numhelper(162)

[state -1,しゃがみアドガ]
type=changestate
value=161
triggerall=!var(59)
triggerall=command="全同時押し"
triggerall=stateno=[150,155]
triggerall=statetype=c
trigger1=!numhelper(162)

;---------------------------------------------------------------------------

[state -1,回り込み]
type=changestate
value=900
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="全同時押し"
triggerall=statetype!=a
trigger1=ctrl

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------

[state -1,ダッシュ弱]
type=null;changestate
value=250
triggerall=!var(59)
triggerall=command="x"
triggerall=stateno=100||stateno=105
triggerall=statetype!=a
trigger1=stateno=100||stateno=105

[state -1,ダッシュ中]
type=null;changestate
value=260
triggerall=!var(59)
triggerall=command="y"
triggerall=stateno=100||stateno=105
triggerall=statetype!=a
trigger1=stateno=100||stateno=105

[state -1,ダッシュ強]
type=null;changestate
value=270
triggerall=!var(59)
triggerall=command="z"
triggerall=stateno=100||stateno=105
triggerall=statetype!=a
trigger1=stateno=100||stateno=105

;---------------------------------------------------------------------------

[state -1,2弱]
type=changestate
value=400
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="x"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl

[state -1,2中]
type=changestate
value=410
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="y"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl

[state -1,2強]
type=changestate
value=420
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="z"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl

;---------------------------------------------------------------------------

[state -1,6強]
type=null;changestate
value=230
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="z"
triggerall=command="holdfwd"
triggerall=statetype!=a
trigger1=ctrl

[state -1,立弱]
type=changestate
value=200
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="x"
triggerall=statetype!=a
trigger1=ctrl

[state -1,立中]
type=changestate
value=210
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="y"
triggerall=statetype!=a
trigger1=ctrl

[state -1,立強]
type=changestate
value=220
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="z"
triggerall=statetype!=a
trigger1=ctrl

;---------------------------------------------------------------------------

[state -1,J弱]
type=changestate
value=600
triggerall=!var(59)
triggerall=command="x"
triggerall=statetype=a
trigger1=ctrl

[state -1,J中]
type=changestate
value=610
triggerall=!var(59)
triggerall=command="y"
triggerall=statetype=a
trigger1=ctrl

[state -1,J強]
type=changestate
value=620
triggerall=!var(59)
triggerall=command="z"
triggerall=statetype=a
trigger1=ctrl

;---------------------------------------------------------------------------

[state -1,挑発]
type=changestate
value=195
triggerall=!var(59)
triggerall = StateNo != [1500,1550]
triggerall=command="start"
triggerall=statetype!=a
trigger1=ctrl

;===========================================================================
;AI
;===========================================================================
[state -1,AI起動用ヘルパー]
type=helper
triggerall=!numhelper(99999)
triggerall=!var(59)
triggerall=roundstate=2
triggerall=alive
triggerall=stateno=0
triggerall=ctrl
trigger1=prevstateno=[191,194]
trigger2=prevstateno=[10190,10194]
trigger3=prevstateno=5900
helpertype=normal
name="AI"
stateno=99999
id=99999
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent=0

[state -1,関係無いステートに行かないように]
type=changestate
trigger1=ishelper(99999)
trigger1=stateno!=99999
value=99999


[state -1,AIフラグセット]
type=varset
triggerall=!ishelper
trigger1=var(59)
trigger2=teamside=2||matchno>1
trigger2=ishometeam
trigger3=command="AI0"||command="AI1"||command="AI2"||command="AI3"
trigger4=command="AI4"||command="AI5"||command="AI6"||command="AI7"
trigger5=command="AI8"||command="AI9"||command="AI10"||command="AI11"
trigger6=command="AI12"||command="AI13"||command="AI14"||command="AI15"
trigger7=command="AI16"||command="AI17"||command="AI18"||command="AI19"
trigger8=command="AI20"||command="AI21"||command="AI22"||command="AI23"
trigger9=command="AI24"||command="AI25"||command="AI26"||command="AI27"
trigger10=command="AI28"||command="AI29"||command="AI30"||command="AI31"
trigger11=command="AI32"||command="AI33"||command="AI34"||command="AI35"
trigger12=command="AI36"||command="AI37"||command="AI38"||command="AI39"
trigger13=command="AI40"||command="AI41"||command="AI42"||command="AI43"
trigger14=command="AI44"||command="AI45"||command="AI46"||command="AI47"
trigger16=command="a"^^command="a2"
trigger17=command="b"^^command="b2"
trigger18=command="c"^^command="c2"
trigger19=command="x"^^command="x2"
trigger20=command="y"^^command="y2"
trigger21=command="z"^^command="z2"
trigger22=command="start"^^command="start2"
trigger23=command="fwd"^^command="fwd2"
trigger24=command="back"^^command="back2"
trigger25=command="up"^^command="up2"
trigger26=command="down"^^command="down2"
trigger27=numhelper(99999)
trigger27=helper(99999),var(59)=1
;trigger28=1;無条件起動
var(59)=0
;┃━┏┃AIレベル┃┓━┃…1から11まで

;===========================================================================
ﾕ簗ﾇｲｻﾐ靨ｪｵﾄ｣ｺtrigger15=command="AI48"||command="AI49"||command="AI50"||command="最終闇技・超裂砕雷滅拳 竜獄殺"
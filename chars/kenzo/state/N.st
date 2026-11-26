;立弱
[statedef 200]
type=s
movetype=a
physics=s
velset=0,0
ctrl=0
anim=200

[state 200,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,0

[state 200,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=s,na
damage=28
guardflag=ma
pausetime=7,7
animtype=light
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-76
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-4
air.velocity=-1.4,-3

[state 200,状態キャンセル]
type=ctrlset
trigger1=time=8
value=1

[state 200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;立中
[statedef 210]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=210

[state 210,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,1

[state 210,声]
type=playsnd
trigger1=animelemtime(4)=0
value=0,0
channel=0

[state 210,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=56
guardflag=ma
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-70
hitsound=s5,1
guardsound=s6,0
ground.type=high
ground.slidetime=16
ground.hittime=16
air.hittime=16
ground.velocity=-5.5
air.velocity=-2.5,-4

[state 210,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;立強
[statedef 220]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=220

[state 220,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 220,声]
type=playsnd
trigger1=animelemtime(5)=0
value=0,1
channel=0

[state 220,軸位置移動]
type=posadd
trigger1=animelemtime(6)=0
x=12

[state 220,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=91
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type=low
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-6
air.velocity=-2.2,-3.2

[state 220,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;6強
[statedef 230]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=1.5,-2
anim=230

[state 230,重力]
type=veladd
trigger1=1
y=0.1

[state 230,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 230,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=63
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-5
air.velocity=-2.5,-3.5

[state 230,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ダッシュ弱
[statedef 250]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 250,重力]
type=veladd
trigger1=1
y=0.1

[state 250,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 250,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 250,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=11
ground.hittime=11
air.hittime=11
ground.velocity=-2.5,-2
air.velocity=-2.5,-2
fall=1

[state 250,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ダッシュ中
[statedef 260]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 260,重力]
type=veladd
trigger1=1
y=0.1

[state 260,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 260,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 260,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=11,11
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,1
guardsound=s6,0
ground.type=high
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-2,-3.5
air.velocity=-2,-3.5
fall=1

[state 260,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ダッシュ強
[statedef 270]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 270,重力]
type=veladd
trigger1=1
y=0.1

[state 270,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 270,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 270,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-3,-1
air.velocity=-3,-1
fall=1

[state 270,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;===========================================================================
;2弱
[statedef 400]
type=c
movetype=a
physics=c
poweradd=15
ctrl=0
anim=400

[state 400,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,0

[state 400,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=c,na
damage=28
animtype=light
guardflag=ma
pausetime=7,7
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-42
hitsound=s5,0
guardsound=s6,0
ground.type=low
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-4
air.velocity=-1.5,-3

[state 400,状態キャンセル]
type=ctrlset
trigger1=time=8
value=1

[state 400,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;2中
[statedef 410]
type=c
movetype=a
physics=c
poweradd=50
ctrl=0
anim=410

[state 410,素振り音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,1

[state 410,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=56
animtype=medium
guardflag=l
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-5,-10
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=16
ground.hittime=16
air.hittime=16
ground.velocity=-4
air.velocity=-3,-4

[state 410,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;2強
[statedef 420]
type=c
movetype=a
physics=c
poweradd=70
ctrl=0
anim=420

[state 420,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,2

[state 420,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,3
channel=0

[state 420,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=c,na
damage=91
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-10
hitsound=s5,2
guardsound=s6,0
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-4.5,0
air.velocity=-3.2,0

[state 420,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;3中
[statedef 430]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=430

[state 430,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 430,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,2
channel=0

[state 430,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=10

[state 430,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=42
animtype=medium
guardflag=l
pausetime=11,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-5
air.velocity=-2,-3

[state 430,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;3強
[statedef 440]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=440

[state 440,スライディング音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,2

[state 440,声]
type=playsnd
trigger1=animelemtime(4)=0
value=0,2
channel=0

[state 440,滑り込み]
type=velset
trigger1=animelemtime(4)=0
x=15

[state 440,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,2
guardsound=s6,0
ground.type=trip
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-5
air.velocity=-2,-3

[state 440,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ダッシュ2弱
[statedef 450]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 450,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 450,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 450,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,0
guardsound=s6,0
ground.type=low
ground.slidetime=11
ground.hittime=11
air.hittime=11
ground.velocity=-5
air.velocity=-2,-3

[state 450,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ダッシュ2中
[statedef 460]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 460,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 460,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 460,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=11,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-5
air.velocity=-2,-3

[state 460,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ダッシュ2強
[statedef 470]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 470,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 470,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 470,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,2
guardsound=s6,0
ground.type=trip
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-5
air.velocity=-2,-3

[state 470,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;===========================================================================
;J弱
[statedef 600]
type=a
movetype=a
physics=a
poweradd=11
ctrl=0
anim=600

[state 600,素振り音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,0

[state 600,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=a,na
damage=35
guardflag=ha
pausetime=9,9
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-58
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-4
air.velocity=-1.3,-3

;---------------------------------------------------------------------------
;J中
[statedef 610]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=610

[state 610,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,1

[state 610,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=a,na
damage=70
guardflag=ha
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-55
hitsound=s5,1
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-5
air.velocity=-3,-4

;---------------------------------------------------------------------------
;J強
[statedef 620]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=620

[state 620,素振り音]
type=playsnd
trigger1=animelemtime(8)=0
value=1,2

[state 620,ヒット定義]
type=hitdef
trigger1=animelemtime(8)=0
trigger2=var(0)&16
attr=a,na
damage=98
guardflag=ha
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-50
hitsound=s5,2
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-7
air.velocity=-3,-6

;-------------------------------------------------------------------------------
;J2強
[statedef 625]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=625

[state 625,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,2

[state 3000,無敵]
type=nothitby
trigger1=animelemtime(1)>=0
trigger1=animelemtime(3)<0
value=sca,np

[state 625,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=a,na
damage=68
guardflag=ha
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-50
hitsound=s5,2
guardsound=s6,0
animtype=back
ground.type=high
ground.slidetime=10
ground.hittime=10
air.hittime=10
ground.velocity=-3
air.velocity=-3,-6
fall= 1
air.fall = 1
fall.recover = 0



;===========================================================================
;-------------------------------------------------------------------------------
; 通常投げ
;------------------------ 1
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0, 0
juggle  = 10

[State 800,HitDef]
type = Hitdef
trigger1 = Time = 0
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = S, NT
priority = 3,Miss
getpower = 0
hitflag = M-
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
p2getp1state = 1
hitsound = -1
fall = 1
fall.recover = 1

[State 800,ChangeState];つかみ失敗
type=changestate
trigger1=animtime=0
value=ifelse(command="holdfwd",230,220)

;-------------------------------------------------------------------------------
; 通常投げ（成功）
[Statedef 810]
type = S
movetype = A
physics = N
anim = 810
velset = 0, 0
poweradd = 0
sprpriority = 3


[State 4150,0]
type = NotHitBy
trigger1 = 1
value = SCA


[State 860,PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3,=1
value = 1,2

[State 860,PlaySnd]
type = PlaySND
trigger1 = AnimElem = 5,=1
value = 5,1

[State 810,Width]
type = Width
trigger1 = AnimElem = 5 && FrontEdgeDist < 45
edge = 45,0

[State 810,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = -40,0

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = -35,-70

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -10,-75

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 40,0

[State 810,TargetBind]
type = TargetState
trigger1 = AnimElem = 5
value = 821

[State 810,TargetBind]
type = TargetState
trigger1 = AnimElem = 5,=13
value = 822

[State 810,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5,=13
value = -66


[State 810,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[state 810,投げ抜けのチャンス]
type=explod
trigger1=time<5
anim=6166
id=800
pos=0,-125
postype=p2
ontop=1
ownpal=1

[state 810,投げ抜け:対象側]
type=targetstate
triggerall=numexplod(800)
trigger1=target(800),command="z"
trigger1=target(800),command="holdfwd"||target(800),command="holdback"
value=830
id=800

[state 810,投げ抜け:自分側]
type=changestate
triggerall=numexplod(800)
trigger1=target(800),command="z"
trigger1=target(800),command="holdfwd"||target(800),command="holdback"
value=830

;-------------------------------------------------------------------------------
; 通常投げ（投げられ側）
;------------------------ 1
[Statedef 820]
type = A
movetype = H
physics = N
ctrl = 0

[State 820,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 820, screenbound]
type = screenbound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

;------------------------ 1
[Statedef 821]
type = A
movetype = H
physics = N
ctrl = 0

[State 800,Turn]
type = Turn
trigger1 = Time = 0

[State 820,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3040,PosAdd]
type = PosAdd
trigger1 = 1
x = IfElse(Time % 2 = 0,1,-1)

[State 820, screenbound]
type = screenbound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 821

;------------------------ 2
[Statedef 822]
type = A
movetype = H
physics = N
velset = 3,-6
ctrl = 0

[State 194, PosSet]
type = PosSet
trigger1 = Time = 0
y = const(Size.Mid.pos.y)

[State 820,ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 822

[State 1509, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1509, veladd]
type = veladd
trigger1 = 1
y = .55

[State 3503, 2]
type = AngleSet
trigger1 = Time = 0
value = 90

[State 3503, 3]
type = AngleAdd
trigger1 = Timemod = 2,0
value = -30

[State 3503, 4]
type = AngleDraw
trigger1 = 1

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Time > 0
triggerall = Vel Y > 0
triggerall = Pos Y >= -40
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1509, SelfState]
type = SelfState
triggerall = Time > 0
trigger1 = Pos Y > -20 && Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
;通常投げ:投げ抜け
[statedef 830]
type=a
movetype=i
physics=n
anim=5210
velset=-2,-5

[state 830,無敵]
type=nothitby
trigger1=1
value=sca

[state 830,重力]
type=veladd
trigger1=1
y=0.3

[state 830,着地]
type=selfstate
trigger1=time>35
value=52


;===========================================================================
;立S
[Statedef 300]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 700
ctrl = 0
poweradd = 30

[state nothit]
type = nothitby
trigger1 = p2bodydist x <= 35 && enemy, hitdefattr = SC, AA, AT
value = SCA, AA, AT
time = 2

[State 300]
type = HitDef
trigger1 = time = 0
attr = A, NT
animtype = hard
damage = 0,0
Hitflag = M
pausetime = 5,0
sparkno = -1
sparkxy = 0,-72
sprpriority = -2
Hitsound = -1
ground.type = low
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -5.8
ground.velocity = -8
air.type = Low
air.velocity = -8,-2
p1stateno = 310
p2stateno = 350
facing = 1
fall = 1
fall.recover = 0

[State 300 miss rose]
type = PlaySnd
trigger1 = Time = 5
value = s10,2

[State 300 miss arm]
type = PlaySnd
trigger1 = Time = 5
value = s4,1

[State 300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
;Success
[Statedef 310]
type    = S
movetype= A
physics = N
velset = 0
ctrl = 0
anim = 710
sprpriority = 2

[State 310]
type = PlaySnd
trigger1 = Time = 0
value = S5,7
[State 310]
type = PlaySnd
trigger1 = Time = 0
value = S0,0
[State 310]
type = PlaySnd
trigger1 = Time = 9
value = S6,5

[State 310]
type = GameMakeAnim
trigger1 = Time = 0
value = 2
pos = 30, -60

[State 310]
type = PosAdd
trigger1 = AnimElem = 1
x = 25
y = -60

[State 310]
type = BindToTarget
id = -1
trigger1 = AnimElem = 2
pos = 10,-10,head

[State 310]
type = TargetLifeAdd
trigger1 = time = 9 || time = 18 || time = 27
trigger2 = time = 36 || time = 45 || time = 54
value = -15
kill = 0


[State 310]
type = ChangeState
trigger1 = time = 68
value = 311
ctrl = 0

;--------------------------------------
;Success2
[Statedef 311]
type    = A
movetype= A
physics = N
velset = 3,-3
ctrl = 0
anim = 715
sprpriority = 2

[State 311]
type = PlaySnd
trigger1 = Time = 0
value = S0,3
[State 311]
type = PlaySnd
trigger1 = Time = 0
value = S5,5

[State 311]
type = TargetLifeAdd
triggerall = numtarget = 1
trigger1 = time = 0
value = -20
absolute = 1
persistent = 0

[State 311, SoulFire] ;波紋症
type = Explod
trigger1 = numexplod(4100) < 4
trigger1 = Time = [0,4]
ignorehitpause = 1
anim = 4101
id = 4100
postype = p2
pos = -10,-50
random = 50,30
bindtime = -1
sprpriority = 1
ownpal = 1

[State 311, SoulFire] ;波紋症
type = Explod
trigger1 = numexplod(4100) < 4
trigger1 = Time = [0,4]
ignorehitpause = 1
anim = 4101
id = 4100
postype = p2
pos = 20,-80
random = 50,30
bindtime = -1
sprpriority = 1
ownpal = 1

[State 311]
type = veladd
trigger1 = Time >= 4
y = .4

[State turn]
type = turn
trigger1 = AnimElem = 3

[State 311]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1190
ctrl = 0

;--------------------------------------
; Throw no aite
[Statedef 350]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
facep2 = 1
sprpriority = 0

[state 350]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,0

[State 350]
type = PalFX
trigger1 = time = 8
time = 120
add = 0,0,16
mul = 192,192,300
sinadd = 5, 5,32, 6

[state 350]
type = changeanim2
trigger1 = 1
value = 750
persistent = 0

[State 350]
type = velset
trigger1 = Time = 68
x = 2
y = -5

[State 350]
type = veladd
trigger1 = Time >= 70
y = .4

[state 350]
type = changeanim2
trigger1 = Time >= 68
value = 5050
persistent = 0

[State 350]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
;空中投げ
[Statedef 700]
type    = A
movetype= A
physics = A
juggle  = 0
anim = 705
ctrl = 0
poweradd = 30

[State 700]
type = HitDef
trigger1 = time = 0
attr = A, NT
animtype = hard
damage = 0,0
guard = 0
hitflag = AF
numhits = 0
pausetime = 0,0
sparkno = -1
sparkxy = 0,-72
sprpriority = -2
Hitsound = -1
ground.type = low
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -5.8
ground.velocity = -8
air.type = Low
air.velocity = -8,-2
p1stateno = 710
p2stateno = 750
facing = 1
fall = 1
fall.recover = 0

[State 700]
type = PlaySnd
trigger1 = Time = 5
value = s10,1

[State 700]
type = PlaySnd
trigger1 = Time = 5
value = s4,1

[State 700]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1190
ctrl = 0

;--------------------------------------
;Success
[Statedef 710]
type    = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 711
sprpriority = 2

[State 710]
type = PlaySnd
trigger1 = time = 0
value = S0,0
[State 710]
type = PlaySnd
trigger1 = Time = 0
value = S5,7
[State 710]
type = PlaySnd
trigger1 = Time = 10
value = S6,5

[State 710]
type = GameMakeAnim
trigger1 = Time = 0
value = 2
pos = 30, -60

[State 710, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 27, -80 

[State 710]
type = TargetLifeAdd
trigger1 = animelem = 3
trigger2 = animelem = 9
value = -11
kill = 0
[state 710]
type = HitAdd
trigger1 = animelem = 3
trigger2 = animelem = 9
value = 1

[State 710]
type = ChangeState
trigger1 = time = 60
value = 711

ctrl = 0

;--------------------------------------
;　…その後私は…。
[Statedef 711]
type    = A
movetype= A
physics = N
velset = .5,-.8
ctrl = 0
anim = 1550
sprpriority = 0

[State 711]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 711]
type = NotHitBy
trigger1 = 1
value = SCA

[State 711]
type = PlaySnd
trigger1 = Time = 10
value = S0,2

[State 711, Bind 1]
type = TargetBind
trigger1 = AnimElem= 1
pos = 25, -80 
[State 711, Bind 2]
type = TargetBind
trigger1 = AnimElem= 2
pos = 8, -65
[State 711, Bind 3]
type = TargetBind
trigger1 = AnimElem= 3
pos = 5, -70
[State 711, Bind 4]
type = TargetBind
trigger1 = AnimElem= 4
pos = -10, -10

[State 711,spr]
type = sprpriority
trigger1 = AnimElem = 4
value = 2

[State 711,turn]
type = turn
trigger1 = AnimElem = 6

[State 711]
type = velset
trigger1 = AnimElem = 5
x = 3
y = -5

[State 711]
type = veladd
trigger1 = Time >= 20
y = .4

[State 711,Width]
type = Width
trigger1 = AnimElem = 3
edge = 25,0

[State 711]
type = TargetLifeAdd
triggerall = numtarget = 1
trigger1 = animelem = 5
value = -52
absolute = 1
persistent = 0

[State 711]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1190
ctrl = 0

;--------------------------------------
; Air Throw no aite
投げ拘束（相手
[Statedef 750]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
facep2 = 1
sprpriority = 0

[state 750]
type = changeanim2
trigger1 = time = 0
value = 760
persistent = 0

[State 750]
type = changestate
trigger1 = time = 60
value = 1170

;--------------------------------------
;放り投げ（相手
[Statedef 1170]
type    = A
movetype= H
physics = N
ctrl = 0
facep2 = 1
sprpriority = 0

[state changean]
type = changeanim2
trigger1 = 1
value = 1170
persistent = 0

[State 1170,turn]
type = turn
trigger1 = AnimElem = 3

[state 1170, set]
type = velset
trigger1 = AnimElemtime(4) >= 0
trigger1 = Pos Y < 0
x = -7
y = 7

[state 1170, set]
type = velset
trigger1 = Pos Y >= 0
x = 0 
y = 0

[State 1170, Self]
type = SelfState
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
;着地
[Statedef 1190]
type    = S
movetype= A 
physics = S
juggle  = 1
poweradd = 20 
ctrl = 0
anim = 1190
velset = 0,0
sprpriority = 1

[State 1000, 6]
type = Posset
trigger1 = Time = 0
y = 0

[State 1000, Snd]
type = PlaySnd
trigger1 = time = 0
value = 6,0

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;--------------------------------------
; 投げられたッ！？
[Statedef 1170]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
facep2 = 1
sprpriority = 0

[state bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,0

[state changean]
type = changeanim2
trigger1 = 1
value = 1170
persistent = 0

[State 1170,turn]
type = turn
trigger1 = AnimElem = 3

[State 1170, 0]
type = PalFX
trigger1 = AnimElem = 4
time = 60
add = 0,0,16
mul = 192,192,300
sinadd = 5, 5,32, 6

[state 1170, set]
type = velset
trigger1 = AnimElem = 4
x = -7
y = 7

[State 1170, S]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 15
ampl = -5
freq = 90
phase = 90

[State 1170, Self]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
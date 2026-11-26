;ガーキャン
[statedef 950]
type=s
movetype=a
physics=s
poweradd=120
velset=0,0
anim=1210
ctrl=0

[state 950,点滅]
type=palfx
trigger1=time<3
time=1
add=255,255,255
ignorehitpause=1

[state 950,無敵]
type=nothitby
trigger1=animtime!=0
trigger1=animelemtime(14)<0
value=sca

[state 950,波紋ッ！]
type=playsnd
trigger1=animelemtime(7)=0
value=0,4
channel=0

[state 950,コーラ効果音]
type=playsnd
trigger1=animelemtime(12)=0
value=1200,0

[state 950,コーラが吹き出す]
type=explod
trigger1=animelemtime(12)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 950,ヒット定義]
type=hitdef
trigger1=animelemtime(12)=2
trigger2=var(0)&16
attr=s,sa
animtype=up
damage=70,14
guardflag=ma
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air..hittime=14
ground.velocity=-1,-10.5
guard.velocity=-6
air.velocity=-1,-8.5
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=50
yaccel=0.4
guard.kill=0

[state 950,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 950,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;---------------------------------------------------------------------------
;これで龍に入れるわい
;---------------------------------------------------------------------------
[statedef 1000]
type=s
movetype=a
physics=s
poweradd=110
velset=0,0
anim=1000
ctrl=0

[state 1000,後ろに飛ぶ]
type=changeanim
trigger1=time=0
trigger1=helper(10023),rootdist X > 10;龍の夢が前にある時
value = 1001

[state 1000,声]
type=playsnd
trigger1=animelemtime(11)=0
value=1100,1
channel=0

[state 1000,後ろに飛ぶ]
type=velset
trigger1=helper(10023),rootdist X > 10;龍の夢が前にある時
x=-4

[state 1000,前に飛ぶ]
type=velset
trigger1=helper(10023),rootdist X < -10;龍の夢が後ろにある時
x=4

[state 1000,飛んでくる腕]
type=Helper
trigger1=helper(10023),rootdist X < 10;龍の夢に触れたら
trigger1=helper(10023),rootdist X > -10;龍の夢に触れたら
trigger1=numhelper(1000) = 0
helpertype=normal
name="arm"
ID=1000
pos=70,-185
postype=F
stateno=1010
ownpal=1
persistent=0

[state 1000,重力]
type=velset
trigger1=helper(10023),rootdist X < 10;龍の夢に触れたら
trigger1=helper(10023),rootdist X > -10;龍の夢に触れたら
y=.2


[state 1000,終了]
type=changestate
trigger1=helper(10023),rootdist X < 10;龍の夢に触れたら
trigger1=helper(10023),rootdist X > -10;龍の夢に触れたら
trigger1=time>30
trigger2=time>50
value=52
ctrl=1

;---------------------------------------------------------------------------
;腕
[statedef 1010]
anim=1002
type=a
movetype=a
phtsics=n
ctrl=0
velset=-10,8
sprpriority=1

[state 1021,反転]
type=turn
trigger1=time=0

;[state 1100,前進]
;type=velset
;trigger1=animelemtime(2)=0
;x=-10
;y=8


[state 1010,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1010,判定]
type=hitdef
trigger1=1
attr=s,sp
damage=42,7
animtype=hard
guardflag=ma
sparkno=s6104
guard.sparkno=s6125
hitsound=s5,5
guardsound=s6,0
guard.kill=0
ground.velocity=-5,0
air.velocity=-4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
air.fall=1
p2facing=1

[state 1010,ヒット]
type=changestate
trigger1=movecontact
value=1019

[state 1010,サバイバー補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

[state 1010,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1010,消去]
type=destroyself
triggerall=ishelper
trigger1=screenpos y>300

;---------------------------------------------------------------------------
;腕(終了)
[statedef 1019]
anim=1003
type=a
movetype=i
phtsics=n
ctrl=0
velset=10,-8
sprpriority=1

[state 1019,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1019,消去]
type=destroyself
triggerall=ishelper
trigger1= screenpos Y < 0
trigger2= time > 50

;===========================================================================
;[statedef 1100]

;===========================================================================
;溺れてみるか？弱
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[state 1200 , 風水ゲージ減少]
type = varadd
trigger1 = time = 0
trigger1 = var(58) > 0
v=58
value = -1
persistent = 0
ignorehitpause = 1


[State 1230]
type = PlaySnd
trigger1 = time = 0
value = 1200,random%2
channel = 0

[State 1200]
type = PlaySnd
trigger1 = animelem = 3
value = 1,8


[state 1200,ヘルパー]
type=helper
trigger1=movehit
helpertype=normal
name="water"
stateno = 1201
ID=1201
pos=0,0
postype=back
ownpal=1
persistent = 0

[State 1200]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 70,1
getpower = 84,40
givepower = 84,40
animtype = hard
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = 9,9
guard.pausetime = 9,9
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,4
guardsound=s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
guard.slidetime = 20;仰け反る時間
guard.hittime = 20;仰け反り中の時間
guard.velocity = -9
guard.ctrltime = 17
airguard.velocity = -5,-5
air.type = high
air.velocity = -4,-5
air.hittime = 20
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
down.cornerpush.veloff = -5
fall.recovertime = 20
p2facing = 1

[State 1200]
type = TargetState
trigger1 = Movehit && enemy,stateno != 1210
value = 1210
persistent = 0
ignorehitpause = 1

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;溺れてみるか？中
;---------------------------------------------------------------------------
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1220
sprpriority = 2

[state 1220 , 風水ゲージ減少]
type = varadd
trigger1 = time = 0
trigger1 = var(58) > 0
v=58
value = -1
persistent = 0
ignorehitpause = 1


[State 1230]
type = PlaySnd
trigger1 = time = 0
value = 1200,random%2
channel = 0

[State 1220]
type = PlaySnd
trigger1 = animelem = 3
value = 1,8

[state 1220,ヘルパー]
type=helper
trigger1=movehit
helpertype=normal
name="water"
stateno = 1201
ID=1201
pos=0,0
postype=back
ownpal=1
persistent = 0

[State 1220]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 80,2
getpower = 84,40
givepower = 84,40
animtype = hard
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = 9,9
guard.pausetime = 9,9
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,4
guardsound=s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
guard.slidetime = 20;仰け反る時間
guard.hittime = 20;仰け反り中の時間
guard.velocity = -9
guard.ctrltime = 17
airguard.velocity = -5,-5
air.type = high
air.velocity = -4,-5
air.hittime = 20
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
down.cornerpush.veloff = -5
fall.recovertime = 20
p2facing = 1

[State 1220]
type = TargetState
trigger1 = Movehit && enemy,stateno != 1210
value = 1210
persistent = 0
ignorehitpause = 1

[State 1220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;溺れてみるか？強
;---------------------------------------------------------------------------
[Statedef 1230]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1230
sprpriority = 2

[state 1230 , 風水ゲージ減少]
type = varadd
trigger1 = time = 0
trigger1 = var(58) > 0
v=58
value = -1
persistent = 0
ignorehitpause = 1

[State 1230]
type = PlaySnd
trigger1 = time = 0
value = 1200,random%2
channel = 0

[State 1230]
type = PlaySnd
trigger1 = animelem = 3
value = 1,8


[state 1230,ヘルパー]
type=helper
trigger1=movehit
helpertype=normal
name="water"
stateno = 1201
ID=1201
pos=0,0
postype=back
ownpal=1
persistent = 0

[State 1230]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 100,5
getpower = 84,40
givepower = 84,40
animtype = hard
guardflag = M
hitflag = MAF
priority = 5, Hit
pausetime = 9,9
guard.pausetime = 9,9
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,4
guardsound=s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
guard.slidetime = 20;仰け反る時間
guard.hittime = 20;仰け反り中の時間
guard.velocity = -9
guard.ctrltime = 17
airguard.velocity = -5,-5
air.type = high
air.velocity = -4,-5
air.hittime = 20
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
down.cornerpush.veloff = -5
fall.recovertime = 20
p2facing = 1

[State 1230]
type = TargetState
trigger1 = Movehit && enemy,stateno != 1210
value = 1210
persistent = 0
ignorehitpause = 1

[State 1230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;エフェクト
[Statedef 1201];
anim = 1201
type=u
movetype=i
phtsics=n
sprpriority = -1
ctrl=0

[State 1201]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,Movetype = H

;---------------------------------------------------------------------------
[statedef 1210];やられ対象側
type = A
movetype = H
velset = 0,0

[State 1210]
type = velset
trigger1 = time = 0
x = -.2

[State 1210]
type = ChangeAnim2
trigger1 = Time = 0
value = 1210


[State 1210]
type = NotHitBy
trigger1 = 1
value = ,NT

[State 1210]
type = PalFX
trigger1 = AnimElem = 1
trigger1 = Anim = 1210
time = 41
add = 159,159,150
sinadd = 20,20,130,5
mul = 81,82,150
invertall = 0
color = 0

[State 1210]
type = changestate
trigger1 = time = 41
value = 1211

;---------------------------------------------------------------------------
[statedef 1211];やられ復帰
type = A
movetype = H
velset = -2,0

[State 1211]
type = NotHitBy
trigger1 = 1
value = ,NT

[State 1211]
type = selfstate
trigger1 = alive = 1
trigger1 = time =10
value = 5000
ctrl = 1

[State 1211]
type = selfstate
trigger1 = alive = 0
trigger1 = time =10
value = 5070
ctrl = 1

;---------------------------------------------------------------------------
;===========================================================================
;波紋カッター・弱
[statedef 1300]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1300
ctrl=0

[state 1300,オーバードライブ！]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,0
channel=0

[state 1300,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=animelemtime(5)=0
trigger3=animelemtime(6)=0
trigger4=animelemtime(7)=0
trigger5=animelemtime(8)=0
trigger6=var(0)&16
attr=s,sp
animtype=hard
damage=20,5
guardflag=ma
pausetime=0,5
sparkno=s6100
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-8
ground.cornerpush.veloff=-2
guard.velocity=-8
air.velocity=-3.5,-6.5
airguard.velocity=-3.5,-6.5
guard.kill=0
guard.dist=250

[state 1300,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;波紋カッター・中
[statedef 1310]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1310
ctrl=0

[state 1310,オーバードライブ！]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,0
channel=0

[state 1300,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=animelemtime(5)=0
trigger3=animelemtime(6)=0
trigger4=animelemtime(7)=0
trigger5=animelemtime(8)=0
trigger6=var(0)&16
attr=s,sp
animtype=hard
damage=22,6
guardflag=ma
pausetime=0,5
sparkno=s6100
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-8
ground.cornerpush.veloff=-2
guard.velocity=-8
air.velocity=-3.5,-6.5
airguard.velocity=-3.5,-6.5
guard.kill=0
guard.dist=250

[state 1310,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;波紋カッター・強
[statedef 1320]
type=s
movetype=a
physics=s
poweradd=0
velset=0,0
anim=1320
ctrl=0

[state 1320,オーバードライブ！]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,0
channel=0

[state 1300,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=animelemtime(5)=0
trigger3=animelemtime(6)=0
trigger4=animelemtime(7)=0
trigger5=animelemtime(8)=0
trigger6=animelemtime(9)=0
trigger7=animelemtime(10)=0
trigger8=animelemtime(11)=0
trigger9=animelemtime(12)=0
trigger10=animelemtime(13)=0
trigger11=var(0)&16
attr=s,sp
animtype=hard
damage=18,5
guardflag=ma
pausetime=0,5
sparkno=s6100
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-8
ground.cornerpush.veloff=-2
guard.velocity=-8
air.velocity=-3.5,-6.5
airguard.velocity=-3.5,-6.5
guard.kill=0
guard.dist=250

[state 3000,無敵]
type=nothitby
trigger1=animelemtime(4)>=0
trigger1=animelemtime(14)<0
value=sca,np

[state 1320,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;-------------------------------------------------------------------------------
; 昇龍・弱、中
;------------------------ 開始動作
[Statedef 1400]
type = S
movetype = A
physics = S
ctrl = 0
Anim = 1400
velset = 0, 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,=1
value = 0,15
channel = 0

[State 710, 5]
type = PosAdd
trigger1 = AnimElem = 5
x = 8

[state 1400,無敵]
type=nothitby
trigger1=anim=1400
value=sca

[State 800,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401

;------------------------ 空中
[Statedef 1401]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 1401
velset = 0, 0

[State 105,VelAdd]
type = VelSet
trigger1 = Time = 0
x = 2
y = -6

[State 105,VelAdd]
type = VelAdd
trigger1 = 1
y = .35

[State 105, VelMul]
type = VelMul
trigger1 = 1
x = .99

[State 235,HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage    = 55,7
getpower = 0,250
guardflag = MA
hitflag = MAF
pausetime = 12,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-80
hitsound=s5,1
guardsound=s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-7.5
air.hittime = 18
air.velocity = -2,-7.5
guard.velocity = -5
fall = 1
fall.recover = 1
yaccel = .45
air.cornerpush.veloff = 0

[State 105,VelAdd]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 105,End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1402

;------------------------ 着地
[Statedef 1402]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1222
velset = 0, 0

[State 1102, PosSet]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 1102, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
; 昇龍・強
;------------------------ 開始動作
[Statedef 1410]
type = S
movetype = A
physics = S
ctrl = 0
Anim = 1410
velset = 0, 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,=1
value = 0,15
channel = 0

[State 710, 5]
type = PosAdd
trigger1 = AnimElem = 5
x = 8

[state 1410,無敵]
type=nothitby
trigger1=anim=1410
value=sca

[State 800,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1411

;------------------------ 空中
[Statedef 1411]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 1411
velset = 4, -10

[State 105,VelAdd]
type = VelAdd
trigger1 = 1
y = .41

[State 105, VelMul]
type = VelMul
trigger1 = 1
x = .935

[State 105,VelAdd]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 235,HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage    = 22,3
getpower = 0,63
guardflag = MA
hitflag = MAF
pausetime = 12,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-100
hitsound=s5,1
guardsound=s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-5
air.hittime = 18
air.velocity = -2,-5
guard.velocity = -5
fall = 1
fall.recover = 1
yaccel = .45
air.cornerpush.veloff = 0


[State 105,End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1402


;===========================================================================
;裏周り
[statedef 2200]
type=s
movetype=i
physics=s
ctrl=0
anim=2200

[state 2200,受け止め定義]
type=reversaldef
trigger1=animelemtime(9)=0
reversal.attr=sca,aa,ap
pausetime=0,14
numhits=0
p1stateno=2210

[state 2200,食らい上書き]
type=hitoverride
trigger1=animelemno(0)=9
time=1
attr=sca,aa,ap
stateno=2210
ignorehitpause=1

[state 2200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;裏周り・成功
[statedef 2210]
type=s
movetype=i
physics=s
ctrl=0
velset=0,0
anim=2210


[state 2210 , 風水ゲージ減少]
type = varadd
trigger1 = time = 0
trigger1 = var(58) > 0
v=58
value = -1
persistent = 0
ignorehitpause = 1


[state 2210,無敵]
type=nothitby
trigger1=1
value=sca

[state 2210,残像1]
type=explod
trigger1=time=0
anim=2200
pos=0,0
postype=p1
scale=const(size.xscale),const(size.yscale)
sprpriority=-2
ownpal=1

[state 2210,残像1]
type=explod
trigger1=time=0
anim=2201
pos=17,0
postype=p1
scale=const(size.xscale),const(size.yscale)
sprpriority=-3
ownpal=1

[state 2210,残像2]
type=explod
trigger1=time=1
anim=2202
pos=-17,0
postype=p1
scale=const(size.xscale),const(size.yscale)
sprpriority=-3
ownpal=1

[state 2210,ガラスが割れる音]
type=playsnd
trigger1=time=0
value=2200,random%2
channel = 0

[state 2210,時間停止]
type=pause
trigger1=time=0
time=20
movetime=20
ignorehitpause=1

[state 2210,敵の背後に瞬間移動]
type=posset
trigger1=time=1
x=enemynear,pos x+facing*50

[state 2210,振り向き]
type=turn
trigger1=time=1
trigger1=p2dist x<0

[state 2210,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

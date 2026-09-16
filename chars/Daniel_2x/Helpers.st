;========================<SUPER CHARGE>=============================
;Notes to myself: Var(10) = 5: Level 1
;Var(10) = 6: Level 2
;Var(10) = 7: Level 3 & 4
[Statedef 7500]
physics=N
velset=0,0
anim=9741

[State 7500, SuperBG]
type = Helper
trigger1 = Time = 0 && Root, stateno!=23650 && Root, stateno!=111354 && Root,stateno!=10350 && Root,stateno!=22650
id = 7899
name = "Super BG"
pos = 0,0
postype = P1
stateno = 7899
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999

[State 7500, Lv1]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= time<=10 && root,var(10)=5
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256-floor(25.6*time),256-floor(25.6*time),256
color=256-floor(25.6*time)
[State 7500, Lv1]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= (time=[11,39]) && root,var(10)=5
time=1
mul=0,0,256
color=0
[State 7500, Lv1]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= time>=40 && root,var(10)=5
time=1
mul=ceil(51.2*(time-40)),ceil(51.2*(time-40)),256
color=floor(51.2*(time-40))

[State 7500, Lv2]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= time<=15 && root,var(10)=6
time=1
add=256-ceil(17.07*time),256-ceil(17.07*time),256-ceil(17.07*time)
mul=256-floor(17.07*time),256-floor(17.07*time),256
color=256-floor(17.07*time)
[State 7500, Lv2]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= (time=[16,47]) && root,var(10)=6
time=1
mul=0,0,256
color=0
[State 7500, Lv2]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= time>=48 && root,var(10)=6
time=1
mul=ceil(51.2*(time-48)),ceil(51.2*(time-48)),256
color=floor(51.2*(time-48))

[State 7500, Lv3]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= time<=20 && root,var(10)=7
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)
[State 7500, Lv3]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= (time=[21,54]) && root,var(10)=7
time=1
mul=0,0,0
color=0
[State 7500, Lv3]
type=bgpalfx
triggerall = root,stateno = 4500 || root,stateno = 23650 || root,stateno = 4120
trigger1= time>=55 && root,var(10)=7
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

[State 7500, Spiral]
type=helper
trigger1= !time && root,var(10)>=6
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
supermovetime=999999
pausemovetime=999999
ownpal=1

[State 7500, SUPER PORT LVL 1/2]
type=helper
trigger1= !time && root,var(10)=[5,6]
helpertype=normal
stateno=97509
ID=97509
name="LVL 1,2 SUPER PORTRAIT"
postype=p1
supermovetime=999999
pausemovetime=999999
ownpal=1

[State 7500, Main]
type=explod
trigger1= !time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
supermovetime=99999
pausemovetime=99999
[State 7500, Large Circle]
type=explod
trigger1= !time
anim=7501
ID=7501
sprpriority=5
postype=p1
supermovetime=99999
pausemovetime=99999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=7 && root,var(10)>=6
value = S5004,2
freqmul=0.74

[State 7500, Large Hour Circle]
type=explod
trigger1= !time && root,var(10)>=6
anim=13562
ID=13562
sprpriority=5
postype=p1
supermovetime=99999
pausemovetime=99999

[State 7500, Portrait]
type=explod
trigger1= time=1 && root,var(10)=7
anim=7510
ID=7510
postype=back
pos=160,120
sprpriority=-4
bindtime=-1
supermovetime=99999
pausemovetime=99999

[State 7500, Circle]
type=explod
trigger1= !time
anim=7502
ID=75021
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
[State 7500, Circle]
type=explod
trigger1= time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Scale]
type=modifyexplod
trigger1= root,var(10)=5
ID=7500
scale=1.5-(.0333*time),1.5-(.0333*time)
[State 7500, Scale]
type=modifyexplod
trigger1= root,var(10)=6
ID=7500
scale=1.5-(.0283*time),1.5-(.0283*time)
[State 7500, Scale]
type=modifyexplod
trigger1= root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)
trans=addalpha
alpha=ceil(256-6.4*time),256

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7510) && time<8
ID=7510
postype=back
pos=16,120
scale=.5,.5
trans=addalpha
alpha=(32*time),256
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7510) && (time=[8,50])
ID=7510
postype=back
pos=160,120
scale=.5,.5
trans=addalpha
alpha=256,256
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7510) && time>=50
ID=7510
postype=back
pos=160,120+(8*(time-50))
scale=.5+(.25*(time-50)),.5+(.25*(time-50))
trans=addalpha
alpha=256-ceil(25.6*(time-50)),256

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7511) && time<14
ID=7511
postype=back
pos=16,120
scale=.5,.5
trans=addalpha
alpha=(32*time-6),256
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7511) && (time=[14,56])
ID=7511
postype=back
pos=160,120
scale=.5,.5
trans=addalpha
alpha=256,256
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(7511) && time>=56
ID=7511
postype=back
pos=160,120+(8*(time-56))
scale=.5+(.25*(time-56)),.5+(.25*(time-56))
trans=addalpha
alpha=256-ceil(25.6*(time-56)),256

[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))
[State 7500, Scale]
type=modifyexplod
trigger1= numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
[State 7500, No bars]
type=assertspecial
trigger1= root,var(10)=7
flag=nobardisplay
flag2=noFG

[State 7500, Safety]
type=removeexplod
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=69
trigger3= time>=69
[State 7500, End]
type=destroyself
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=69
trigger3= time>=69


;---Spiral---
[Statedef 7509]
physics=N
anim=7509
sprpriority=5
[State 7509, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7500, PalFXWiz]
type = PalFX
trigger1 = root,var(27)
time = 1
add = 255,0,0
mul = 256,256,0
invertall = 0
color = 256

[State 7509, Spin]
type=angleset
trigger1= !time
value=-15*(random%24)
[State 7509, Spin]
type=angleadd
trigger1= 1
value=-15

[State 7509, Angle]
type=angledraw
trigger1= root,var(10)=6
scale=1-(time/53.0),1-(time/53.0)
[State 7509, Trans]
type=trans
trigger1= root,var(10)=6
trans=addalpha
alpha=floor(4.83*time),256

[State 7509, Angle]
type=angledraw
trigger1= root,var(10)=7
scale=1-(time/60.0),1-(time/60.0)
[State 7509, Trans]
type=trans
trigger1= root,var(10)=7
trans=addalpha
alpha=floor(4.267*time),256

[State 7509, End]
type=destroyself
trigger1= root,var(10)=6 && time>=54
trigger2= time>=61

;---Spiral---
[Statedef 97509]
physics=N
anim=9741
sprpriority=5

[State 7509, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = 97509
ID = 97509
pos = -30,240
postype = back
facing = 1
bindtime = 1
removetime = 45
supermovetime=999999
pausemovetime = 999999
scale = 0.275,0.275
ontop=1
ownpal = 1
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(97509)
pos = -30+time*5,240
postype=back
scale = 0.275+(time/45.0)*0.15,0.275+(time/45.0)*0.15
trans = addalpha
alpha = 256-((time/45.0)*256),((time/45.0)*256)

[State 7509, End]
type=destroyself
trigger1= time>=45

;PotS

;FX Codes from Hero's Iori! Modified to fit my tastes

;===========================.---------------------------------.=============================
;===========================|      P2 BODY FLAMES HELPER      |=============================
;===========================.---------------------------------.=============================
[Statedef 6160]
physics = N
velset = 0,0
anim = 9741
sprpriority = 4

[State 6160, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6160, Explod]
type = Explod
trigger1 = 1
anim = 6160
ID = 6160
sprpriority = 7
postype = p2
vel = -.2,-.75
pos = (enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random = 40,40
removetime = -2
scale = .5,.5
ownpal = 1

[State 6160, PlaySnd]
type = PlaySnd
trigger1 = Time%34=0
value = S5,11

[State 6160, Explod]
type = Explod
trigger1 = Time%34=0
anim = 6190
ID = 6190
sprpriority = 7
postype = p2
vel = -.2,-.75
pos = (enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random = 40,40
removetime = -2
scale = ((120-time)/120.0)*0.5,((120-time)/120)*0.5
ownpal = 1

[State 6160, PosAdd]
type = PosAdd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)

[State 6160, DestroySelf]
type = DestroySelf
trigger1 = time >= 120
trigger2 = enemynear,ctrl ||(enemynear,movetype!=H)

;===========================.---------------------------------.=============================
;===========================|      P2 BODY FLAMES HELPER      |=============================
;===========================.---------------------------------.=============================
[Statedef 6161]
physics = N
velset = 0,0
anim = 9741
sprpriority = 4

[State 6160, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6160, Explod]
type = Explod
trigger1 = 1
anim = 6160
ID = 6160
sprpriority = 7
postype = p1
vel = -.2,-.75
pos = (root,const(size.mid.pos.x)),(root,const(size.mid.pos.y))+10
random = 40,40
removetime = -2
scale = .5,.5
ownpal = 1

[State 6160, PlaySnd]
type = PlaySnd
trigger1 = Time%34=0
value = S5,11

[State 6160, Explod]
type = Explod
trigger1 = Time%34=0
anim = 6190
ID = 6190
sprpriority = 7
postype = p1
vel = -.2,-.75
pos = (root,const(size.mid.pos.x)),(root,const(size.mid.pos.y))+10
random = 40,40
removetime = -2
scale = ((120-time)/120.0)*0.5,((120-time)/120.0)*0.5
ownpal = 1

[State 6160, PosAdd]
type = PosAdd
trigger1 = 1
x = root,pos x
y = root,pos y

[State 6160, DestroySelf]
type = DestroySelf
trigger1 = time >= 120
trigger2 = root,ctrl ||(root,movetype!=H)

;---------------------------------------------------------------------------
;Dante in a truck
[Statedef 19997]
type = S
velset = 0, 0
anim = 10290
ctrl = 0
sprpriority=9001

[State 19997, YPOS??]
type = ChangeState
trigger1 = Pos Y >= 0
value = 19998

[State 19998, ChangeStateFail]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = !parent, MoveHit
value = 23000
ctrl = 0

[State 19997, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = 35,120
ignorehitpause = 1

[State 19998, ChangeState]
type = ChangeState
trigger1 = parent, stateno != 180
trigger1 = parent, stateno != 184
trigger1 = parent, stateno != 187
trigger1 = parent, stateno != 4501
trigger1 = parent, stateno != 4502
value = 23000
ctrl = 0
;ignorehitpause =
;persistent =

[State 19997, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[Statedef 19998]
type = S
movetype = I
physics = S
velset = 0, 0
anim = 10292
ctrl = 0
sprpriority=9001

[State 19998, ChangeAnim]
type = ChangeAnim
trigger1 = parent,AnimElemTime(52) = 0
trigger2 = parent,AnimElemTime(59) = 0 || parent,AnimElemTime(61) = 0
trigger3 = parent,AnimElemTime(64) = 0 || parent,AnimElemTime(66) = 0
trigger4 = parent,AnimElemTime(69) = 0 || parent,AnimElemTime(71) = 0
trigger5 = parent,AnimElemTime(74) = 0 || parent,AnimElemTime(76) = 0
trigger6 = parent,AnimElemTime(79) = 0 || parent,AnimElemTime(81) = 0
trigger7 = parent,AnimElemTime(84) = 0 || parent,AnimElemTime(86) = 0
trigger8 = parent,AnimElemTime(89) = 0 || parent,AnimElemTime(91) = 0
trigger9 = parent,AnimElemTime(94) = 0 || parent,AnimElemTime(96) = 0
trigger10 = parent,AnimElemTime(99) = 0 || parent,AnimElemTime(101) = 0
trigger11 = parent,AnimElemTime(104) = 0 || parent,AnimElemTime(106) = 0
trigger12 = parent,AnimElemTime(109) = 0 || parent,AnimElemTime(111) = 0
trigger13 = parent,AnimElemTime(114) = 0 || parent,AnimElemTime(116) = 0
trigger14 = parent,AnimElemTime(119) = 0 || parent,AnimElemTime(121) = 0
trigger15 = parent,AnimElemTime(124) = 0 || parent,AnimElemTime(126) = 0
trigger16 = parent,AnimElemTime(129) = 0 || parent,AnimElemTime(131) = 0
trigger17 = parent,animelemtime(141) = 0
value = 10291

[State 19998, Explod]
type = Explod
triggerall = !NumExplod(10000)
trigger1 = parent, stateno != 180
trigger1 = parent, stateno != 184
trigger1 = parent, stateno != 187
trigger1 = parent, stateno != 4501
trigger1 = parent, stateno != 4502
anim = 7905
ID = 10000
pos = 0,-60
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 3,3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 19998, ChangeState]
type = ChangeState
trigger1 = parent, stateno != 180
trigger1 = parent, stateno != 184
trigger1 = parent, stateno != 187
trigger1 = parent, stateno != 4501
trigger1 = parent, stateno != 4502
value = 23000
ctrl = 0
;ignorehitpause =
;persistent =

[State 19998, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

[Statedef 23000]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 8055047
sprpriority = 4

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13550
name = "Steamroller Wreckage I"
pos = -3, -52
postype = P1
stateno = 13550
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13551
name = "Steamroller Wreckage II"
pos = 30, -96
postype = P1
stateno = 13551
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13552
name = "Steamroller Wreckage III"
pos = -62, -82
postype = P1
stateno = 13552
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13553
name = "Steamroller Wreckage IV"
pos = -75, -95
postype = P1
stateno = 13553
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13554
name = "Steamroller Wreckage V"
pos = -106, -90
postype = P1
stateno = 13554
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13555
name = "Steamroller Wreckage VI"
pos = -101, -66
postype = P1
stateno = 13555
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
persistent = 0
id = 13556
name = "Steamroller Wreckage VII"
pos = -151, -76
postype = P1
stateno = 13556
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale  = 0.833
size.yscale  = 1

[State 0, VarSet]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 2.56

[State 4446, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S500,3

[State 4446, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S500,4

[State 4446, Explod]
type = Explod
trigger1 = Time = 0
anim = 4446
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 2*FVAR(1),2*FVAR(1)
ontop = 1
ownpal = 1

[State 4446, Explod]
type = Explod
trigger1 = Time = 0
anim = 4447
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 2.5*FVAR(1),2.5*FVAR(1)
ontop = 1
ownpal = 1

[State 4446, Explod]
type = Explod
trigger1 = Time = 8
trigger2 = Time = 18
trigger3 = Time = 34
trigger4 = Time = 45
anim = 4447
pos = -40,-40
random = 80,80
postype = p1
facing = 1
removetime = -2
scale = 1.5*FVAR(1),1.5*FVAR(1)
ontop = 1
ownpal = 1

[State 4446, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
trigger2 = Time = 18
trigger3 = Time = 34
trigger4 = Time = 45
value = S5,11

[State 4446, DestroySelf]
type = DestroySelf
trigger1 = Time = 46

[StateDef 224901]
type = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 4901
sprpriority = 2

[State 4901, Random Set 1]
type = VelSet
trigger1 = Time = 0
x = (random%17)-8
y = (random%17)-8

[State 4901, Limit2]
type = VelSet
trigger1 = Vel Y <= -16
y = -16

[State 4901, Kill on Contact]
type = ChangeState
trigger1 = MoveContact
value = 4902

[State 4901, 1]
type = HitDef
trigger1 = 1
attr = S, HP
damage = 22, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 8, 8
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10, -50
hitsound = s5, 10
getpower  = 0,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 10
fall = 1
fall.recovertime = 0
ground.velocity = -4, -8
airguard.velocity = -1.9,-6
air.type = Low
air.velocity = -1.4,-8
air.hittime = 12

[State 4901, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist X > 0
x = .5

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist X < 0
x = -0.5

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist Y > 0
y = .5

[State 4901, VelAdd]
type = VelAdd
trigger1 = P2dist Y < 0
y = -0.5

[State 4901, LimitY1]
type = VelSet
trigger1 = Vel Y >= 16
y = 16

[State 4901, LimitY2]
type = VelSet
trigger1 = Vel Y <= -16
y = -16

[State 4901, LimitX1]
type = VelSet
trigger1 = Vel X >= 16
x = 16

[State 4901, LimitX2]
type = VelSet
trigger1 = Vel X <= -16
x = -16

;BORROWED CODING FROM WICKYDOO!!!

[State 4901, Angle 0]
type = VarSet
trigger1 = Time = 0
fvar(1) = 5.5

[State 4901, Angle 1a]
type = VarSet
trigger1 = 1
fvar(2) = cos(fvar(1))

[State 4901, Angle 1b]
type = VarSet
trigger1 = 1
fvar(3) = 0 - sin(fvar(1))

[State 4901, Angle 2]
type = VarSet
trigger1 = 1
fvar(4) = fvar(2)*(p2dist y - 50) - fvar(3)*(p2dist x)

[State 4901, Angle 3]
type = VarAdd
trigger1 = 1
fvar(1) = ((fvar(4) < 0) * .1) - ((fvar(4) > 0) * .1)

[State 4901, Angle 4]
type = AngleSet
trigger1 = 1
value = floor (fvar(1) * 57.2957791)

[State 4901, Facing]
type = AngleDraw
trigger1 = 1

;END OF BORROWED CODING

[StateDef 224902]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 7920+random%8
sprpriority = 2

[State 4902, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------
;Cherry's States

[Statedef 14000];Jump in!
type = A
movetype= I
physics = N
ctrl = 0
anim = 14000
velset = 14,-2.2

[State 14000, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 14000, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 14100
ignorehitpause = 1

[State 14000, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = ,NA,SA,AT
ignorehitpause = 1

[State 14000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 14000, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 20
value = 14001
ctrl = 0

[Statedef 14001];Triple Combo
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
juggle=12
anim = 14001

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 9
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
x = 8.3

[State 0, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S40,0
volume = 255

[State 14001, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 9
trigger2 = Animelem = 19
value = S1,5

[State 14001, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 14
value = S1,4

[State 14001, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 22
value = S237,0

[State 14001, PlaySnd]
type = PlaySnd
triggerall = random<333
trigger1 = Animelem = 10
value = S14000,1
channel=3

[State 14001, PlaySnd]
type = PlaySnd
triggerall = random<333
trigger1 = Animelem = 14
value = S14000,2
channel=3

[State 14001, PlaySnd]
type = PlaySnd
triggerall = random<333
trigger1 = Animelem = 20
value = S14000,4
channel=3

[State 14001, PlaySnd]
type = PlaySnd
triggerall = random<333
trigger1 = Animelem = 27
value = S14000,3
channel=3

[State 14001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = AnimElemTime(24) < 0

[State 14001, 1]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 14
attr = S, SA
damage = 30, 2
animtype = Med
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10, -59
hitsound = s5, 1+(animelem=14)
guardsound = s6, 0
ground.type = Low
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -.7
airguard.velocity = -1.9,-.5
air.type = High
air.velocity = -2,-5
air.hittime = 28
getpower=0,0

[State 4920, 6]
type = HitDef
trigger1 = AnimElem=20
attr = S, HA
hitflag = MAF
guardflag = MA
priority  = 5, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = -20,-50
damage=44,3
hitsound   = S5,7
guardsound = S6,0
pausetime=10,10
fall = 1
ground.slidetime=55
ground.hittime=55
ground.velocity = -12,-7.3
air.velocity = -11,-6.3
p2stateno = 4923
hitonce = 0
numhits = 1
getpower=0,0

[State 14001, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 14001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = AnimElemTime(24) <0
value = , NT, ST, HT
ignorehitpause = 1

[State 14001, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(24) >= 0
value = SCA
ignorehitpause = 1

[State 114002, ChangeAnim]
type = ChangeAnim
triggerall = AnimElemTime(27) >= 0
triggerall = AnimElemTime(28) < 0
trigger1 = Win
value = 14001
elem = 27

[State 14001, ChangeState]
type = ChangeState
triggerall = AnimElemTime(27) >= 0
triggerall = AnimElemTime(28) < 0
trigger1 = Win && Roundstate = 4
value = 114002
ctrl = 0

[State 14001, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 14002
ctrl = 0

[Statedef 54171]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 2
anim=54171

[State 14002, PlaySnd]
type = PlaySnd
trigger1 = Time=36
value = S14000,4
channel=3

[State 14001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 14001, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 14002
ctrl = 0

[Statedef 114002]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 2

[State 114002, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 14001
elem = 27

[State 14002, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S14000,(0+random%2)*4
channel=3

[State 14001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

;---------------------------------------------------------------------------
;Aereal Rave Launcher?

[Statedef 14002]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 14000
velset=10,-10
sprpriority = 2

[State 14002, VelMul]
type = VelMul
trigger1 = 1
y = 0.95

[State 14002, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S41,0

[State 14001, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 14001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  ScreenPos X < -300 || ScreenPos X > 620

[Statedef 14100];Get Hit
type = A
movetype= H
physics = N
ctrl = 0
anim = 14100
velset = -8,-8

[State 14100, VelMul]
type = VelMul
trigger1 = 1
x = 1.1
y = 1.1

[State 14100, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S14000,2

[State 14100, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S22000,1

[State 14100, ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 14100, Destroy]
type = DestroySelf
trigger1 = ScreenPos Y <= -258

[Statedef 14200]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 14200
sprpriority = 2

[State 14200, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 14200+((P2name = "Kuromaru" || P4name = "Kuromaru")*100)

[State 14200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 14201
ctrl = 0

[State 14200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[Statedef 14201];Walk Left
type = S
movetype= I
physics = S
ctrl = 0
anim = 14500

[State 14201, Walk]
type = VelSet
trigger1 = 1
x = (parent, Const(velocity.walk.back.x)*0.9)

[State 14201, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X > 450
trigger2 = ScreenPos X < -120

[State 14201, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 14201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

;[Statedef 16000]
;type = S
;movetype= I
;ctrl = 0
;anim = 14201

;[State 16000, Helper]
;type = Helper
;trigger1 = Time = 0
;helpertype = normal
;name = "Cherry"
;ID = 19600
;stateno = 14200
;pos = -30,0
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 999999
;pausemovetime = 999999

;[State 16000, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = intro

;[State 16000, ChangeState]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = ifelse((P2name = "Kuromaru" || P4name = "Kuromaru"),196,0)
;ctrl = 0

;Cherry's Kick Smash
[Statedef 17000]
type = S
movetype= A
physics = S
ctrl = 0
anim = 14999

[State 17000, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 17000, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 17000, Explod]
type = Explod
trigger1 = Time = 0
anim = 16298
ID = 16298
pos = 20,0
postype = back
facing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermoveTime = 9999999
pausemoveTime = 9999999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 17000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 57
anim = -1
sound = S7,3
pos = 0,0
darken = 1
p2defmul = 1
poweradd = -2000
unhittable = 1

[State 17000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 1
value = 1

[State 17000, VelSet]
type = VelSet
trigger1 = 1
x = 10

[State 17000, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, HT
hitflag = MA-
priority  = 3, Miss
guardflag = MA
sparkno = -1
guard.sparkno = s7911
sparkxy = -7,-30
hitsound   = S800,0
guardsound = s6,0
fall = 0
p1stateno = 17001
p2stateno = 6290
p2facing = 1        ;Force to face p1
hitonce = 1
numhits = 0

[State 17000, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X > 450
trigger2 = ScreenPos X < -120

;Hold and then Kick
[Statedef 17001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 14750
ctrl = 0
sprpriority = 2

[State 17001, Override All But Throws]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 5
stateno = 14100
forceair = 1
ignorehitpause = 1

[State 17001, Throws ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = , NT, ST, HT
ignorehitpause = 1

[State 17001, Bind Near Cherry]
type = TargetBind
trigger1 = AnimElemTime(23) < 0
pos = 37,0

[State 17001, Bind Near Cherry]
type = TargetBind
trigger1 = AnimElemTime(23) >= 0 && AnimElemTime(26) < 0
pos = 40,0

[State 17001, HitSpark]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
trigger11 = AnimElemTime(26) = 0
anim = ifelse((AnimElemTime(26) = 0),7930,7900)+random%8
pos = 36,-55
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 17001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
trigger11 = AnimElemTime(26) = 0
value = S5,ifelse((AnimElemTime(26) = 0),9,4)

[State 17001, Combo]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
trigger11 = AnimElemTime(26) = 0
value = 1

[State 17001, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0 || AnimElemTime(6) = 0
trigger3 = AnimElemTime(7) = 0 || AnimElemTime(8) = 0
trigger4 = AnimElemTime(9) = 0 || AnimElemTime(10) = 0
trigger5 = AnimElemTime(11) = 0 || AnimElemTime(12) = 0
trigger6 = AnimElemTime(13) = 0 || AnimElemTime(14) = 0
trigger7 = AnimElemTime(15) = 0 || AnimElemTime(16) = 0
trigger8 = AnimElemTime(17) = 0 || AnimElemTime(18) = 0
trigger9 = AnimElemTime(19) = 0 || AnimElemTime(20) = 0
trigger10 = AnimElemTime(21) = 0 || AnimElemTime(22) = 0
value = -14
kill = 0
absolute = 0

[State 17001, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(26) = 0
value = -10
kill = 1
absolute = 0

[State 17001, Change To Falling State]
type = TargetState
trigger1 = AnimElemTime(26) = 0
value = 17002

[State 17001, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 14000
ctrl = 0

;------------------
; Kicked. Flying through the air

[Statedef 17002]
type    = A
movetype= H
physics = N
sprpriority = 1
anim = 5050

[State 17002, Has 5061?]
type = ChangeAnim
trigger1 = Time = 0 && SelfAnimExist(5061)
value = 5061

[State 17002, 1]
type = VelAdd
trigger1 = 1
y = .33

[State 17002, VelSet]
type = Velset
trigger1 = !time
x = -15
y = -6

[State 17002, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

[Statedef 4013]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 4013
ctrl = 0
sprpriority = 2

[State 4014, ChangeState]
type = ChangeState
trigger1 = root, stateno != 4012
value = 4016
ctrl = 0
ignorehitpause = 1

[State 4013, Unvulnerable]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 4013, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4014

[Statedef 4014]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 4014
ctrl = 0
sprpriority = 3

[State 4014, Override]
type = HitOverride
trigger1 = 1
attr = SCA ,AA, AP, AT
stateno = 4016
ignorehitpause = 1

[State 4014, Unvulnerable To Throws]
type = NotHitBy
trigger1 = 1
value = , AT
ignorehitpause = 1

[State 4014, Voice?]
type = PlaySnd
trigger1 = !Time
value = S4014, 0
channel = 0

[State 4014, Bind To Daniel's Hands]
type = BindToRoot
trigger1 = 1
pos = -33, -38
ignorehitpause = 1

[State 4014, Rotate]
type = AngleDraw
trigger1 = 1
value = 11.0*sin(Time)
ignorehitpause = 1

[State 14002, Minamo's Head]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 280,6
hitflag = MAF
animtype = Up
guardflag = M
priority = 5,Hit
pausetime = 0,30
sparkno = s7930+random%8
guard.sparkno = s7911
fall = 1
p1stateno = 4016
fall.damage = 4
fall.recovertime = 0
fall.recover = 0
yaccel = .43
sparkxy = -9,-29
hitsound   = s5,9
guardsound = s6,0
ground.type = Trip
air.slidetime = 9
ground.hittime  = 26
guard.dist = 320
ground.velocity = -9, -3.6
air.velocity = -2.5,-5
envshake.time = 21
envshake.freq = 195
envshake.ampl = -5

[State 4014, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = MoveReversed
trigger3 = root, stateno != 4012
value = 4016
ctrl = 0
ignorehitpause = 1

[Statedef 4016];Get Hit
type = A
movetype= H
physics = N
ctrl = 0
anim = 4014
velset = -8,-8

[State 4016, -45º Degree]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 4016, ALWAYS MISS]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4016, Destroy]
type = DestroySelf
trigger1 = ScreenPos Y <= -98

;Dante, From Intro
[Statedef 62000]
type = S
movetype= I
Physics = N
ctrl = 0
anim = 62000

[State 62000, Walk]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
x = 5

[State 62000, Fall]
type = ChangeState
trigger1 = Time = 180
value = 62001

;Dante, From Intro, Fall Down
[Statedef 62001]
type = S
movetype= I
Physics = N
ctrl = 0
anim = 62001

[State 62001, Instance Destroy]
type = DestroySelf
trigger1 = Time = 105

[Statedef 3062]
type = S
movetype= I
Physics = N
ctrl = 0
anim = 3062
sprpriority = 5

[State 3062, VelSet]
type = VelSet
trigger1 = Time = 0
y = -4

[State 3062, Security]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3062, AngleDraw]
type = AngleDraw
trigger1 = 1
value = Time*3
ignorehitpause = 1

[State 3062, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-time*16, Time-256

[State 3062, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;Violet's Attack, Part 1
[Statedef 17652]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 13.4, 0
juggle = 4
anim = 17652
sprpriority = 2
poweradd = -500

[State 17652, Gravity]
type = VelAdd
trigger1 = 1
y = .2

[State 17652, EX Sound]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 17652, Hit]
type = HitDef
trigger1 = Time = 0
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Hard
priority = 5,Miss
damage = 25,1
pausetime = 12, 60
guard.pausetime = 8,8
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -5,-20
hitsound = S5,2
guardsound = S6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
air.hittime = 20
ground.velocity = -6,-4
fall = 1
fall.recover = 0
fall.recovertime = 0
down.bounce = 1

[State 17653, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
ignorehitpause = 1

[State 17653, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
stateno = 17655
time = 1
ignorehitpause = 1

[State 17652, ChangeState]
type = ChangeState
trigger1 = MoveHit
value = 17653
ctrl = 0

[State 17652, DestroySelf]
type = DestroySelf
trigger1 = screenpos X < -100 || screenpos X > 420

;Violet's Attack, Part 2
[Statedef 17653]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 17653
sprpriority = 2

[State 17653, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
ignorehitpause = 1

[State 17653, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
stateno = 17655
time = 1
ignorehitpause = 1

[State 17653, ChangeState]
type = ChangeState
trigger1 = pos Y >= 35
value = 17655
ctrl = 0

[State 17653, PlayerPush]
type = PlayerPush
trigger1 = Time = 0
value = 1

[State 17653, Move]
type = VelSet
trigger1 = AnimElem = 3
x = 2

[State 17653, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
x = .85

[State 17653, Feet]
type = VelSet
trigger1 = AnimElem = 8
x = 6
y = 6

[State 17653, Hit A]
type = HitDef
trigger1 = AnimElemTime(3) = 0
attr = A,SA
hitflag = MAFD+
guardflag = MA
getpower = 0,0
animtype = Hard
priority = 5,Hit
damage = 25,1
pausetime = 12, 60
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -5,-20
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
air.hittime = 20
ground.velocity = -6,-4
fall = 1
fall.recover = 0
fall.recovertime = 0
down.bounce = 1

[State 17653, Hit B]
type = HitDef
trigger1 = AnimElemTime(8) = 0
attr = A,SA
hitflag = MAFD+
guardflag = MA
getpower = 0,0
animtype = Back
priority = 5,Hit
damage = 92,1
pausetime = 18, 18
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -5,-20
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 15
air.hittime = 20
ground.velocity = -12,12
air.velocity = -12,12
fall = 1
p1stateno = 17654
fall.recover = 0
fall.recovertime = 0
down.bounce = 1

;Violet's Attack, Part 3
[Statedef 17654]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 0, 0
anim = 17654
sprpriority = 2

[State 17654, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -6
y = -6

[State 17652, DestroySelf]
type = DestroySelf
trigger1 = screenpos X < -100 || screenpos X > 420

;Violet's Attack, FAILED
[Statedef 17655]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0, 0
anim = 17655
sprpriority = 2

[State 17655, VelSet]
type = VelSet
trigger1 = Time = 0
x = -6
y = -6

[State 17655, DestroySelf]
type = DestroySelf
trigger1 = screenpos X < -100 || screenpos X > 420

;========================<SUPER CHARGE Level 3-4>=============================
[Statedef 7501]
physics=N
velset=0,0
anim=9741

[State 7501, Lv3]
type=bgpalfx
trigger1= time<=20
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)

[State 7501, Lv3]
type=bgpalfx
trigger1= (time=[21,54])
time=1
mul=0,0,0
color=0

[State 7501, Lv3]
type=bgpalfx
trigger1= time>=55
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

[State 7501, Portrait]
type=explod
trigger1= time=1
anim=7510
ID=7510
postype=back
pos=160,120
sprpriority=-4
bindtime=-1
pausemovetime=-1
supermovetime=-1

[State 7501, Port]
type=modifyexplod
trigger1= numexplod(7510) && time<8
ID=7510
postype=back
pos=16,120
scale=1,1
trans=addalpha
alpha=(32*time),256

[State 7501, Port]
type=modifyexplod
trigger1= numexplod(7510) && (time=[8,50])
ID=7510
postype=back
pos=160,120
scale=1,1
trans=addalpha
alpha=256,256

[State 7501, Port]
type=modifyexplod
trigger1= numexplod(7510) && time>=50
ID=7510
postype=back
pos=160,120+(8*(time-50))
scale=1+(.25*(time-50)),1+(.25*(time-50))
trans=addalpha
alpha=256-ceil(25.6*(time-50)),256

[State 7501, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
flag3=nobardisplay

[State 7501, No bars]
type=assertspecial
trigger1= 1
flag=noFG

[State 7501, Safety]
type=removeexplod
trigger1= time>=60

[State 7501, End]
type=destroyself
trigger1= time>=60

;PotS

;Super Spark Helper
[Statedef 7930]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 5

[State 7930, LOL]
type = Explod
trigger1 = Time = 0
anim = 7930+random%8
ID = 7930
pos = 0,0
facing = 1
removetime = -2
supermovetime = 9999
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1

[State 8696, Create Halos]
type = Explod
trigger1 = Time = 0
anim = 2005+random%4
ID = 8698
pos = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
ontop = 1
ownpal = 1
scale = .5,.5

[State 7930, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(7930) && !numexplod(8698)

[Statedef 8696]
type =A
physics = N
velset = 0, 0
anim = 9741
ctrl = 0

[State 8696, HitSpark]
type = Explod
trigger1 = Time = 0
anim = 7930+random%8
ID = 7920
pos = 0,0
removetime = -2
supermovetime = 9999
pausemovetime = 9999
ontop = 1
ownpal = 1

[State 8696, VarSet]
type = VarSet
trigger1 = Time < 10
fvar(0) = random%4

[State 8696, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(7920) && !numexplod(8696)

;---------------------------------------------------------------------------
; Super Cancel Display Helper
;------------------------ 1
[Statedef 2310]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20000
velset = 0,0
ownpal = 1

[State 2310, 1] ;Super Cancel Enter
type = Explod
trigger1 = Time = 0
anim = 30005
id = 30005
postype = left
pos = 320,0
vel = -40,0
facing = 1
ontop = 1
pausemovetime = 99999999999999
supermovetime = 99999999999999
scale = 0.5,0.5
persistent = 0

[State 2310, Kill Super Cancel Entry]
type = RemoveExplod
trigger1 =  time > 5
id =  30005
;ignorehitpause =
;persistent =

[State 2310, 1] ;Super Cancel Freeze
type = Explod
trigger1 = Time = 5
anim = 30005
id = 30015
postype = left
pos = 0,0
vel = 0,0
facing = 1
bindtime = -1
sprpriority = -100
pausemovetime = 99999999999999
supermovetime = 99999999999999
persistent = 0
ontop = 1
scale = 0.5,0.5

[State 2310, Kill Super Cancel Freeze]
type = RemoveExplod
trigger1 =  time > 35
id =  30015
;ignorehitpause =
;persistent =

[State 2310, 1] ;Super Cancel Exit
type = Explod
trigger1 = Time = 35
anim = 30005
id = 30025
postype = left
pos = 0,0
vel = -40,0
facing = 1
sprpriority = -100
pausemovetime = 99999999999999
supermovetime = 99999999999999
scale = 0.5,0.5
persistent = 0
ontop = 1

[State 2310, Kill Super Cancel Exit]
type = RemoveExplod
trigger1 =  time > 40
id =  30025
;ignorehitpause =
;persistent =

;Generated by Fighter Factory PalFX Editor
[State 2310, PalFXWiz]
type = BGPalFX
trigger1 = 1
time = 1
add = -100,-100,-100
mul = 256,256,256
invertall = 0
color = 256

[State 2310, DestroySelf]
type = DestroySelf
trigger1 = time > 40
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
; Dream Cancel Display Helper
;------------------------ 1
[Statedef 2320]
type = A
movetype = I
physics = N
ctrl = 0
anim = 20000
velset = 0,0
ownpal = 1

[State 2320, 1] ;Dream Cancel Enter
type = Explod
trigger1 = Time = 0
anim = 30006
id = 30006
postype = left
pos = 320,0
vel = -40,0
facing = 1
sprpriority = -100
pausemovetime = 99999999999999
supermovetime = 99999999999999
scale = 0.5,0.5
persistent = 0
ontop = 1

[State 2320, Kill Dream Cancel Entry]
type = RemoveExplod
trigger1 =  time > 5
id =  30006
;ignorehitpause =
;persistent =

[State 2320, 1] ;Dream Cancel Freeze
type = Explod
trigger1 = Time = 5
anim = 30006
id = 30016
postype = left
pos = 0,0
vel = 0,0
facing = 1
bindtime = -1
sprpriority = -100
pausemovetime = 99999999999999
supermovetime = 99999999999999
scale = 0.5,0.5
persistent = 0
ontop = 1

[State 2320, Kill Dream Cancel Freeze]
type = RemoveExplod
trigger1 =  time > 35
id =  30016
;ignorehitpause =
;persistent =

[State 2320, 1] ;Dream Cancel Exit
type = Explod
trigger1 = Time = 35
anim = 30006
id = 30026
postype = left
pos = 0,0
vel = -40,0
facing = 1
sprpriority = -100
pausemovetime = 99999999999999
supermovetime = 99999999999999
scale = 0.5,0.5
persistent = 0
ontop = 1

[State 2320, Kill Dream Cancel Exit]
type = RemoveExplod
trigger1 =  time > 40
id =  30026
;ignorehitpause =
;persistent =

[State 2320, PalFXWiz]
type = BGPalFX
trigger1 = 1
time = 1
add = -100,-100,-100
mul = 256,256,256
invertall = 0
color = 256

[State 2320, DestroySelf]
type = DestroySelf
trigger1 = time > 40
;ignorehitpause =
;persistent =

;========================<POWER CHARGE>=============================
;---MAIN FX---
[Statedef 7240]
type=S
anim=7240
velset=0,0
ctrl=0

[State 7240, Bind]
type=bindtoroot
trigger1= (root,stateno=197) && (root,anim=11621+root,var(27))
pos=-4,0
[State 7240, Snd]
type=playsnd
trigger1= !time
value=7,4
channel=0

[State 7240, Aura]
type=explod
trigger1= !numexplod(7242)
ID=7242
anim=7242
sprpriority=3
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1

[State 7240, FX]
type=modifyexplod
trigger1= numexplod(7242) && (root,power<3000)
ID=7242
scale=.5,.2+.4*(root,power/3000.0)
[State 7240, FX]
type=modifyexplod
trigger1= numexplod(7242) && (root,power>=3000)
ID=7242
scale=.5,.5

[State 7240, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7240, End]
type=stopsnd
trigger1= (root,stateno!=197) || (root,anim!=11621+root,var(27)) || (root,movetype=H)
channel=0
[State 7240, End]
type=removeexplod
trigger1= (root,stateno!=197) || (root,anim!=11621+root,var(27)) || (root,movetype=H)
[State 7240, End]
type=destroyself
trigger1= (root,stateno!=197) || (root,anim!=11621+root,var(27)) || (root,movetype=H)


;---PARTICLES---
[Statedef 7243]
type=S
anim=9741
velset=0,0
ctrl=0

[State 7243, Bind]
type=bindtoroot
trigger1= !(time%4)
pos=ceil(-80+(random/6.25)),ceil(9-(random/6.25))

[State 7243, Particle]
type=explod
trigger1= (time%4)=1
anim=7243
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel=((rootdist x-0)/16.0),((rootdist y-71)/16.0)
scale=ifelse(random<500,.5,-.5),ifelse(random<500,.5,-.5)
removetime=16
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 7243, End]
type=removeexplod
trigger1= (root,stateno!=197) || (root,anim!=11621+root,var(27)) || (root,movetype=H)
[State 7243, End]
type=destroyself
trigger1= (root,stateno!=197) || (root,anim!=11621+root,var(27)) || (root,movetype=H)

;PotS

;======================================
;Steam Roller Wreckage 1
;======================================

[Statedef 13550]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 3,-3
anim = 13550
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Steam Roller Wreckage 2
;======================================

[Statedef 13551]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 2,-4
anim = 13551
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Steam Roller Wreckage 3
;======================================

[Statedef 13552]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 1,-5
anim = 13552
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Steam Roller Wreckage 4
;======================================

[Statedef 13553]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,-6
anim = 13553
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Steam Roller Wreckage 5
;======================================

[Statedef 13554]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -1,-5
anim = 13554
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Steam Roller Wreckage 6
;======================================

[Statedef 13555]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -3,-4
anim = 13555
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Steam Roller Wreckage 7
;======================================

[Statedef 13556]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -2,-3
anim = 13556
ctrl = 0

[State 0, No Shadow]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 3005, Gravity]
type = VelAdd
trigger1 = 1
y = 0.40

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 240

;======================================
;Master Spark Helper
;======================================

[Statedef 3016]
physics=N
velset=0,0
anim=6790
sprpriority = 7

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 25,-70
ignorehitpause = 1

[State 3016, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = S6789,1

[State 3016, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3016, Ring 1]
type = Explod
trigger1 = Time = 0
anim = 6789
ID = 10000
removetime = 34
pos = 0,0 ;10,0
postype = p1
supermovetime = 0
pausemovetime = 0
scale = 1,0.65
sprpriority = 8
ownpal = 1
removeongethit = 0
vel = (316.25/35.0000000),0
accel = -0.5,0

[State 3016, Ring 1]
type = Explod
trigger1 = Time = 35
anim = 6789
ID = 10000
removetime = -1
pos = 10,0
postype = p1
supermovetime = 0
pausemovetime = 0
scale = 1,0.65
sprpriority = 8
ownpal = 1
removeongethit = 0

[State 3016, Ring 2]
type = Explod
trigger1 = Time = 0
anim = 6789
ID = 10001
pos = 0,0;130,0
postype = p1
removetime = 34
supermovetime = 0
pausemovetime = 0
scale = 1,2
vel = (436.25/35.0000000),0
accel = -0.5,0
sprpriority = 8
ownpal = 1
removeongethit = 0

[State 3016, Ring 2]
type = Explod
trigger1 = Time = 0
anim = 6789
ID = 10001
pos = 130,0
postype = p1
removetime = -1
supermovetime = 0
pausemovetime = 0
scale = 1,2.25
sprpriority = 8
ownpal = 1
removeongethit = 0

[State 3016, Ring 3]
type = Explod
trigger1 = Time = 0
anim = 6789
ID = 10002
pos = 0,0;260,0
removetime = 34
postype = p1
supermovetime = 0
pausemovetime = 0
scale = 1,2.62
sprpriority = 8
ownpal = 1
removeongethit = 0
vel = (566.25/35.0000000),0
accel = -0.5,0

[State 3016, Ring 3]
type = Explod
trigger1 = Time = 0
anim = 6789
ID = 10002
pos = 260,0
removetime = -1
postype = p1
supermovetime = 0
pausemovetime = 0
scale = 1,2
sprpriority = 8
ownpal = 1
removeongethit = 0

[State 3016, Ray 2]
type = Explod
trigger1 = Time = 0
anim = 6790
ID = 10567
pos = 0,0
postype = p1
removetime = -1
supermovetime = 0
pausemovetime = 0
scale = 1.3,1.4
trans = addalpha
alpha = 178,256
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10567
scale = 1.3,1.4-(((35.00-time)/35.00)*1.4)
trans = addalpha
alpha = 178,256
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time >= 35
ID = 10567
scale = 1.3,1.4
trans = addalpha
alpha = 178,256
ignorehitpause = 1

[State 3016, Trans]
type = Trans
trigger1 = time < 35
trans = addalpha
alpha = 256-(((35-time)/35)*256),256
ignorehitpause = 1

[State 3016, Trans]
type = Trans
trigger1 = time >= 35
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 3016, AngleDraw]
type = AngleDraw
trigger1 = Time < 35
scale = 1.3,0.70-(((35.00-time)/35.00)*0.7)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10000
scale = 1,2-(((35.00-time)/35.00)*2)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time >= 35
ID = 10000
scale = 1,2
vel = 0,0
accel = 0,0
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10001
scale = 1,2.25-(((35.00-time)/35.00)*2.25)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time >= 35
ID = 10001
scale = 1,2.25
vel = 0,0
accel = 0,0
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10002
scale = 1,2.62-(((35.00-time)/35.00)*2.62)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time >= 35
ID = 10002
scale = 1,2.62
vel = 0,0
accel = 0,0
ignorehitpause = 1

[State 3016, AngleDraw]
type = AngleDraw
trigger1 = Time >= 35
scale = 1.3,0.7
ignorehitpause = 1

[State 3016, Helper]
type = Helper
trigger1 = time = 12
helpertype = normal
name = "Master Spark Hitdef"
ID = 3017
pos = 0,0
stateno = 3017
postype = p1
ownpal = 1
persistent = 0

[State 3016, ChangeState]
type = ChangeState
trigger1 = root,stateno!= 3015
value = 3018
ctrl = 0

[Statedef 3018]
physics=N
velset=0,0
sprpriority = 7

[State 3018, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3018, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10567
trans = addalpha
alpha = (((35.00-time)/35.00)*128),256
scale = 1.3,(((35.00-time)/35.00)*1.4)
ignorehitpause = 1

[State 3018, Scale Master Spark]
type = ModifyExplod
trigger1 = Time >= 35
ID = 10567
scale = 1.3,0
trans = addalpha
alpha = 0,256
ignorehitpause = 1

[State 3018, Trans]
type = Trans
trigger1 = time < 23
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 3018, AngleDraw]
type = AngleDraw
trigger1 = Time < 23
scale = 1.3,(((25.00-time)/25.00)*0.70)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10000
scale = (((35.00-time)/35.00)*2),(((35.00-time)/35.00)*2)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10001
scale = (((35.00-time)/35.00)*2.25),(((35.00-time)/35.00)*2.25)
ignorehitpause = 1

[State 3016, Scale Master Spark]
type = ModifyExplod
trigger1 = Time < 35
ID = 10002
scale = (((35.00-time)/35.00)*2.65),(((35.00-time)/35.00)*2.65)
ignorehitpause = 1

[State 3018, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 23
flag = invisible

[State 3018, RemoveExplod]
type = RemoveExplod
trigger1 = tIME = 35
id = 10567

[State 3018, RemoveExplod]
type = RemoveExplod
trigger1 = tIME = 35
id = 10000

[State 3018, RemoveExplod]
type = RemoveExplod
trigger1 = tIME = 35
id = 10001

[State 3018, RemoveExplod]
type = RemoveExplod
trigger1 = tIME = 35
id = 10002

[State 3018, DestroySelf]
type = DestroySelf
trigger1 = time >= 35

[Statedef 3017]
type = A
physics=N
movetype =A
velset=0,0
anim=6791
sprpriority = 7

[State 3017, VarSet]
type = VarSet
trigger1 = Time < 13
v = 4
value = 35
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = Time >= 13 && time < 16
v = 4
value = 23
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = Time >= 16 && time < 32
v = 4
value = 13
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = Time >= 32 && time < 56
v = 4
value = 11
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = Time >= 56
v = 4
value = 4
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = Time < 49
v = 5
value = 2
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = Time >= 49 && time < 120
v = 5
value = 1
ignorehitpause = 1

[State 3017, VarSet]
type = VarSet
trigger1 = time >= 120
v = 5
value = 0
ignorehitpause = 1

[State 3017, HitDef]
type = HitDef
trigger1 = (Time % 6) = 0 && time < 192
attr = A,HP
hitflag = MAFP
guardflag = MA
animtype = hard
priority = 6,Hit
damage = var(4),var(5)
pausetime = 0,1
sparkno = S2000+random%4
guard.sparkno = S7911
sparkxy = 0,0
hitsound = S5,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 24
ground.hittime = 24
air.hittime = 20
guard.dist = 320
ground.velocity = -5,0
air.velocity = -5,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall = 1
id = 3016
getpower = 0,0

[State 3017, HitDef]
type = HitDef
trigger1 = time = 192
attr = A,HP
hitflag = MAFP
guardflag = MA
animtype = hard
priority = 6,Hit
damage = 12,1
pausetime = 0,1
sparkno = S2000+random%4
guard.sparkno = S7911
sparkxy = 0,0
hitsound = S5,9
guardsound = S6,0
ground.type = Low
ground.slidetime = 24
p2stateno = 4850
p2facing = 1
ground.hittime = 24
air.hittime = 20
guard.dist = 320
ground.velocity = -19,0
air.velocity = -19,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
id = 3016
getpower = 0,0

[State 0, BindToRoot]
type = BindToParent
trigger1 = 1
pos = 0,0
ignorehitpause = 1

[State 3016, ChangeState]
type = DestroySelf
trigger1 = root,stateno!= 3015
trigger2 = parent,stateno!= 3016
ignorehitpause = 1

[Statedef 23018]
type=A
physics=N
velset=-4.9-(2*random/1000.0),-4.4-(3*random/1000.0)
anim=23018
sprpriority = 7

[State 23018, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.9

[State 23018, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 23018, AngleDraw]
type = AngleDraw
trigger1 = time<25
;value = time*8
scale = 0.07+1.43*(time/25.000), 0.07+1.43*(time/25.000)
ignorehitpause=1

[State 23018, AngleDraw]
type = AngleDraw
trigger1 = time>=25
;value = time*8
scale = 1.5, 1.5
ignorehitpause=1

[State 23018, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 23018, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S100,1+random%6
freqmul = 1
channel=1

[State 23018, ChangeState]
type = DestroySelf
trigger1 = Pos Y > 120
ignorehitpause = 1

[Statedef 4850] ;Through The Air 2
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4850, Let's Fly Away]
type = ChangeAnim2
trigger1 = Time = 0
value = 3022

[State 4850, HitVelSet]
type = HitVelSet
trigger1 = Time = [0,3]
x = 1

[State 4850, Follow The First Few Ticks]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = (Time < 25),0

[State 4850, Hit Wall]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 4851 ;Get Stuck!
ctrl = 0

[Statedef 4851]
type = A
movetype = H
physics = N
ctrl = 0

[State 4851, Explod]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1

[State 4851, DefenceMulSet]
type = DefenceMulSet
trigger1 = 1
value = 0.5
ignorehitpause =1

[State 4851, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2
volume = 555

[State 4851, Wheeee!!]
type = ChangeAnim2
trigger1 = Time = 0
value = 4851

[State 4851, Wheeee!!]
type = ChangeAnim2
trigger1 = Time = 45
value = 3023

[State 4851, Turn immediatly]
type = Turn
trigger1 = Time = 45

[State 4851, VelSet]
type = VelSet
trigger1 = Time = 45
x = -3.5
y = -7

[State 4851, VelAdd]
type = VelAdd
trigger1 = Time >= 45
y = .45

[State 4851, Finnally You Can Go To Own States!]
type = SelfState
trigger1 = Vel Y >= 0 && Pos Y >= 10
value = 5100

;"Spell Card" BG
[Statedef 7899]
physics=N
velset=0,0
anim=9741

[State 7899, BGPalFX]
type = BGPalFX
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = time < 45
time = 1
mul = floor(256-((time/45.000)*256)),floor(256-((time/45.000)*256)),floor(256-((time/45.000)*256))
ignorehitpause = 1

[State 7899, BGPalFX]
type = BGPalFX
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = time >= 45
time = 1
mul = 0,0,0
ignorehitpause = 1

[State 7899, Lowest BG]
type = Explod
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = Time = 0
anim = 7899
ID = 7899
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 0.5,0.5
sprpriority = -26
ownpal = 1
removeongethit = 0

[State 7899, ModifyExplod]
type = ModifyExplod
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = Time < 45
ID = 7899
trans=addalpha
alpha=((time/45.000)*100),256

[State 7899, ModifyExplod]
type = ModifyExplod
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = Time >= 45
ID = 7899
trans=addalpha
alpha=100,256
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(10)=0

[State 0, VarSet]
type = VarSet
trigger1 = (root,stateno!=[23650,23659])&&(root,stateno!=33650)
var(10)=1

[State 0, VarSet]
type = VarSet
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = var(5) >= 320
v = 5
value = 0

[State 0, VarSet]
type = VarAdd
trigger1=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
v = 5
value = 1

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
ID = 7898
pos = var(5),0
postype = back
ignorehitpause = 1

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
ID = 7897
pos = -320+var(5),0
postype = back
ignorehitpause = 1

[State 7899, BG 2]
type = Explod
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = Time = ifelse(root,var(10)=7,45,0)
anim = 7898
ID = 7898
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 1.25,0.94
sprpriority = -5
ownpal = 1
removeongethit = 0
ontop = 0

[State 7899, BG 2]
type = Explod
triggerall=(root,stateno!=[23650,23659])&&(root,stateno!=33650)
trigger1 = Time = ifelse(root,var(10)=7,45,0)
anim = 7898
ID = 7897
pos = -320,0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 1.25,0.94
sprpriority = -5
ownpal = 1
removeongethit = 0
ontop = 0

[State 7899, BG Dissapear]
type = ChangeState
trigger1 = root,Win
value = 17898
ctrl = 0
ignorehitpause=1

[State 7899, BG Dissapear]
type = ChangeState
trigger1 = root, stateno < 3000 || (root,stateno = [6280,6290])
trigger2 = root,movetype = H
value = 7898
ctrl = 0

[Statedef 17898]
physics=N
velset=0,0
anim=9741

[State 17898, AssertSpecial]
type = AssertSpecial
trigger1 = Time<15
flag = noBG
flag2 = noFG

[State 17898, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 7897

[State 17898, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 7898

[State 17899, ModifyExplod]
type = RemoveExplod
trigger1 = Time =0
ID = 7899

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 7895

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time =0
ID = 7896

[State 7899, EnvColor]
type = EnvColor
trigger1 = Time=0||Time=2||Time=5||Time=8||Time=11||Time=14||Time=17||Time=20||Time=23||Time=26||Time=29||Time=32
value = 255,255,255
time = 2-1*(time=0)
under = 0

[State 7899, HYPER COMBO FINISH!!1]
type = PlaySnd
trigger1 = Time=0
value = S22777,1

[State 7899, HYPER COMBO FINISH!!1]
type = PlaySnd
trigger1 = Time=35
value = S22777,0

[State 7899, BG 2]
type = Explod
trigger1 = Time = 0
anim = 22777
ID = 17898
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = .5,.5
sprpriority = -5
ownpal = 1
removeongethit = 0
ontop = 0
trans=addalpha
alpha=256,0

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1 = Time > 80
ID = 17898
trans=addalpha
alpha=(256-(((time-80)/45.000)*256)),(((time-80)/45.000)*256)

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time > 125
ID = 17898

[Statedef 117898]
physics=N
velset=0,0
anim=9741

[State 7899, NC LINE LOL]
type = PlaySnd
trigger1 = Time=36
value = S23652,4
abspan=0
volume=700

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 7899, BG 2]
type = Explod
trigger1 = Time = 0
anim = 8889
ID = 8889
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 1,1
sprpriority = -3
ownpal = 1
removeongethit = 0
ontop = 0
trans=addalpha
alpha=256,256

[State 7899, BG 2]
type = Explod
trigger1 = Time = 0
anim = 8888
ID = 8888
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = .5,.5
sprpriority = -4
ownpal = 1
removeongethit = 0
ontop = 0
trans=addalpha
alpha=256,0

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1 = Time > 80
ID = 8889
trans=addalpha
alpha=(256-(((time-80)/45.000)*256)),256

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1 = Time > 80
ID = 8888
trans=addalpha
alpha=(256-(((time-80)/45.000)*256)),(((time-80)/45.000)*256)

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time > 125
ID = 8888

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time > 125
ID = 8889

[State 7899, DestroySelf]
type = DestroySelf
trigger1 = Time>450

[Statedef 7898]
physics=N
velset=0,0
anim=9741

[State 7899, BGPalFX]
type = BGPalFX
trigger1 = time < 45
time = 1
mul = floor(((time/45.000)*256)),floor(((time/45.000)*256)),floor(((time/45.000)*256))
ignorehitpause = 1

[State 7898, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 7897

[State 7898, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 7898

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1 = Time < 45
ID = 7899
trans=addalpha
alpha=(100-((time/45.000)*100)),256

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time >= 45
ID = 7899

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time >= 45
ID = 7895

[State 7899, ModifyExplod]
type = RemoveExplod
trigger1 = Time >= 45
ID = 7896

[State 7899, BG 2]
type = Explod
trigger1 = Time = 0
anim = 7895
ID = 7895
pos = var(5),0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 1.25,0.94
sprpriority = -5
ownpal = 1
removeongethit = 0
ontop = 0

[State 7899, BG 2]
type = Explod
trigger1 = Time = 0
anim = 7895
ID = 7896
pos = -320+var(5),0
postype = back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 1.25,0.94
sprpriority = -5
ownpal = 1
removeongethit = 0
ontop = 0

[State 7898, DestroySelf]
type = DestroySelf
trigger1 = time > 45

[Statedef 22000]
physics=N
velset=0,0
anim=22000
ctrl=0
sprpriority=7

[State 22000, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = S22000, 0

[State 22000, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = S20, 36

[State 22000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 1
freq = 176
ampl = -5

[State 5110, 7]
type = GameMakeAnim
trigger1 = AnimElem = 4
value = 62
pos = 0, 0
under = 0

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 22010
ctrl = 0

[Statedef 22001]
physics=N
velset=0,0
anim=22001
ctrl=0
sprpriority=7

[State 22000, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = S22000, 0

[State 22000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 1
freq = 176
ampl = -5

[State 5110, 7]
type = GameMakeAnim
trigger1 = AnimElem = 4
value = 62
pos = 0, 0
under = 0

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 22010
ctrl = 0

[Statedef 22002]
physics=N
velset=0,0
anim=22002
ctrl=0
sprpriority=7

[State 22000, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = S22000, 0

[State 22002, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = S2435, 2

[State 22002, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 1
freq = 176
ampl = -5

[State 5110, 7]
type = GameMakeAnim
trigger1 = AnimElem = 4
value = 62
pos = 0, 0
under = 0

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 22010
ctrl = 0

[Statedef 22010]
physics=N
velset=0,0
ctrl=0
sprpriority=7

[State 22010, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = anim+10

[State 7898, DestroySelf]
type = DestroySelf
trigger1 = time > 30

[Statedef 133801]
physics=N
velset=0,0
anim=9741

[State 133801, BG 2]
type = Explod
trigger1 = Time = 0
anim = 12345
ID = 12345
pos = ifelse(teamside=1,-280,600),90
postype = left  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 130
supermovetime = 9999999999
pausemovetime = 9999999999
scale = 0.5,0.5
ownpal = 1
removeongethit = 0
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S913,0
volume=999
abspan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time%38=0
value = S13332,1
volume=999
abspan = 0

[State 7899, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 12345
pos = ifelse(teamside=1,(-280+time*6),(600-time*6)),90
postype=left
scale=0.5+0.1*sin(time*6),0.5+0.1*sin(time*6)

[State 7898, DestroySelf]
type = DestroySelf
trigger1 = time > 130

[Statedef 43333]
type = S
movetype = I
physics = N
anim=11111
sprpriority = 99

[State 6000, Base Unit]
type = VarSet
trigger1 = 1
var(10) = 286
ignorehitpause=1

[State 6000, Base Unit]
type = VarSet
trigger1 = teamside=1
var(10) = 25
ignorehitpause=1

[State 0, MIN]
type = VarSet
triggerall = teamside=1
trigger1 = Time=0 || fvar(0)<-225
fv = 0
value = -225

[State 0, MIN]
type = VarSet
triggerall = teamside=2
trigger1 = Time=0 || fvar(0)>511
fv = 0
value = 511

[State 0, MAX]
type = VarSet
triggerall = teamside=1
trigger1 = fvar(0)>var(10)
fv = 0
value = var(10)

[State 0, MAX]
type = VarSet
triggerall = teamside=2
trigger1 = fvar(0)<var(10)
fv = 0
value = var(10)

[State 0, Vel]
type = VarSet
trigger1 = roundstate=2
fv = 1
value = (2.5/(1-(0.99)**45))*ifelse(teamside=1,1,-1)
persistent=0

[State 0, Vel]
type = VarSet
trigger1 = roundstate>=4
fv = 1
value = (2.5/(1-(0.99)**45))*ifelse(teamside=1,-1,1)
persistent=0

[State 0, Add to vel]
type = VarAdd
trigger1 = roundstate>=2
fv = 0
value = fvar(1)

[State 0, VarSet]
type = VarSet
trigger1 = roundstate>=2
fv = 1
value = fvar(1)*0.99

[State 6000, LOL]
type = VarSet
trigger1 = Time=0
trigger2 = (parent,var(34))!=var(11)
trigger3 = var(0)>0
trigger4 = parent,var(34)>=99
var(2) = 256
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = (parent,var(34))!=var(11)
var(0)= 10

[State 0, VarAdd]
type = VarAdd
trigger1 = var(0)>0
var(0) = -1
ignorehitpause=1

[State 6000, VarSet]
type = VarSet
trigger1 = 1
v = 11
value = parent,var(34)
ignorehitpause=1

[State 6000, VarSet]
type = VarSet
trigger1 = var(11)>99
v = 11
value = 99
ignorehitpause=1

[State 6000, Dec]
type = VarSet
trigger1 = 1
var(41) = floor(var(11)/10)
ignorehitpause=1

[State 6000, Unit]
type = VarSet
trigger1 = 1
var(42) = var(11)-(var(41)*10)
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 = var(2)>0
var(2) = -1
ignorehitpause=1

[State 6000, Unidades]
type = Explod
trigger1 = var(2)>0
anim = 10000+var(42)
ID = 43333
pos = fvar(0),75
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 1
scale = .25,.25
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 6000, Decenas]
type = Explod
triggerall = var(2)>0
trigger1 = var(11) >= 10
anim = 10000+var(41)
ID = 43333
pos = fvar(0)-10,75
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 1
scale = .25,.25
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 7000, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 43333
trans=addalpha
alpha=(256*(var(2)/256.00)),(256-256*(var(2)/256.00))
ignorehitpause=1

[Statedef 80000]
physics=N
velset=0,0
anim=9741

;var(0) = Slot Machine is Busy
;var(1) = Slot 1
;var(2) = Slot 2
;var(3) = Slot 3
;var(4) = RANDOMIZER CHOOSER

;====EXECUTORS====
;var(5) = Execute 0,1,2
;var(6) = Execute All 1,1,1
;var(7) = Execute All 2,2,2
;var(8) = Execute All 3,3,3
;var(9) = Execute 4,4,4
;var(10) = Execute 5,5,5
;var(11) = Execute 6,6,6
;var(12) = Execute 7,7,7
;var(13) = Execute 8,8,8
;var(14) = Execute 9,9,9
;var(15) = Execute 0,0,0
;var(16) = Execute 5,1,2

;var(17) = Time since roundstate=2

;====SLOT WINS====
;0,1,2 = Dan, Koa, Sheliss = Heal+Full Power
;1,1,1 = Koax3 = Invincibility Five Seconds!
;2,2,2 = Shelissx3 = 20 seconds of Burst
;3,3,3 = Lucasx3 = 20 Extra Hits.
;4,4,4 = Cherryx3 = Damage Boost
;5,5,5 = Nickx3 = Hit Tie Barrier (10 secs.)
;6,6,6 = Claricex3 = Full power!!
;7,7,7 = Kuromarux3 = 0 HITS
;8,8,8 = Sephirothx3 = 0 POWER
;9,9,9 = Utsuhox3 = Blow you, opponent, or both up
;0,0,0 = Danx3 = 0 HITS, Power and Life Down
;5,1,2 = Nick, Koa, Sheliss = Dan is Distracted

;====FVARS====
;fvar(0) = pos
;fvar(1) = vel

[State 0, MIN]
type = VarSet
trigger1 = roundstate<2 || fvar(0)<-25.0
fv = 0
value = -25.0

[State 0, MAX]
type = VarSet
trigger1 = fvar(0)>34
fv = 0
value = 34

[State 0, Vel]
type = VarSet
trigger1 = roundstate=2
fv = 1
value = 2.95627447
persistent=0

[State 0, Vel]
type = VarSet
trigger1 = roundstate>=3
fv = 1
value = -2.95627447
persistent=0

[State 0, Add to vel]
type = VarAdd
trigger1 = roundstate>=2
fv = 0
value = fvar(1)

[State 0, VarSet]
type = VarSet
trigger1 = roundstate>=2
fv = 1
value = fvar(1)*0.95

[State 80000, Set Hits]
type = ParentVarAdd
triggerall = var(0)<=0 ;Slot Machine is Not Busy
triggerall = root,var(34)>=10 ;Enough hits to Trade
triggerall = roundstate = 2 ;Need to say more?
triggerall = !(root,movetype=H) && !(root,stateno=[80026,80027])
triggerall = root,command = "ShowTime" || (root,var(45)!=0)
trigger1 = var(0):=360
v = 34
value = -10

;Total Distance = Initial Velocity * (1-Ratio^Slide Time)/(1-Ratio)



[State 0, VarRangeSet]
type = VarRangeSet
trigger1 = var(0) = 360
value = 0
first = 5
last = 16

[State 80003, RESET]
type = VarSet
trigger1 = roundstate!=2
v = 0
value = 0

[State 80003, RESET]
type = VarSet
trigger1 = Time=0
v = 28
value = 0

[State 0, PICK A PRESET SLOT]
type = VarRandom
trigger1 = var(0)=360
v = 4
range = 5,16

[State 0, Pick a Preset]
type = Varset
trigger1 = var(0)=360
v = var(4)
value = ifelse((random<(250-50*((var(4)=5)))),1,0)

[State 80000, Tick counter down!]
type = VarAdd
trigger1 = var(0)>0
var(0) = -1

[State 0, TICK]
type = PlaySnd
trigger1 = var(0)>=120
trigger1 = random<760
value = S8050,1
channel=6
abspan=0
lowpriority=1

[State 80000, First Slot (No Forced)]
type = VarRandom
trigger1 = var(0)>=280 ;Slot Machine is Busy
v = 1 ;Slot 1
range = 0,9

[State 80000, First Slot (FORCED 0,1,2)]
type = VarSet
triggerall = var(5)
trigger1 = var(0) = 280
v = 1 ;Slot 1
value = 0

[State 80000, First Slot (FORCED 5,1,2)]
type = VarSet
triggerall = var(16)
trigger1 = var(0) = 280
v = 1 ;Slot 1
value = 5

[State 80000, First Slot (FORCED)]
type = VarSet
triggerall = var(6) || var(7) || var(8) || var(9) || var(10) || var(11) || var(12) || var(13) || var(14)
trigger1 = var(0) = 280
v = 1 ;Slot 1
value = var(6) + var(7)*2 + var(8)*3 + var(9)*4 + var(10)*5 + var(11)*6 + var(12)*7 + var(13)*8 + var(14)*9

[State 80000, First Slot (FORCED TO FAIL)]
type = VarSet
triggerall = var(15)
trigger1 = var(0) = 280
v = 1 ;Slot 1
value = 0

[State 80000, Sound]
type = PlaySnd
trigger1 = var(0)=280
trigger2 = var(0)=200
trigger3 = var(0)=120
value = S8050,2
channel=7
abspan=0

[State 80000, Second Slot (No forced)]
type = VarRandom
trigger1 = var(0)>=200 ;Slot Machine is Busy
v = 2 ;Slot 2
range = 0,9

[State 80000, Second Slot (FORCED (0,1,2)/(5,1,2))]
type = VarSet
triggerall = var(5) || var(16)
trigger1 = var(0) = 200
v = 2 ;Slot 2
value = 1

[State 80000, Second Slot (FORCED)]
type = VarSet
triggerall = var(6) || var(7) || var(8) || var(9) || var(10) || var(11) || var(12) || var(13) || var(14)
trigger1 = var(0) = 200
v = 2 ;Slot 2
value = var(6) + var(7)*2 + var(8)*3 + var(9)*4 + var(10)*5 + var(11)*6 + var(12)*7 + var(13)*8 + var(14)*9

[State 80000, Second Slot (FORCED TO FAIL)]
type = VarSet
triggerall = var(15)
trigger1 = var(0) = 200
v = 2 ;Slot 2
value = 0

[State 80000, Third Slot (No forced)]
type = VarRandom
trigger1 = var(0)>=120 ;Slot Machine is Busy
v = 3 ;Slot 3
range = 0,9

[State 80000, Third Slot (FORCED (0,1,2))]
type = VarSet
triggerall = var(5) || var(16)
trigger1 = var(0) = 120
v = 3 ;Slot 3
value = 2

[State 80000, Third Slot (FORCED)]
type = VarSet
triggerall = var(6) || var(7) || var(8) || var(9) || var(10) || var(11) || var(12) || var(13) || var(14)
trigger1 = var(0) = 120
v = 3 ;Slot 3
value = var(6) + var(7)*2 + var(8)*3 + var(9)*4 + var(10)*5 + var(11)*6 + var(12)*7 + var(13)*8 + var(14)*9

[State 80000, First Slot (FORCED TO FAIL)]
type = VarSet
triggerall = var(15)
trigger1 = var(0) = 120
v = 3 ;Slot 3
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = root,var(34)<10
v = 32
value = 128

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 32
value = ifelse(((var(0)>=120 || var(0)=0) && roundstate=2),256,128)

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,ceil(fvar(0))
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = var(32),256-var(32)

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,ceil(fvar(0))
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = var(32),256-var(32)

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,ceil(fvar(0))
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = var(32),256-var(32)

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,ceil(fvar(0))
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = var(32),256-var(32)

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,ceil(fvar(0))
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = var(32),256-var(32)

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,ceil(fvar(0))
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans = addalpha
alpha = var(32),256-var(32)

[State 80000, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "Force Var = %d,  Chosen Var is on = %d"
params = var(4),var(var(4))

;====CHANGE STATES====

[State 80000, DAN-KOA-SHELISS]
type = ChangeState
triggerall = var(1) = 0 && var(2) = 1 && var(3) = 2
trigger1 = var(0) = 120
value = 80001
ctrl = 0

[State 80000, KOA X 3]
type = ChangeState
triggerall = var(1) = 1 && var(2) = 1 && var(3) = 1
trigger1 = var(0) = 120
value = 80002
ctrl = 0

[State 80000, SHELISS X 3]
type = ChangeState
triggerall = var(1) = 2 && var(2) = 2 && var(3) = 2
trigger1 = var(0) = 120
value = 80003
ctrl = 0

[State 80000, LUCAS X 3]
type = ChangeState
triggerall = var(1) = 3 && var(2) = 3 && var(3) = 3
trigger1 = var(0) = 120
value = 80004
ctrl = 0

[State 80000, CHERRY X 3]
type = ChangeState
triggerall = var(1) = 4 && var(2) = 4 && var(3) = 4
trigger1 = var(0) = 120
value = 80005
ctrl = 0

[State 80000, NICK X 3]
type = ChangeState
triggerall = var(1) = 5 && var(2) = 5 && var(3) = 5
trigger1 = var(0) = 120
value = 80006
ctrl = 0

[State 80000, CLARICE X 3]
type = ChangeState
triggerall = var(1) = 6 && var(2) = 6 && var(3) = 6
trigger1 = var(0) = 120
value = 80007
ctrl = 0

[State 80000, KUROMARU X 3]
type = ChangeState
triggerall = var(1) = 7 && var(2) = 7 && var(3) = 7
trigger1 = var(0) = 120
value = 80008
ctrl = 0

[State 80000, SEPHY X 3]
type = ChangeState
triggerall = var(1) = 8 && var(2) = 8 && var(3) = 8
trigger1 = var(0) = 120
value = 80009
ctrl = 0

[State 80000, OKUU X 3]
type = ChangeState
triggerall = var(1) = 9 && var(2) = 9 && var(3) = 9
trigger1 = var(0) = 120
value = 80010
ctrl = 0

[State 80000, DAN X 3]
type = ChangeState
triggerall = var(1) = 0 && var(2) = 0 && var(3) = 0
trigger1 = var(0) = 120
value = 80020
ctrl = 0

[State 80000, Nick, Koa, Sheliss]
type = ChangeState
triggerall = var(1) = 5 && var(2) = 1 && var(3) = 2
trigger1 = var(0) = 120
value = 80025
ctrl = 0

;====HEAL+FULL POWER+90 HITS!====
[Statedef 80001]
physics=N
velset=0,0
anim=9741

[State 80001, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80001, BONUS]
type = ParentVarSet
trigger1 = root,var(34)<90
v = 34
value = 90

[State 80001, TAKE IT!!!]
type = PowerSet
trigger1 = Time=0
value = powermax

[State 80001, GOOD EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80001, SUPER GOOD EFFECT!!!]
type = PlaySnd
trigger1 = (Time+20)%45=0
value = S5004,3
volume = 255
abspan = -160+random%320
channel= 5

[State 80001, SUPER GOOD EFFECT!!!]
type = PlaySnd
trigger1 = Time%45=0
value = S5004,10
volume = 255
abspan = -160+random%320
channel= 6

[State 80001, PalFXWiz]
type = BGPalFX
trigger1 = (Time%30)=0
time = 30
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
sinadd = 245,55,110,8
invertall = 1
color = 32

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80001, Back to Main Game]
type = ChangeState
trigger1 = Time >= 300
value = 80000
ctrl = 0

;====DUNUNU, NU NUNUNU INVINCIBLE!!====
[Statedef 80002]
physics=N
velset=0,0
anim=9741

[State 80001, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause=1

[State 80001, GOOD EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80001, SUPER GOOD EFFECT!!!]
type = PlaySnd
trigger1 = Time=0
value = S54192,0
volume = 255
abspan = 0
channel= 4
loop=1

[State 0, StopSnd]
type = StopSnd
trigger1 = Time>=360
channel = 4

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80001, Back to Main Game]
type = ChangeState
trigger1 = Time >= 360
value = 80000
ctrl = 0

;====25 SECONDS OF BURST====
[Statedef 80003]
physics=N
velset=0,0
anim=9741

[State 0, Been In Without Burst??]
type = VarSet
trigger1 = Time=0
v = 40
value = ifelse((!(root,var(24)>=0 && root,var(28)=1)),1,0)

[State 80003, GOOD EFFECT!!]
type = PlaySnd
triggerall = var(40)
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80003, BAD EFFECT!!]
type = PlaySnd
triggerall = !var(40)
trigger1 = Time=0 || Time=20 || Time=40
value = S8050,0
volume = 26
abspan = 0
channel= 7

[State 80003, BAD EFFECT!!]
type = PlaySnd
triggerall = !var(40)
trigger1 = Time=10
value = S8050,0
volume = 26
abspan = 0
freqmul = 0.6
channel= 7

[State 80003, BAD EFFECT!!]
type = PlaySnd
triggerall = !var(40)
trigger1 = Time=30
value = S8050,0
volume = 26
abspan = 0
freqmul=1.33
channel= 7

[State 80003, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80003, ParentVarSet]
type = ParentVarSet
triggerall = var(40)
trigger1 = Time=0
v = 24
value = 1500

[State 80003, ParentVarSet]
type = ParentVarSet
triggerall = var(40)
trigger1 = Time=0
v = 28
value = 1

[State 80003, Back to Main Game]
type = ChangeState
triggerall = var(40)
trigger1 = Time >= 1560
value = 80000
ctrl = 0

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80003, Back to Main Game]
type = ChangeState
triggerall = !var(40)
trigger1 = Time >= 240
value = 80000
ctrl = 0

;====Mere 20 Extra Hits====
[Statedef 80004]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80001, BONUS]
type = ParentVarAdd
trigger1 = Time=0
v = 34
value = 20

[State 80001, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80001, GOOD EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80001, Back to Main Game]
type = ChangeState
trigger1 = Time >= 150
value = 80000
ctrl = 0

;====DAMAGE BOOST====
[Statedef 80005]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80001, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80001, GOOD EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80001, Back to Main Game]
type = ChangeState
trigger1 = Time >= 360
value = 80000
ctrl = 0

;====HIT BARRIER====
[Statedef 80006]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80006, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80006, GOOD EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80006, Back to Main Game]
type = ChangeState
trigger1 = Time >= 150
value = 80000
ctrl = 0

;====FULL POWER====
[Statedef 80007]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 47,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 273,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 81,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 239,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (1P)]
type = Explod
trigger1 = Time=0 && teamside=1
anim = 2000
ID = 2000
pos = 115,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot Shine (2P)]
type = Explod
trigger1 = Time=0 && teamside=2
anim = 2000
ID = 2000
pos = 205,47
postype = left
facing = 1
ontop=1
scale=0.5,0.5
removetime = -2

[State 80007, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80007, GOOD EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S8050,3
volume = 26
abspan = 0
channel= 7

[State 80006, Back to Main Game]
type = ChangeState
trigger1 = Time >= 240
value = 80000
ctrl = 0

[State 80001, TAKE IT!!!]
type = PowerSet
trigger1 = Time=0
value = powermax

;====ZERO HITS====
[Statedef 80008]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 0, ParentVarAdd]
type = ParentVarSet
trigger1 = 1
v = 34
value = 0

[State 80008, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80008, Back to Main Game]
type = ChangeState
trigger1 = Time >= 300
value = 80000
ctrl = 0

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=0 || Time=20 || Time=40
value = S8050,0
volume = 26
abspan = 0
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=10
value = S8050,0
volume = 26
abspan = 0
freqmul = 0.6
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=30
value = S8050,0
volume = 26
abspan = 0
freqmul=1.33
channel= 7

;====ZERO POWER====
[Statedef 80009]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 0, PowerSet]
type = PowerSet
trigger1 = 1
value = 0

[State 80008, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80008, Back to Main Game]
type = ChangeState
trigger1 = Time >= 300
value = 80000
ctrl = 0

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=0 || Time=20 || Time=40
value = S8050,0
volume = 26
abspan = 0
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=10
value = S8050,0
volume = 26
abspan = 0
freqmul = 0.6
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=30
value = S8050,0
volume = 26
abspan = 0
freqmul=1.33
channel= 7

;====UTSUHO====
[Statedef 80010]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=0 || Time=20 || Time=40
value = S8050,0
volume = 26
abspan = 0
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=10
value = S8050,0
volume = 26
abspan = 0
freqmul = 0.6
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=30
value = S8050,0
volume = 26
abspan = 0
freqmul=1.33
channel= 7

[State 80010, Utsuho]
type = Helper
trigger1 = Time=0
helpertype = normal
name = "Utsuho Reiuyi"
ID = 80011
stateno = 80011
pos = 60,0
postype = left
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 80008, Back to Main Game]
type = ChangeState
trigger1 = Time >= 110
value = 80000
ctrl = 0

;===Actual Utsuho States===
[Statedef 80011]
statetype=S
movetype=A
physics=N
velset=0,0
anim=80011

[State 80011, Land]
type = PlaySnd
trigger1 = AnimElem=4
value = S40,0

[State 80011, Wind]
type = PlaySnd
trigger1 = AnimElem=6
trigger2 = AnimElem=14
value = S1,5

[State 80011, Boom]
type = PlaySnd
trigger1 = AnimElemTime(11)=0
value = S500,4
ignorehitpause=1

[State 80011, Jump]
type = PlaySnd
trigger1 = AnimElem=16
value = S41,0

[State 80011, BOOM!!]
type = EnvColor
trigger1 = AnimElemTime(11)=0
value = 255,0,0
time = 2
under = 0
ignorehitpause=1

[State 0, HitDef]
type = HitDef
trigger1 = AnimElemTime(11)=0
attr = S,HT
hitflag = MAFDP
guardflag =
affectteam = F
animtype = Hard
air.animtype = Hard
priority = 7,Hit
damage = 125,125
pausetime = 60 ,0
sparkno = S10019
sparkxy = 0,-45
hitsound = S5,11
ground.type = High
fall=1
fall.recover=0
guard.dist = 0
yaccel = 1
ground.velocity = -.3,-50
air.velocity = -.3,-50
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 0
sprpriority = 3
fall.yvelocity = -8.5
down.velocity = -.6,-25
down.bounce = 1
kill = 1
getpower = 0,0
givepower = 0,0
palfx.time = 20
palfx.mul = 250,224,120
palfx.add = 240,50,0
envshake.time = 17
envshake.freq = 140
envshake.ampl = -4
envshake.phase = 90
fall.envshake.time = 25
fall.envshake.freq = 150
fall.envshake.ampl = -7
ID=80011

[State 1100, Helper]
type = Helper
trigger1 = AnimElemTime(11)>0
triggerall = NumHelper(6161) < 1
triggerall = NumTarget(80011)
helpertype = normal
name = "P1 Flames"
ID = 6161
stateno = 6161
pos = 0,-57
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=1

[State 80011, Bye]
type = DestroySelf
trigger1 = AnimTime=0

;====LOL U FAIL====
[Statedef 80020]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 0, ParentVarAdd]
type = ParentVarSet
trigger1 = 1
v = 34
value = 0

[State 0, PowerSet]
type = PowerSet
trigger1 = 1
value = 0

[State 80008, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80008, Back to Main Game]
type = ChangeState
trigger1 = Time >= 300
value = 80000
ctrl = 0

[State 80008, WORST EFFECT!!]
type = PlaySnd
trigger1 = Time=0
value = S5500,3
volume = 255
abspan = 0
channel= 6

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=0 || Time=20 || Time=40
value = S8050,0
volume = 26
abspan = 0
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=10
value = S8050,0
volume = 26
abspan = 0
freqmul = 0.6
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=30
value = S8050,0
volume = 26
abspan = 0
freqmul=1.33
channel= 7

;====JEALOUSY?====
[Statedef 80025]
physics=N
velset=0,0
anim=9741

[State 80000, First Slot (1P)]
type = Explod
trigger1 = teamside=1
anim = 80000+var(1)
ID = 80000
pos = 34,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, First Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(1)
ID = 80000
pos = 261,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(2)
ID = 80001
pos = 68,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Second Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(2)
ID = 80001
pos = 227,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot]
type = Explod
trigger1 = teamside=1
anim = 80000+var(3)
ID = 80002
pos = 102,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80000, Third Slot (2P)]
type = Explod
trigger1 = teamside=2
anim = 80000+var(3)
ID = 80002
pos = 193,34
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 0
trans=addalpha
alpha=128,128

[State 80008, RESET]
type = VarSet
trigger1 = Time=0
v = 0
value = 0

[State 80008, Back to Main Game]
type = ChangeState
trigger1 = Time >= 120
value = 80000
ctrl = 0

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=0 || Time=20 || Time=40
value = S8050,0
volume = 26
abspan = 0
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=10
value = S8050,0
volume = 26
abspan = 0
freqmul = 0.6
channel= 7

[State 80008, BAD EFFECT!!]
type = PlaySnd
trigger1 = Time=30
value = S8050,0
volume = 26
abspan = 0
freqmul=1.33
channel= 7

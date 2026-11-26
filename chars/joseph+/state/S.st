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
;クラッカーブーメラン
[statedef 1000]
type=s
movetype=a
physics=s
poweradd=-250
velset=0,0
anim=1000
ctrl=0

[state 1000,声]
type=playsnd
trigger1=animelemtime(11)=0
value=1100,1
channel=0

[state 1000,クラッカー]
type=Helper
trigger1=animelemtime(13)=0
helpertype=normal
name="Cracker"
ID=1000
pos=70,-85
postype=p1
stateno=1010
ownpal=1

[state 1000,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;クラッカー1
[statedef 1010]
anim=1002
type=a
movetype=a
phtsics=n
ctrl=0
velset=5,0
sprpriority=1

[state 1010,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1010,サブクラッカーを出す]
type=helper
trigger1=time=0
helpertype=normal
name="SubCracker"
ID=1010
pos=10,-10
postype=p1
stateno=1020
ownpal=1

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
trigger1=!(root,var(0)&16)
value=1019

[state 1010,張り付き]
type=changestate
trigger1=frontedgedist<=0
value=1011

[state 1010,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1010,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;クラッカー2
[statedef 1011]
anim=1003
type=a
movetype=a
phtsics=n
ctrl=0
velset=0,0
sprpriority=1

[state 1011,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1011,反転]
type=turn
trigger1=time=0

[state 1011,張り付き]
type=posset
trigger1=1
x=-facing*160

[state 1011,判定]
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
ground.velocity=5,0
air.velocity=4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
air.fall=1
p2facing=-1

[state 1011,ヒット]
type=changestate
trigger1=movecontact
trigger1=!(root,var(0)&16)
value=1019

[state 1011,折り返し]
type=changestate
trigger1=time=120
value=1012

[state 1011,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1011,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;クラッカー3
[statedef 1012]
type=a
movetype=a
phtsics=n
ctrl=0
velset=5,0
sprpriority=1

[state 1012,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1012,判定]
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

[state 1012,終了]
type=changestate
trigger1=movecontact
trigger1=!(root,var(0)&16)
trigger2=frontedgedist<=0
value=1019

[state 1012,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1012,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;サブクラッカー1
[statedef 1020]
type=a
movetype=a
phtsics=n
ctrl=0
velset=5,0
sprpriority=2

[state 1020,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1020,アニメ]
type=changeanim
trigger1=time=0
value=1002
elem=4

[state 1020,固定]
type=bindtoroot
trigger1=root,stateno=1010
pos=10,-10

[state 1020,判定]
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

[state 1020,終了]
type=changestate
trigger1=movecontact
trigger1=!(root,var(0)&16)
trigger2=root,stateno=1012
value=1019

[state 1020,張り付き]
type=changestate
trigger1=frontedgedist<=10
value=1021

[state 1020,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1020,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;サブクラッカー2
[statedef 1021]
type=a
movetype=a
phtsics=n
ctrl=0
velset=0,0
sprpriority=2

[state 1021,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1021,反転]
type=turn
trigger1=time=0

[state 1021,張り付き]
type=posset
trigger1=1
x=-facing*150

[state 1021,判定]
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
ground.velocity=5,0
air.velocity=4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
air.fall=1
p2facing=-1

[state 1021,終了]
type=changestate
trigger1=movecontact
trigger1=!(root,var(0)&16)
trigger2=time=120
value=1019

[state 1021,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1021,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;クラッカー(終了)
[statedef 1019]
type=a
movetype=i
phtsics=n
ctrl=0
velset=-2,-3
sprpriority=1

[state 1019,影無し]
type=assertspecial
trigger1=1
flag=noshadow

[state 1019,重力]
type=veladd
trigger1=1
y=0.3

[state 1019,消去]
type=destroyself
triggerall=ishelper
trigger1=screenpos y>300

;===========================================================================
;クラッカーヴォレイ1
[statedef 1100]
type=s
movetype=a
physics=s
poweradd=-110
velset=0,0
anim=1100
ctrl=0

[state 1100,幅]
type=width
trigger1=1
edge=40,0
player=40,0

[state 1100,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1000,0

[state 1100,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,0
channel=0

[state 1100,クラッカー]
type=helper
trigger1=animelemtime(3)=0
helpertype=normal
stateno=1101
id=1000
name="Cracker"

[state 1100,前進]
type=velset
trigger1=animelemtime(2)=0
x=6

[state 1100,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=animelemtime(3)=3
trigger3=animelemtime(3)=6
trigger4=var(0)&16
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,36),7
guardflag=ma
pausetime=0,0
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-81
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
guard.hittime=12
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
guard.kill=0

[state 1100,連携]
type=changestate
triggerall=animelemno(0)=[3,4]
trigger1=command="a"
trigger1 = !var(59);AI用
trigger2 = random < var(59)*100 && time > 13;
trigger2 = roundstate = 2;
value=1110

[state 1100,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1100,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;クラッカー1
[statedef 1101]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1101,固定]
type=bindtoroot
trigger1=1
facing=1
pos=103,-81

[state 1101,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1100

;---------------------------------------------------------------------------
;クラッカーヴォレイ2
[statedef 1110]
type=s
movetype=a
physics=s
poweradd=-110
velset=0,0
anim=1110
ctrl=0

[state 1110,ずれ直し？]
type=posadd
trigger1=time=0
x=40

[state 1110,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1000,0

[state 1110,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,2
channel=0

[state 1110,クラッカー]
type=helper
trigger1=animelemtime(3)=0
helpertype=normal
stateno=1111
id=1000
name="Cracker"

[state 1110,前進]
type=velset
trigger1=animelemtime(3)=0
x=6

[state 1110,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=animelemtime(3)=3
trigger3=animelemtime(3)=6
trigger4=animelemtime(3)=9
trigger5=var(0)&16
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=ma
pausetime=20,0
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-90
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=12
ground.hittime=12
air.hittime=12
guard.hittime=9
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
guard.kill=0

[state 1110,連携]
type=changestate
triggerall=animelemno(0)=[3,4]
trigger1=command="a"
trigger1=command="holddown"
trigger1 = !var(59) || moveguarded;AI用
value=1122

[state 1110,連携]
type=changestate
triggerall=animelemno(0)=[3,4]
trigger1=command="a"
trigger1=command="holdfwd"
trigger1 = !var(59);AI用
trigger2 = random < var(59)*100 && time > 20;
trigger2 = roundstate = 2;
value=1124

[state 1110,連携]
type=changestate
triggerall=animelemno(0)=[3,4]
trigger1=command="a"
trigger1 = !var(59);AI用
value=1120

[state 1110,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1110,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;クラッカー2
[statedef 1111]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1111,固定]
type=bindtoroot
trigger1=1
facing=1
pos=66,-90

[state 1111,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1110

;---------------------------------------------------------------------------
;クラッカーヴォレイ3:上段
[statedef 1120]
type=s
movetype=a
physics=s
poweradd=-110
velset=0,0
anim=1120
ctrl=0

[state 1120,素振り音]
type=playsnd
trigger1=animelemtime(8)=0
value=1000,0

[state 1120,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 1120,クラッカー]
type=helper
trigger1=animelemtime(8)=0
helpertype=normal
stateno=1121
id=1000
name="Cracker"

[state 1120,ヒット定義]
type=hitdef
trigger1=animelemtime(8)=0
trigger2=animelemtime(8)=3
trigger3=animelemtime(8)=6
trigger4=var(0)&16
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=ma
pausetime=20,0
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-140
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=9
ground.hittime=9
air.hittime=9
ground.velocity=-2.2,-6.2
air.velocity=-2.2,-6.2
fall=1
guard.kill=0

[state 1120,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1120,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;クラッカー3
[statedef 1121]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1121,固定]
type=bindtoroot
trigger1=1
facing=1
pos=33,-140

[state 1121,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1120

;---------------------------------------------------------------------------
;クラッカーヴォレイ3:下段
[statedef 1122]
type=s
movetype=a
physics=s
poweradd=-110
ctrl=0
velset=0,0
anim=1122

[state 1122,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,1
channel=0

[state 1122,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,3
channel=0

[state 1122,素振り音]
type=playsnd
trigger1=animelemtime(9)=0
value=1000,0

[state 1122,クラッカー]
type=helper
trigger1=animelemtime(9)=0
helpertype=normal
stateno=1123
id=1000
name="Cracker"

[state 1122,ヒット定義]
type=hitdef
trigger1=animelemtime(9)=0
trigger2=animelemtime(9)=3
trigger3=var(0)&16
attr=c,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=l
pausetime=20,0
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-9
hitsound=s5,4
guardsound=s6,0
ground.type=trip
ground.slidetime=12
ground.hittime=12
air.hittime=12
ground.velocity=-2.2,-2.2
air.velocity=-2.2,-2.2
guard.kill=0

[state 1122,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1122,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;2Sクラッカー
[statedef 1123]
type=s
movetype=a
physics=s
anim=1002
sprpriority=2
ctrl=0

[state 1123,固定]
type=bindtoroot
trigger1=1
facing=1
pos=75,-9

[state 1123,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(11)=0
trigger2=root,stateno!=1122

;---------------------------------------------------------------------------
;クラッカーヴォレイ3:中段
[statedef 1124]
type=a
movetype=a
physics=n
poweradd=-110
velset=2,-2
anim=1124
ctrl=0

[state 1124,重力]
type=veladd
trigger1=1
y=0.12

[state 1124,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1000,0

[state 1124,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,3
channel=0

[state 1124,クラッカー]
type=helper
trigger1=animelemtime(5)=0
helpertype=normal
stateno=1125
id=1000
name="Cracker"

[state 1124,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=animelemtime(5)=3
trigger3=animelemtime(5)=6
trigger4=var(0)&16
attr=a,sa
damage=ifelse(hitcount,14,63),7
guardflag=ha
pausetime=20,0
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-81
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=15
ground.hittime=15
air.hittime=15
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
guard.kill=0

[state 1124,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=hitcount>1
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1124,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;JSクラッカー
[statedef 1125]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1125,固定]
type=bindtoroot
trigger1=1
facing=1
pos=50,-52

[state 1125,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(7)=0
trigger2=root,stateno!=1124

;===========================================================================
;波紋コーラー・弱
[statedef 1200]
type=s
movetype=a
physics=s
poweradd=110
velset=0,0
anim=1200
ctrl=0

[state 1200,波紋ッ！]
type=playsnd
trigger1=animelemtime(1)=0
value=0,4
channel=0

[state 1200,無敵]
type=nothitby
trigger1=animelemtime(6)=[0,4]
value=sca

[state 1200,コーラ効果音]
type=playsnd
trigger1=animelemtime(6)=0
value=1200,0

[state 1200,コーラが吹き出す]
type=explod
trigger1=animelemtime(6)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1200,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=2
trigger2=var(0)&16
attr=s,sa
animtype=up
damage=56,14
guardflag=m
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-1,-9.5
guard.velocity=-6
air.velocity=-1,-7.5
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=40
yaccel=0.4
guard.kill=0

[state 1200,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;波紋コーラー・中
[statedef 1210]
type=s
movetype=a
physics=s
poweradd=120
velset=0,0
anim=1210
ctrl=0

[state 1210,波紋ッ！]
type=playsnd
trigger1=animelemtime(7)=0
value=0,4
channel=0

[state 1210,無敵]
type=nothitby
trigger1=animelemtime(12)=[0,4]
value=sca

[state 1210,コーラ効果音]
type=playsnd
trigger1=animelemtime(12)=0
value=1200,0

[state 1210,コーラが吹き出す]
type=explod
trigger1=animelemtime(12)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1210,ヒット定義]
type=hitdef
trigger1=animelemtime(12)=2
trigger2=var(0)&16
attr=s,sa
animtype=up
damage=70,14
guardflag=m
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-1,-10.5
guard.velocity=-6
air.velocity=-1,-8.5
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=50
yaccel=0.4
guard.kill=0

[state 1210,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1210,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;波紋コーラー・強
[statedef 1220]
type=s
movetype=a
physics=s
poweradd=0
velset=0,0
anim=1220
ctrl=0

[state 1220,波紋ッ！]
type=playsnd
trigger1=animelemtime(7)=0
value=0,4
channel=0

[state 1220,無敵]
type=nothitby
trigger1=animelemtime(15)=[0,4]
value=sca

[state 1220,コーラ効果音]
type=playsnd
trigger1=animelemtime(15)=0
value=1200,0

[state 1220,コーラが吹き出す]
type=explod
trigger1=animelemtime(15)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1220,ヒット定義]
type=hitdef
trigger1=animelemtime(15)=2
trigger2=var(0)&16
attr=s,sa
animtype=up
damage=84,21
guardflag=m
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-1.2,-11
guard.velocity=-6
air.velocity=-1.2,-9
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=60
yaccel=0.4
guard.kill=0

[state 1220,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1220,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

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

[state 1300,カッターのエフェクト]
type=explod
trigger1=animelemtime(7)=-2
anim=1301
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1300,ヒット定義]
type=hitdef
trigger1=animelemtime(7)=0
trigger2=var(0)&16
attr=s,sp
animtype=hard
damage=112,21
guardflag=ma
pausetime=0,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-10
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
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

[state 1310,カッターのエフェクト]
type=explod
trigger1=animelemtime(7)=-2
anim=1301
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1310,ヒット定義]
type=hitdef
trigger1=animelemtime(7)=0
trigger2=var(0)&16
attr=s,sp
animtype=hard
damage=112,21
guardflag=ma
pausetime=0,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=29
ground.hittime=29
air.hittime=29
ground.velocity=-10
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
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

[state 1320,カッターのエフェクト]
type=explod
trigger1=animelemtime(14)=-2
trigger2=animelemtime(14)=2
trigger3=animelemtime(14)=6
anim=1301
pos=10+animelemtime(14)*5,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1320,ヒット定義1]
type=hitdef
trigger1=animelemtime(14)=0
trigger2=animelemtime(14)=4
trigger3=var(0)&16
trigger3=animelemtime(14)<8
attr=s,sp
animtype=hard
damage=35,7
getpower=0
guardflag=ma
pausetime=0,8
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-15
ground.cornerpush.veloff=0
guard.velocity=-9
air.velocity=-5,-5
airguard.velocity=-5,-5
air.fall=1
fall.animtype=hard
yaccel=0.4
guard.kill=0
guard.dist=250;+var(1)*20

[state 1320,ヒット定義2]
type=hitdef
trigger1=animelemtime(14)=8
trigger2=var(0)&16
trigger2=animelemtime(14)>8
attr=s,sp
animtype=hard
damage=70,14
getpower=0
guardflag=ma
pausetime=0,8
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-6,-6
ground.cornerpush.veloff=0
guard.velocity=-9
air.velocity=-6,-6
airguard.velocity=-5,-5
air.fall=1
fall.animtype=hard
yaccel=0.4
guard.kill=0
guard.dist=290
p2stateno=5600
p2facing=1

[state 1320,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;アイアンボーガン・弱
[statedef 1400]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1400
ctrl=0

[state 1400,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[state 1400,弾]
type=projectile
trigger1=animelemtime(8)=0
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
offset=75,-77
velocity=6,0
projid=1400
projanim=1403
projhitanim=1405
projremanim=1405
projhits=ifelse(var(0)&16,1000,1)
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
guard.kill=0

[state 1400,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;アイアンボーガン・中
[statedef 1410]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1400
ctrl=0

[state 1410,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[state 1410,弾]
type=projectile
trigger1=animelemtime(8)=0
attr=s,sp
damage=77,14
animtype=hard
pausetime=0,12
offset=75,-77
velocity=5,0
projid=1410
projanim=1404
projhitanim=1406
projremanim=1406
projhits=ifelse(var(0)&16,1000,1)
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
guard.kill=0

[state 1410,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;アイアンボーガン・強
[statedef 1420]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1420
ctrl=0

[state 1420,発射音]
type=playsnd
trigger1=animelemtime(12)=0
value=1400,0

[state 1420,弾]
type=Helper
trigger1=animelemtime(12)=0
helpertype=normal
name="Bowgun_Ball"
ID=1420
pos=-70,-85
postype=p1
facing=1
stateno=1421
keyctrl=0
ownpal=1

[state 1420,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(前景)
[statedef 1421]
anim=1403
type=u
movetype=a
phtsics=n
ctrl=0
velset=-6,0
sprpriority=3

[state 1421,反転]
type=turn
trigger1=time=0

[state 1421,判定]
type=hitdef
trigger1=time=0
trigger2=root,var(0)&16
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-2,0
air.velocity=-2,-1
guard.kill=0
p2facing=1

[state 1421,背景へ]
type=changestate
trigger1=facing*pos x>170
value=1422

[state 1421,2ヒット目へ]
type=changestate
triggerall=ishelper
trigger1=movecontact
value=1423

[state 1421,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1421,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(背景)
[statedef 1422]
anim=1402
type=u
movetype=i
phtsics=n
ctrl=0
velset=-6,0
sprpriority=-3

[state 1422,反転]
type=turn
trigger1=time=0

[state 1422,消滅]
type=destroyself
triggerall=ishelper
trigger1=time=0
trigger1=var(0)>=1

[state 1422,周回数の記録]
type=varadd
trigger1=time=0
var(0)=1

[state 1422,奥に表示っぽく]
type=offset
trigger1=1
y=-30

[state 1422,前面へ]
type=changestate
trigger1=facing*pos x>170
value=1421

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(1ヒット後)
[statedef 1423]
anim=1403
type=u
movetype=a
phtsics=n
ctrl=0
velset=6,0
sprpriority=3

[state 1423,判定]
type=hitdef
trigger1=time=3
trigger2=root,var(0)&16
attr=s,sp
damage=14,7
animtype=hard
pausetime=0,12
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-2,0
air.velocity=-2,-1
guard.kill=0

[state 1423,消滅]
type=destroyself
triggerall=ishelper
trigger1=time>20

[state 1423,コンボ補正開始]
type=parentvarset
triggerall=!root,var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1423,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1423,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;===========================================================================
;ミラーマジック
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
;ミラーマジック・成功
[statedef 2210]
type=s
movetype=i
physics=s
ctrl=0
velset=0,0
anim=2210

[state 2210,無敵]
type=nothitby
trigger1=1
value=sca

[state 2210,ガラス]
type=explod
trigger1=time=0
anim=7700
pos=0,-70
postype=p1
scale=const(size.xscale),const(size.yscale)
bindtime=1
ontop=1
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647

[state 2210,ガラスが割れる音]
type=playsnd
trigger1=time=0
value=2200,0

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

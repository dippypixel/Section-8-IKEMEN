;========================<SUPER CHARGE>=============================
[Statedef 7500]
physics=N
velset=0,0
anim=9741

[State 7500, Lv1]
type=bgpalfx
trigger1= time<=10 && root,var(10)=5
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256-floor(25.6*time),256-floor(25.6*time),256
color=256-floor(25.6*time)
[State 7500, Lv1]
type=bgpalfx
trigger1= (time=[11,39]) && root,var(10)=5
time=1
mul=0,0,256
color=0
[State 7500, Lv1]
type=bgpalfx
trigger1= time>=40 && root,var(10)=5
time=1
mul=ceil(51.2*(time-40)),ceil(51.2*(time-40)),256
color=floor(51.2*(time-40))

[State 7500, Lv2]
type=bgpalfx
trigger1= time<=15 && root,var(10)=6
time=1
add=256-ceil(17.07*time),256-ceil(17.07*time),256-ceil(17.07*time)
mul=256-floor(17.07*time),256-floor(17.07*time),256
color=256-floor(17.07*time)
[State 7500, Lv2]
type=bgpalfx
trigger1= (time=[16,47]) && root,var(10)=6
time=1
mul=0,0,256
color=0
[State 7500, Lv2]
type=bgpalfx
trigger1= time>=48 && root,var(10)=6
time=1
mul=ceil(51.2*(time-48)),ceil(51.2*(time-48)),256
color=floor(51.2*(time-48))

[State 7500, Lv3]
type=bgpalfx
trigger1= time<=20 && root,var(10)=7
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)
[State 7500, Lv3]
type=bgpalfx
trigger1= (time=[21,54]) && root,var(10)=7
time=1
mul=0,0,0
color=0
[State 7500, Lv3]
type=bgpalfx
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
pausemovetime=255
supermovetime=255
ownpal=1

[State 7500, Main]
type=explod
trigger1= !time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
pausemovetime=-1
supermovetime=-1
[State 7500, Large Circle]
type=explod
trigger1= !time
anim=7501
ID=7501
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Portrait]
type=explod
trigger1= time=1 && root,var(10)=7
anim=7510
ID=7510
postype=back
pos=160,120
sprpriority=-16
bindtime=-1
pausemovetime=-1
supermovetime=-1

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
trigger2= root,var(10)=6 && time>=53
trigger3= time>=60
[State 7500, End]
type=destroyself
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=53
trigger3= time>=60



;PotS

;ƒJƒbƒgƒCƒ“
[statedef 4999]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 4999,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 4999,ˆîÈ‚Ì”wŒi]
type=explod
trigger1=time=0
anim=6002
id=6002
postype=left
pos=0,0
scale=320.0/383,240.0/222
removetime=46
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4999,ƒJƒbƒgƒCƒ“(”—‚Á‚Ä‚­‚é)]
type=explod
trigger1=time<15*1.5
anim=4999
id=4999
postype=back
pos=-10,250+time*2
random=20,20
scale=time/15.0,time/15.0
removetime=1
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 4999,ƒJƒbƒgƒCƒ“(U“®)]
type=explod
trigger1=time>=15*1.5
anim=4999
id=4999
postype=back
pos=-10,310
random=20,20
scale=1.5,1.5
removetime=1
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 4999,I—¹]
type=destroyself
atiggerall=ishelper
trigger1=time>=45

;===========================================================================
;’Êí”s–k
[statedef 6054]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6054,ÄŞ«°İ(ƒGƒtƒFƒNƒg)]
type=explod
trigger1=time=0
anim=6056
id=6056
postype=left
pos=0,0
scale=320.0/384,240.0/224
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6054,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6031,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:ƒm[ƒ}ƒ‹
[statedef 6030]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6030,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6030,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
vel=-1,0
scale=1.25,1.25
bindtime=-1
removetime=90
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi1-1]
type=explod
trigger1=time=0
anim=6005
id=6005
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi1-2]
type=explod
trigger1=time=0
anim=6005
id=6005
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi2-1]
type=explod
trigger1=time=0
anim=6006
id=6006
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi2-2]
type=explod
trigger1=time=0
anim=6006
id=6006
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi3-1]
type=explod
trigger1=time=0
anim=6007
id=6007
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi3-2]
type=explod
trigger1=time=0
anim=6007
id=6007
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi4-1]
type=explod
trigger1=time=0
anim=6008
id=6008
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”wŒi4-2]
type=explod
trigger1=time=0
anim=6008
id=6008
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6030,”’‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6030,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6030,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6030,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:ca‚è
[statedef 6031]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6031,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6031,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
vel=-1,0
scale=1.25,1.25
bindtime=-1
removetime=8
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,‰E”¼•ª]
type=explod
trigger1=time=8
anim=6031
id=6031
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,¶”¼•ª]
type=explod
trigger1=time=8
anim=6032
id=6032
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6031,”’‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6031,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6031,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6031,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:‰¡a‚è
[statedef 6032]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6032,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6032,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=8
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,ã”¼•ª]
type=explod
trigger1=time=8
anim=6033
id=6033
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,‰º”¼•ª]
type=explod
trigger1=time=8
anim=6034
id=6034
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6032,”’‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6032,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6032,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6032,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:ƒoƒ‰ƒoƒ‰
[statedef 6033]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6033,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6033,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=8
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,‰Eã]
type=explod
trigger1=time=8
anim=6035
id=6035
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,‰E‰º]
type=explod
trigger1=time=8
anim=6036
id=6036
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,¶ã]
type=explod
trigger1=time=8
anim=6037
id=6037
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,¶‰º]
type=explod
trigger1=time=8
anim=6038
id=6038
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=82
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6033,”’‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6033,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6033,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6033,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:–I‚Ì‘ƒ
[statedef 6034]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6034,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6034,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=90
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,’e­]
type=explod
trigger1=time=[8,89]
trigger1=time%3=0
trigger1=numexplod(6039)<15
anim=6039+random%5
id=6039
postype=back
pos=124-time/2,160
random=180,240
scale=1.25,1.25
bindtime=-1
removetime=90-time
sprpriority=-98
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6034,”’‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6034,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6034,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6034,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:ŒŒ‚Ü‚İ‚ê
[statedef 6035]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6035,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6035,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=90
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,ŒŒ­]
type=explod
trigger1=time=[8,89]
trigger1=time%3=0
trigger1=numexplod(6044)<15
anim=6044+random%4
id=6044
postype=back
pos=124-time/2,160
random=180,240
scale=1.25,1.25
bindtime=-1
removetime=90-time
sprpriority=-98
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6035,Ô‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time,time

[state 6035,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6035,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6035,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;’´•KKO:”š”­
[statedef 6036]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6036,ƒXƒe[ƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6036,€–SŠG]
type=explod
trigger1=time=0
anim=6030
id=6030
postype=back
pos=0,0
scale=1.25,1.25
bindtime=-1
removetime=90
sprpriority=-99
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”š”­]
type=explod
trigger1=time<=90
anim=6048
id=6048
postype=front
pos=0,240
scale=time*0.83/20,time*1.07/20
bindtime=-1
removetime=1
sprpriority=-98
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=90
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 6036,”’‚Á‚Û‚­‚È‚é]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6036,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6036,ÄŞ«°İ(Œø‰Ê‰¹)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6036,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;WIN
[statedef 6050]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6050,ŒÖ‚è‚‚«ŒŒ“ƒWƒ‡ƒZƒt]
type=explod
trigger1=time=0
anim=6049+teamside
id=6050
pos=ifelse(teamside=1,19,314),133
postype=left
bindtime=-1
ontop=1
ownpal=1

[state 6050,WIN]
type=explod
trigger1=time=0
anim=6051+teamside
id=6052
pos=ifelse(teamside=1,14,301),135
postype=left
bindtime=-1
ontop=1
ownpal=1

[state 6050,Œø‰Ê‰¹]
type=playsnd
trigger1=time=20
value=6050,0

[state 180,to be continued...]
type=explod
triggerall=teamside = 1
triggerall=matchover
trigger1=time=0
anim=6054
id=6054
pos=4,206
postype=left
removetime=-1
bindtime=-1
ontop=1
scale = .85,.85
ownpal=1

[state 180,to be continued...]
type=explod
triggerall=teamside = 2
triggerall=matchover
trigger1=time=0
anim=6055
id=6055
pos=-4,206
postype=right
removetime=-1
bindtime=-1
ontop=1
scale = .85,.85
ownpal=1

[state 6050,I—¹]
type=destroyself
triggerall=ishelper
trigger1=!numexplod(6050)
trigger1=!numexplod(6052)

;===========================================================================
;orig=‡~‡a
[Statedef 99999]
ctrl=0
anim=99999

[State 99999,ŠÔˆá‚¢‚Å–{‘Ì‚ª—ˆ‚½‚ç—§‚¿‚ÖˆÚs]
type=selfstate
trigger1=!ishelper
value=0

[State 99999,ƒvƒŒƒCƒ„[”»’è]
type=varset
trigger1=command="up"&&root,command="up"
trigger2=command="down"&&root,command="down"
trigger3=command="back"&&root,command="back"
trigger4=command="fwd"&&root,command="fwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
trigger11=command="start"&&root,command="start"
trigger12=(root,power=root,powermax)*(enemynear,power=enemynear,powermax)
trigger13=!numenemy
var(59)=-1

[State 99999,—§‚Á‚½‚çÁ¸]
Type = DestroySelf
triggerAll = isHelper
Trigger1 = root,var(59)||var(59)=-1
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
trigger12=command="start"&&root,command="start"

[State 99999,Ì×¸ŞON]
type=varset
triggerall=var(59)!=-1
trigger1=root,command="up"
trigger2=root,command="down"
trigger3=root,command="back"
trigger4=root,command="fwd"
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
trigger11=root,command="start"
var(59)=1

;ÉJÉbÉgÉCÉì
[statedef 4999]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 4999,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 4999,àÓç»ÇÃîwåi]
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

[state 4999,ÉJÉbÉgÉCÉì(îóÇ¡ÇƒÇ≠ÇÈ)]
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

[state 4999,ÉJÉbÉgÉCÉì(êUìÆ)]
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

[state 4999,èIóπ]
type=destroyself
atiggerall=ishelper
trigger1=time>=45

;===========================================================================
;í èÌîsñk
[statedef 6054]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6054,ƒﬁ´∞›(ÉGÉtÉFÉNÉg)]
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

[state 6054,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6031,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:ÉmÅ[É}Éã
[statedef 6030]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6030,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6030,éÄñSäG]
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

[state 6030,îwåi1-1]
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

[state 6030,îwåi1-2]
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

[state 6030,îwåi2-1]
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

[state 6030,îwåi2-2]
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

[state 6030,îwåi3-1]
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

[state 6030,îwåi3-2]
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

[state 6030,îwåi4-1]
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

[state 6030,îwåi4-2]
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

[state 6030,îíÇ¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6030,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6030,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6030,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:ècéaÇË
[statedef 6031]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6031,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6031,éÄñSäG]
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

[state 6031,âEîºï™]
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

[state 6031,ç∂îºï™]
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

[state 6031,îwåi1-1]
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

[state 6031,îwåi1-2]
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

[state 6031,îwåi2-1]
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

[state 6031,îwåi2-2]
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

[state 6031,îwåi3-1]
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

[state 6031,îwåi3-2]
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

[state 6031,îwåi4-1]
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

[state 6031,îwåi4-2]
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

[state 6031,îíÇ¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6031,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6031,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6031,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:â°éaÇË
[statedef 6032]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6032,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6032,éÄñSäG]
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

[state 6032,è„îºï™]
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

[state 6032,â∫îºï™]
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

[state 6032,îwåi1-1]
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

[state 6032,îwåi1-2]
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

[state 6032,îwåi2-1]
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

[state 6032,îwåi2-2]
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

[state 6032,îwåi3-1]
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

[state 6032,îwåi3-2]
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

[state 6032,îwåi4-1]
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

[state 6032,îwåi4-2]
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

[state 6032,îíÇ¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6032,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6032,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6032,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:ÉoÉâÉoÉâ
[statedef 6033]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6033,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6033,éÄñSäG]
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

[state 6033,âEè„]
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

[state 6033,âEâ∫]
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

[state 6033,ç∂è„]
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

[state 6033,ç∂â∫]
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

[state 6033,îwåi1-1]
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

[state 6033,îwåi1-2]
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

[state 6033,îwåi2-1]
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

[state 6033,îwåi2-2]
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

[state 6033,îwåi3-1]
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

[state 6033,îwåi3-2]
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

[state 6033,îwåi4-1]
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

[state 6033,îwåi4-2]
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

[state 6033,îíÇ¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6033,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6033,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6033,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:ñIÇÃëÉ
[statedef 6034]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6034,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6034,éÄñSäG]
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

[state 6034,íeç≠]
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

[state 6034,îwåi1-1]
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

[state 6034,îwåi1-2]
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

[state 6034,îwåi2-1]
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

[state 6034,îwåi2-2]
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

[state 6034,îwåi3-1]
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

[state 6034,îwåi3-2]
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

[state 6034,îwåi4-1]
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

[state 6034,îwåi4-2]
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

[state 6034,îíÇ¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6034,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6034,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6034,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:ååÇ‹Ç›ÇÍ
[statedef 6035]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6035,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6035,éÄñSäG]
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

[state 6035,ååç≠]
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

[state 6035,îwåi1-1]
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

[state 6035,îwåi1-2]
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

[state 6035,îwåi2-1]
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

[state 6035,îwåi2-2]
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

[state 6035,îwåi3-1]
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

[state 6035,îwåi3-2]
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

[state 6035,îwåi4-1]
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

[state 6035,îwåi4-2]
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

[state 6035,ê‘Ç¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time,time

[state 6035,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6035,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6035,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;===========================================================================
;í¥ïKKO:îöî≠
[statedef 6036]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6036,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=numexplod
flag=nobg
flag2=nofg

[state 6036,éÄñSäG]
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

[state 6036,îöî≠]
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

[state 6036,îwåi1-1]
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

[state 6036,îwåi1-2]
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

[state 6036,îwåi2-1]
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

[state 6036,îwåi2-2]
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

[state 6036,îwåi3-1]
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

[state 6036,îwåi3-2]
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

[state 6036,îwåi4-1]
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

[state 6036,îwåi4-2]
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

[state 6036,îíÇ¡Ç€Ç≠Ç»ÇÈ]
type=palfx
trigger1=1
time=1
add=time*2,time*2,time*2

[state 6036,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,0

[state 6036,ƒﬁ´∞›(å¯â âπ)]
type=playsnd
trigger1=time=0
value=6000,1

[state 6036,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time>=90
trigger1=roundstate>3

;-----------------------------------------------
;ÉJÉbÉgÉCÉìÉwÉãÉpÅ[Åií èÌÅj

[Statedef 16040]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 6900
sprpriority = 4

[State -3, 0]
type = Turn
trigger1 = time = 0
trigger1 = facing != root,facing

[State -3];îíÉOÉâÉfÅ[ÉVÉáÉì
type = palfx
trigger1 = time = [10,34]
add = 5*(time-10),5*(time-10),5*(time-10)
time = 1
ignorehitpause = 1

[State -3]
type = palfx
trigger1 = time > 34
add = 128,128,128
time = 1
ignorehitpause = 1

[State 0, var]
type = varset
trigger1 = time = 1
fvar(7) = 100
ignorehitpause = 1

[State 0, var]
type = varset
trigger1 = time > 1
fvar(7) = ifelse(fvar(7)*.6<.3,.3,fvar(7)*.6)
ignorehitpause = 1

[State 0, var]
type = varadd
trigger1 = 1
fvar(8) = fvar(7)
ignorehitpause = 1

[State 6050, 0];îwåiÅiê¬Åj
type = helper
trigger1 = time = 0
name = "kocut"
stateno = 6060
id = 6060
postype = p1
pos = 0,0
supermovetime = 9999999
pausemovetime = 9999999
ownpal = 0
ignorehitpause = 1

[State 6051, 1]
type = explod
trigger1 = time = 0
anim = 6150
id = 6050
pos = 345,119
sprpriority = -50
removetime = 60
bindtime = -1
postype = back
scale = 1.233,1.27
supermovetime = -1
pausemovetime = -1
ownpal = 0
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6050)
id = 6050
pos = ceil(345-fvar(8)),119
postype = back
ignorehitpause = 1

[State 0, explod]
type = removeexplod
trigger1 = time = 60
trigger2 = roundstate = 4
id = 6050

;---------------------------------------------------------------------------
;îwåiÅiê¬Åj
[Statedef 6060]
ctrl = 0
anim = 6900

[State -3, 0]
type = Turn
trigger1 = time = 0
trigger1 = facing != root,facing

[State 5110, 7]
type = assertspecial
trigger1 = time <= 60
flag = nobg
flag2 = nofg
flag3 = nobardisplay

[State -3];
type = playsnd
trigger1 = time = 0
value = 6000,1

[State -3];
type = playsnd
trigger1 = time = 0
value = 6000,1

[State -3];
type = playsnd
trigger1 = time = 0
value = 6000,1


[State 6050,0]
type = explod
trigger1 = time = 0
anim = 6060
id = 6060
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,0]
type = explod
trigger1 = time = 0
anim = 6060
id = 6065
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,1]
type = explod
trigger1 = time = 0
anim = 6061
id = 6061
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,1]
type = explod
trigger1 = time = 0
anim = 6061
id = 6066
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,2]
type = explod
trigger1 = time = 0
anim = 6062
id = 6062
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,2]
type = explod
trigger1 = time = 0
anim = 6062
id = 6067
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,3]
type = explod
trigger1 = time = 0
anim = 6063
id = 6063
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 6050,3]
type = explod
trigger1 = time = 0
anim = 6063
id = 6068
sprpriority = -55
removetime = 60
pos = 0,0
postype = back
bindtime = -1
ownpal = 0
supermovetime = -1
pausemovetime = -1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6060)
id = 6060
pos = -(time*8)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6061)
id = 6061
pos = -(time*12)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6062)
id = 6062
pos = -(time*16)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6063)
id = 6063
postype = back
pos = -(time*20)%512,0
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6065)
id = 6065
pos = 512-(time*8)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6066)
id = 6066
pos = 512-(time*12)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6067)
id = 6067
pos = 512-(time*16)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = modifyexplod
trigger1 = numexplod(6068)
id = 6068
pos = 512-(time*20)%512,0
postype = back
ignorehitpause = 1

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6060

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6061

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6062

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6063

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6065

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6066

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6067

[State 0, explod]
type = removeexplod
trigger1 = roundstate = 4
trigger2 = !parent,numexplod(6050)
id = 6068

[State 9000, DestroySelf]
type = DestroySelf
trigger1 = RoundState = 4
trigger2 = !Parent,Numexplod(6050)

;===========================================================================
;orig=á~áaéÅ
[Statedef 99999]
ctrl=0
anim=99999

[State 99999,ä‘à·Ç¢Ç≈ñ{ëÃÇ™óàÇΩÇÁóßÇøÇ÷à⁄çs]
type=selfstate
trigger1=!ishelper
value=0

[State 99999,ÉvÉåÉCÉÑÅ[îªíË]
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

[State 99999,óßÇ¡ÇΩÇÁè¡é∏]
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

[State 99999,Ã◊∏ﬁON]
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

;Super Aja Projectile
[statedef 3301]
type    = S
movetype = I
physics = N
velset=0,0
anim=3301
ctrl=0
sprpriority = 2

[state 1123,å≈íË]
type=bindtoroot
trigger1=1
facing=1

[State 0, turn]
type = turn
trigger1 = facing != root,facing

[State 0, AngleAdd]
type = AngleAdd
trigger1 = time = 0
value = -18
;ignorehitpause = 
;persistent = 

[State ]
type = AngleDraw
Trigger1 = 1

[State 0, DestroySelf]
type = DestroySelf
triggerall=ishelper
trigger1 = time = 84
trigger2=root,stateno!=3300
;ignorehitpause = 
;persistent = 

;Beam Projectile
[statedef 3302]
type=s
movetype=i
physics=n
velset=0,0
anim=3302
ctrl=0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 3100, 2
;lowpriority = -1
;abspan = 
;ignorehitpause = 
;persistent = 

[State 0, AngleAdd]
type = AngleAdd
trigger1 = time = 0
value = -18
;ignorehitpause = 
;persistent = 

[State ]
type = AngleDraw
Trigger1 = 1

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 8151
ID = 8151
pos = 255,30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 84
;ignorehitpause = 
;persistent = 

;Super Aja After Hit Projectile
[statedef 3311]
type    = S
movetype = I
physics = N
velset=0,0
anim=3311
ctrl=0
sprpriority = 2

[state 1123,å≈íË]
type=bindtoroot
trigger1=1
facing=1

[State 0, turn]
type = turn
trigger1 = facing != root,facing

[State 0, DestroySelf]
type = DestroySelf
triggerall=ishelper
trigger1 = time = 90
trigger2=root,stateno!=3310
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
;ÉXÅ[ÉpÅ[ÉRÉìÉ{î≠ìÆÉGÉtÉFÉNÉg
[Statedef 8000]
ctrl = 0
anim = 6900

[State 8000, Explod-1]
type = Explod
trigger1 = time = 0
Anim = 6000
pos = 0,0
postype = P1
ownpal = 1
ontop = 1
scale = const(size.xscale),const(size.yscale)
pausemovetime = 30
supermovetime = 30

[State 8000, Explod-2]
type = Explod
trigger1 = time = 0
Anim = 6002
pos = 0,0
postype = Left
ownpal = 1
bindtime = -1
removetime = 30
scale = .84,1.08
sprpriority = -105
pausemovetime = 30
supermovetime = 30

[State 8000, Explod-3]
type = Explod
trigger1 = time = 7
Anim = 4999
id = 7900
pos = -30,380
postype = back
ownpal = 1
bindtime = -1
removetime = 23
sprpriority = -90
pausemovetime = 23
supermovetime = 23

[State 8000, ModifyExplod-3]
type = ModifyExplod
trigger1 = Numexplod(7900)
Id = 7900
postype = back
pos = ceil(-20+((random%16)*ifelse((time%6=[1,3]),-1,1))),ceil(170+((random%16)*ifelse((time%6=[1,3]),-1,1)))
scale = ifelse(time>=22,2,.2+((time-6)*.125))*.833,ifelse(time>=22,2,.2+((time-6)*.125))*1.07

[State 8000, AssertSpecial-1]
type = AssertSpecial
trigger1 = time <= 29
flag = NoFG
flag2 = NoBG

[State 8000, DestroySelf]
type = DestroySelf
trigger1 = time = 31

[Statedef 10755 - Stylish Cancel Helper]
type     = S
movetype = I
physics  = S
anim     = 6900
velset   = 0,0
ctrl     = 0

[State 750]
type = AssertSpecial
trigger1 = 1
flag = nofg

[State 750]
type = BGPalFX
trigger1 = time <= 31
time = 1
add = 0,0,0
mul = 76,76,76
sinadd = 256,256,256,10
invertall = 0
color = 256
[State 750]
type = BGPalFX
trigger1 = time > 31
time = 1
add = 0,0,0
mul = (76+9*(time-31)),(76+9*(time-31)),(76+9*(time-31))
sinadd = 256,256,256,10
invertall = 0
color = 256



[State 750, ??????]
type = DestroySelf
trigger1 = time >= 51

;---------------------------------------------------------------------------
;?????A?C?R?ì
[Statedef 6600]
ctrl = 0
anim = 6900

[State 6600, Explod-1]
type = Explod
triggerall = roundstate = 4
triggerall = !root,var(55)
triggerall = teamside = 1
trigger1 = time = 1
Anim = 6600
Id = 6600
pos = 0,0
postype = left
ownpal = 1
ontop = 1
bindtime = -1
removetime = 100
scale = 1,1
pausemovetime = 99999999

[State 6600, ModifyExplod-1]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 1
triggerall = time <= 20
trigger1 = NumExplod(6600)
Id = 6600
postype = left
pos = ceil(-285+(time*15)),82

[State 6600, ModifyExplod-1]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 1
triggerall = time >= 81
trigger1 = NumExplod(6600)
Id = 6600
postype = left
pos = ceil(15-((time-80)*15)),82

[State 6600, ModifyExplod-1]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 1
triggerall = time <= 20
trigger1 = NumExplod(6600)
trigger1 = numpartner
trigger1 = root,ID > partner,ID
trigger1 = partner,authorname="warusaki3" && partner,fvar(39) = [4,6]
Id = 6600
postype = left
pos = ceil(-210+(time*15)),82

[State 6600, ModifyExplod-1]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 1
triggerall = time >= 81
trigger1 = NumExplod(6600)
trigger1 = numpartner
trigger1 = root,ID > partner,ID
trigger1 = partner,authorname="warusaki3" && partner,fvar(39) = [4,6]
Id = 6600
postype = left
pos = ceil(90-((time-80)*15)),82
scale = 1,1

[State 6600, ModifyExplod-1]
type = ModifyExplod
triggerall = !root,var(55)
trigger1 = NumExplod(6600)
trigger1 = numpartner
trigger1 = partner,authorname="warusaki3" && partner,fvar(39) = [4,6]
Id = 6600
scale = 1,1

[State 6600, Explod-2]
type = Explod
triggerall = roundstate = 4
triggerall = !root,var(55)
triggerall = teamside = 2
trigger1 = time = 1
Anim = 6600
id = 6650
pos = 0,0
postype = left
ownpal = 1
ontop = 1
bindtime = -1
removetime = 100
scale = 1,1
pausemovetime = 99999999

[State 6600, ModifyExplod-2]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 2
triggerall = time <= 20
trigger1 = NumExplod(6650)
Id = 6650
postype = left
pos = ceil(420-(time*15)),82

[State 6600, ModifyExplod-2]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 2
triggerall = time >= 81
trigger1 = NumExplod(6650)
Id = 6650
postype = left
pos = ceil(120+((time-80)*15)),82

[State 6600, ModifyExplod-2]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 2
triggerall = time <= 20
trigger1 = NumExplod(6650)
trigger1 = numpartner
trigger1 = root,ID > partner,ID
trigger1 = partner,authorname="warusaki3" && partner,fvar(39) = [4,6]
Id = 6650
postype = left
pos = ceil(505-(time*15)),82

[State 6600, ModifyExplod-2]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 2
triggerall = time >= 81
trigger1 = NumExplod(6650)
trigger1 = numpartner
trigger1 = root,ID > partner,ID
trigger1 = partner,authorname="warusaki3" && partner,fvar(39) = [4,6]
Id = 6650
postype = left
pos = ceil(205+((time-80)*15)),82

[State 6600, ModifyExplod-2]
type = ModifyExplod
triggerall = !root,var(55)
trigger1 = NumExplod(6650)
trigger1 = numpartner
trigger1 = partner,authorname="warusaki3" && partner,fvar(39) = [4,6]
Id = 6650
scale = 1,1

[State 6600, Explod-3]
type = Explod
triggerall = roundstate = 4
triggerall = !root,var(55)
triggerall = teamside = 1
trigger1 = time = 7
Anim = 6601
id = 6601
pos = 0,0
postype = left
ownpal = 1
ontop = 1
bindtime = -1
removetime = 100
scale = .5,.5
pausemovetime = 99999999

[State 6600, ModifyExplod-3]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 1
triggerall = time <= 26
trigger1 = NumExplod(6601)
Id = 6601
postype = left
pos = ceil(-285+((time-6)*15)),82

[State 6600, ModifyExplod-3]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 1
triggerall = time >= 81
trigger1 = Numexplod(6601)
Id = 6601
postype = left
pos = ceil(15-((time-80)*15)),82

[State 6600, Explod-4]
type = Explod
triggerall = roundstate = 4
triggerall = !root,var(55)
triggerall = teamside = 2
trigger1 = time = 7
Anim = 6601
id = 6651
pos = 0,0
postype = left
ownpal = 1
ontop = 1
bindtime = -1
removetime = 100
scale = .5,.5
pausemovetime = 99999999

[State 6600, ModifyExplod-4]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 2
triggerall = time <= 26
trigger1 = NumExplod(6651)
Id = 6651
postype = left
pos = ceil(420-((time-6)*15)),82

[State 6600, ModifyExplod-4]
type = ModifyExplod
triggerall = !root,var(55)
triggerall = teamside = 2
triggerall = time >= 81
trigger1 = NumExplod(6651)
Id = 6651
postype = left
pos = ceil(120+((time-80)*15)),82

[State 6600, Explod-5]
type = Explod
triggerall = roundstate = 4
triggerall = !root,var(56)
triggerall = matchover
trigger1 = time = 1
Anim = 6602
id = 6602
pos = 0,0
postype = left
ownpal = 1
ontop = 1
bindtime = -1
removetime = -1
scale = .5,.5
pausemovetime = 99999999

[State 6600, ModifyExplod-5]
type = ModifyExplod
triggerall = !root,var(56)
triggerall = time <= 14
trigger1 = NumExplod(6602)
Id = 6602
postype = left
pos = ceil(429-(time*27)),208

[State 6600, ModifyExplod-5]
type = ModifyExplod
triggerall = !root,var(56)
triggerall = time = [15,19]
trigger1 = Numexplod(6602)
Id = 6602
postype = left
pos = ceil(-51+((time-14)*16)),208
ignorehitpause = 1

[State 6600, ModifyExplod-5]
type = ModifyExplod
triggerall = !root,var(56)
triggerall = time = 20
trigger1 = NumExplod(6602)
Id = 6602
postype = left
pos = 29,208

[State 6600, Sound]
type = PlaySnd
triggerall = roundstate = 4
triggerall = !var(55) || (!var(56) && matchover)
trigger1 = time = 20
value = 6050,0
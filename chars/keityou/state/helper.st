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

;===========================================================================
;WIN
[statedef 6050]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 6050,å÷ÇËçÇÇ´ååìùÉWÉáÉZÉt]
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

[state 6050,å¯â âπ]
type=playsnd
trigger1=time=20
value=6050,0

[state 6050,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=!numexplod(6050)
trigger1=!numexplod(6052)

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


;-------------------------------------------------
;BCÉQÅ[ÉW
[Statedef 7800]
type = S
sprpriority = -2
anim = 99999

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
trigger1 = !NumExplod(7800)
trigger1 = 1
anim = 7800
id = 7800
pos = 40,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -4
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
trigger1 = !NumExplod(7801)
trigger1 = 1
anim = 7801
id = 7801
pos = 50,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
trigger1 = !NumExplod(7802)
trigger1 = 1
anim = 7802
id = 7802
pos = 50,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
trigger1 = !NumExplod(7803)
trigger1 = 1
anim = 7803
id = 7803
pos = 50,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
trigger1 = !NumExplod(7810)
trigger1 = 1
anim = 7810
id = 7810
pos = 100,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -4
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
trigger1 = !NumExplod(7811)
trigger1 = 1
anim = 7811
id = 7811
pos = 90,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
trigger1 = !NumExplod(7812)
trigger1 = 1
anim = 7812
id = 7812
pos = 90,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
trigger1 = !NumExplod(7813)
trigger1 = 1
anim = 7813
id = 7813
pos = 90,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

;---------------------------------------------------------------------------
;ï‡ï∫êî
;---------------------------------------------------------------------------
[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 0
ID = 7900

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 1
ID = 7901

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 2
ID = 7902

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 3
ID = 7903

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 4
ID = 7904

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 5
ID = 7905

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 6
ID = 7906

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 7
ID = 7907

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 8
ID = 7908

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 9
ID = 7909

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 10
ID = 7910

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 11
ID = 7911

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 12
ID = 7912

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 13
ID = 7913

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 14
ID = 7914

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 15
ID = 7915

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 16
ID = 7916

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 17
ID = 7917

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 18
ID = 7918

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 19
ID = 7919

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 20
ID = 7920

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 21
ID = 7921

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 22
ID = 7922

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 23
ID = 7923

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 24
ID = 7924

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 25
ID = 7925

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 26
ID = 7926

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 27
ID = 7927

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 28
ID = 7928

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 29
ID = 7929

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 30
ID = 7930

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 31
ID = 7931

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 32
ID = 7932

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 33
ID = 7933

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 34
ID = 7934

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 35
ID = 7935

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 36
ID = 7936

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 37
ID = 7937

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 38
ID = 7938

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 38
ID = 7938

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 39
ID = 7939

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 40
ID = 7940

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 41
ID = 7941

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 42
ID = 7942

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 43
ID = 7943

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 44
ID = 7944

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 45
ID = 7945

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 46
ID = 7946

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 47
ID = 7947

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 48
ID = 7948

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 49
ID = 7949

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 50
ID = 7950

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 51
ID = 7951

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 52
ID = 7952

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 53
ID = 7953

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 54
ID = 7954

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 55
ID = 7955

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 56
ID = 7956

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 57
ID = 7957

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 58
ID = 7958

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 59
ID = 7959

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(40) != 60
ID = 7960

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 0
trigger1 = !NumExplod(7900)
trigger1 = 1
anim = 7900
id = 7900
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 1
trigger1 = !NumExplod(7901)
trigger1 = 1
anim = 7901
id = 7901
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 2
trigger1 = !NumExplod(7902)
trigger1 = 1
anim = 7902
id = 7902
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 3
trigger1 = !NumExplod(7903)
trigger1 = 1
anim = 7903
id = 7903
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 4
trigger1 = !NumExplod(7904)
trigger1 = 1
anim = 7904
id = 7904
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 5
trigger1 = !NumExplod(7905)
trigger1 = 1
anim = 7905
id = 7905
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 6
trigger1 = !NumExplod(7906)
trigger1 = 1
anim = 7906
id = 7906
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 7
trigger1 = !NumExplod(7907)
trigger1 = 1
anim = 7907
id = 7907
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 8
trigger1 = !NumExplod(7908)
trigger1 = 1
anim = 7908
id = 7908
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 9
trigger1 = !NumExplod(7909)
trigger1 = 1
anim = 7909
id = 7909
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 10
trigger1 = !NumExplod(7910)
trigger1 = 1
anim = 7910
id = 7910
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 11
trigger1 = !NumExplod(7911)
trigger1 = 1
anim = 7911
id = 7911
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 12
trigger1 = !NumExplod(7912)
trigger1 = 1
anim = 7912
id = 7912
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 13
trigger1 = !NumExplod(7913)
trigger1 = 1
anim = 7913
id = 7913
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 14
trigger1 = !NumExplod(7914)
trigger1 = 1
anim = 7914
id = 7914
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 15
trigger1 = !NumExplod(7915)
trigger1 = 1
anim = 7915
id = 7915
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 16
trigger1 = !NumExplod(7916)
trigger1 = 1
anim = 7916
id = 7916
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 17
trigger1 = !NumExplod(7917)
trigger1 = 1
anim = 7917
id = 7917
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 18
trigger1 = !NumExplod(7918)
trigger1 = 1
anim = 7918
id = 7918
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 19
trigger1 = !NumExplod(7919)
trigger1 = 1
anim = 7919
id = 7919
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 20
trigger1 = !NumExplod(7920)
trigger1 = 1
anim = 7920
id = 7920
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 21
trigger1 = !NumExplod(7921)
trigger1 = 1
anim = 7921
id = 7921
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 22
trigger1 = !NumExplod(7922)
trigger1 = 1
anim = 7922
id = 7922
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 23
trigger1 = !NumExplod(7923)
trigger1 = 1
anim = 7923
id = 7923
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 24
trigger1 = !NumExplod(7924)
trigger1 = 1
anim = 7924
id = 7924
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 25
trigger1 = !NumExplod(7925)
trigger1 = 1
anim = 7925
id = 7925
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 26
trigger1 = !NumExplod(7926)
trigger1 = 1
anim = 7926
id = 7926
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 27
trigger1 = !NumExplod(7927)
trigger1 = 1
anim = 7927
id = 7927
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 28
trigger1 = !NumExplod(7928)
trigger1 = 1
anim = 7928
id = 7928
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 29
trigger1 = !NumExplod(7929)
trigger1 = 1
anim = 7929
id = 7929
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 30
trigger1 = !NumExplod(7930)
trigger1 = 1
anim = 7930
id = 7930
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 31
trigger1 = !NumExplod(7931)
trigger1 = 1
anim = 7931
id = 7931
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 32
trigger1 = !NumExplod(7932)
trigger1 = 1
anim = 7932
id = 7932
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 33
trigger1 = !NumExplod(7933)
trigger1 = 1
anim = 7933
id = 7933
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 34
trigger1 = !NumExplod(7934)
trigger1 = 1
anim = 7934
id = 7934
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 35
trigger1 = !NumExplod(7935)
trigger1 = 1
anim = 7935
id = 7935
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 36
trigger1 = !NumExplod(7936)
trigger1 = 1
anim = 7936
id = 7936
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 37
trigger1 = !NumExplod(7937)
trigger1 = 1
anim = 7937
id = 7937
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 38
trigger1 = !NumExplod(7938)
trigger1 = 1
anim = 7938
id = 7938
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 39
trigger1 = !NumExplod(7939)
trigger1 = 1
anim = 7939
id = 7939
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 40
trigger1 = !NumExplod(7940)
trigger1 = 1
anim = 7940
id = 7940
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 41
trigger1 = !NumExplod(7941)
trigger1 = 1
anim = 7941
id = 7941
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 42
trigger1 = !NumExplod(7942)
trigger1 = 1
anim = 7942
id = 7942
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 43
trigger1 = !NumExplod(7943)
trigger1 = 1
anim = 7943
id = 7943
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 44
trigger1 = !NumExplod(7944)
trigger1 = 1
anim = 7944
id = 7944
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 45
trigger1 = !NumExplod(7945)
trigger1 = 1
anim = 7945
id = 7945
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 46
trigger1 = !NumExplod(7946)
trigger1 = 1
anim = 7946
id = 7946
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 47
trigger1 = !NumExplod(7947)
trigger1 = 1
anim = 7947
id = 7947
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 48
trigger1 = !NumExplod(7948)
trigger1 = 1
anim = 7948
id = 7948
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 49
trigger1 = !NumExplod(7949)
trigger1 = 1
anim = 7949
id = 7949
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 50
trigger1 = !NumExplod(7950)
trigger1 = 1
anim = 7950
id = 7950
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 51
trigger1 = !NumExplod(7951)
trigger1 = 1
anim = 7951
id = 7951
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 52
trigger1 = !NumExplod(7952)
trigger1 = 1
anim = 7952
id = 7952
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 53
trigger1 = !NumExplod(7953)
trigger1 = 1
anim = 7953
id = 7953
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 54
trigger1 = !NumExplod(7954)
trigger1 = 1
anim = 7954
id = 7954
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 55
trigger1 = !NumExplod(7955)
trigger1 = 1
anim = 7955
id = 7955
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 56
trigger1 = !NumExplod(7956)
trigger1 = 1
anim = 7956
id = 7956
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 57
trigger1 = !NumExplod(7957)
trigger1 = 1
anim = 7957
id = 7957
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 58
trigger1 = !NumExplod(7958)
trigger1 = 1
anim = 7958
id = 7958
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 59
trigger1 = !NumExplod(7959)
trigger1 = 1
anim = 7959
id = 7959
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(40) = 60
trigger1 = !NumExplod(7960)
trigger1 = 1
anim = 7960
id = 7960
pos = 85,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5


[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 0
trigger1 = !NumExplod(7900)
trigger1 = 1
anim = 7700
id = 7900
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 1
trigger1 = !NumExplod(7901)
trigger1 = 1
anim = 7701
id = 7901
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 2
trigger1 = !NumExplod(7902)
trigger1 = 1
anim = 7702
id = 7902
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 3
trigger1 = !NumExplod(7903)
trigger1 = 1
anim = 7703
id = 7903
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 4
trigger1 = !NumExplod(7904)
trigger1 = 1
anim = 7704
id = 7904
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 5
trigger1 = !NumExplod(7905)
trigger1 = 1
anim = 7705
id = 7905
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 6
trigger1 = !NumExplod(7906)
trigger1 = 1
anim = 7706
id = 7906
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 7
trigger1 = !NumExplod(7907)
trigger1 = 1
anim = 7707
id = 7907
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 8
trigger1 = !NumExplod(7908)
trigger1 = 1
anim = 7708
id = 7908
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 9
trigger1 = !NumExplod(7909)
trigger1 = 1
anim = 7709
id = 7909
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 10
trigger1 = !NumExplod(7910)
trigger1 = 1
anim = 7710
id = 7910
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 11
trigger1 = !NumExplod(7911)
trigger1 = 1
anim = 7711
id = 7911
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 12
trigger1 = !NumExplod(7912)
trigger1 = 1
anim = 7712
id = 7912
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 13
trigger1 = !NumExplod(7913)
trigger1 = 1
anim = 7713
id = 7913
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 14
trigger1 = !NumExplod(7914)
trigger1 = 1
anim = 7714
id = 7914
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 15
trigger1 = !NumExplod(7915)
trigger1 = 1
anim = 7715
id = 7915
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 16
trigger1 = !NumExplod(7916)
trigger1 = 1
anim = 7716
id = 7916
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 17
trigger1 = !NumExplod(7917)
trigger1 = 1
anim = 7717
id = 7917
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 18
trigger1 = !NumExplod(7918)
trigger1 = 1
anim = 7718
id = 7918
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 19
trigger1 = !NumExplod(7919)
trigger1 = 1
anim = 7719
id = 7919
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 20
trigger1 = !NumExplod(7920)
trigger1 = 1
anim = 7720
id = 7920
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 21
trigger1 = !NumExplod(7921)
trigger1 = 1
anim = 7721
id = 7921
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 22
trigger1 = !NumExplod(7922)
trigger1 = 1
anim = 7722
id = 7922
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 23
trigger1 = !NumExplod(7923)
trigger1 = 1
anim = 7723
id = 7923
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 24
trigger1 = !NumExplod(7924)
trigger1 = 1
anim = 7724
id = 7924
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 25
trigger1 = !NumExplod(7925)
trigger1 = 1
anim = 7725
id = 7925
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 26
trigger1 = !NumExplod(7926)
trigger1 = 1
anim = 7726
id = 7926
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 27
trigger1 = !NumExplod(7927)
trigger1 = 1
anim = 7727
id = 7927
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 28
trigger1 = !NumExplod(7928)
trigger1 = 1
anim = 7728
id = 7928
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 29
trigger1 = !NumExplod(7929)
trigger1 = 1
anim = 7729
id = 7929
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 30
trigger1 = !NumExplod(7930)
trigger1 = 1
anim = 7730
id = 7930
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 31
trigger1 = !NumExplod(7931)
trigger1 = 1
anim = 7731
id = 7931
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 32
trigger1 = !NumExplod(7932)
trigger1 = 1
anim = 7732
id = 7932
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 33
trigger1 = !NumExplod(7933)
trigger1 = 1
anim = 7733
id = 7933
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 34
trigger1 = !NumExplod(7934)
trigger1 = 1
anim = 7734
id = 7934
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 35
trigger1 = !NumExplod(7935)
trigger1 = 1
anim = 7735
id = 7935
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 36
trigger1 = !NumExplod(7936)
trigger1 = 1
anim = 7736
id = 7936
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 37
trigger1 = !NumExplod(7937)
trigger1 = 1
anim = 7737
id = 7937
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 38
trigger1 = !NumExplod(7938)
trigger1 = 1
anim = 7738
id = 7938
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 39
trigger1 = !NumExplod(7939)
trigger1 = 1
anim = 7739
id = 7939
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 40
trigger1 = !NumExplod(7940)
trigger1 = 1
anim = 7740
id = 7940
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 41
trigger1 = !NumExplod(7941)
trigger1 = 1
anim = 7741
id = 7941
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 42
trigger1 = !NumExplod(7942)
trigger1 = 1
anim = 7742
id = 7942
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 43
trigger1 = !NumExplod(7943)
trigger1 = 1
anim = 7743
id = 7943
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 44
trigger1 = !NumExplod(7944)
trigger1 = 1
anim = 7744
id = 7944
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 45
trigger1 = !NumExplod(7945)
trigger1 = 1
anim = 7745
id = 7945
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 46
trigger1 = !NumExplod(7946)
trigger1 = 1
anim = 7746
id = 7946
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 47
trigger1 = !NumExplod(7947)
trigger1 = 1
anim = 7747
id = 7947
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 48
trigger1 = !NumExplod(7948)
trigger1 = 1
anim = 7748
id = 7948
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 49
trigger1 = !NumExplod(7949)
trigger1 = 1
anim = 7749
id = 7949
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 50
trigger1 = !NumExplod(7950)
trigger1 = 1
anim = 7750
id = 7950
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 51
trigger1 = !NumExplod(7951)
trigger1 = 1
anim = 7751
id = 7951
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 52
trigger1 = !NumExplod(7952)
trigger1 = 1
anim = 7752
id = 7952
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 53
trigger1 = !NumExplod(7953)
trigger1 = 1
anim = 7753
id = 7953
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 54
trigger1 = !NumExplod(7954)
trigger1 = 1
anim = 7754
id = 7954
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 55
trigger1 = !NumExplod(7955)
trigger1 = 1
anim = 7755
id = 7955
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 56
trigger1 = !NumExplod(7956)
trigger1 = 1
anim = 7756
id = 7956
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 57
trigger1 = !NumExplod(7957)
trigger1 = 1
anim = 7757
id = 7957
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 58
trigger1 = !NumExplod(7958)
trigger1 = 1
anim = 7758
id = 7958
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 59
trigger1 = !NumExplod(7959)
trigger1 = 1
anim = 7759
id = 7959
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(40) = 60
trigger1 = !NumExplod(7960)
trigger1 = 1
anim = 7760
id = 7960
pos = 55,50
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5


;---------------------------------------------------------------------------
;êÌé‘êî
;---------------------------------------------------------------------------
[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 0
ID = 7700

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 1
ID = 7701

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 2
ID = 7702

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 3
ID = 7703

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 4
ID = 7704

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 5
ID = 7705

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 6
ID = 7706

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(44) != 7
ID = 7707


[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 0
trigger1 = !NumExplod(7700)
trigger1 = 1
anim = 7900
ID = 7700
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 1
trigger1 = !NumExplod(7701)
trigger1 = 1
anim = 7901
ID = 7701
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 2
trigger1 = !NumExplod(7702)
trigger1 = 1
anim = 7902
ID = 7702
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 3
trigger1 = !NumExplod(7703)
trigger1 = 1
anim = 7903
ID = 7703
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 4
trigger1 = !NumExplod(7704)
trigger1 = 1
anim = 7904
ID = 7704
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 5
trigger1 = !NumExplod(7705)
trigger1 = 1
anim = 7905
ID = 7705
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 6
trigger1 = !NumExplod(7706)
trigger1 = 1
anim = 7906
ID = 7706
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(44) = 7
trigger1 = !NumExplod(7707)
trigger1 = 1
anim = 7907
ID = 7707
pos = 85,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 0
trigger1 = !NumExplod(7700)
trigger1 = 1
anim = 7700
ID = 7700
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 1
trigger1 = !NumExplod(7701)
trigger1 = 1
anim = 7701
ID = 7701
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 2
trigger1 = !NumExplod(7702)
trigger1 = 1
anim = 7702
ID = 7702
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 3
trigger1 = !NumExplod(7703)
trigger1 = 1
anim = 7703
ID = 7703
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 4
trigger1 = !NumExplod(7704)
trigger1 = 1
anim = 7704
ID = 7704
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 5
trigger1 = !NumExplod(7705)
trigger1 = 1
anim = 7705
ID = 7705
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 6
trigger1 = !NumExplod(7706)
trigger1 = 1
anim = 7706
ID = 7706
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(44) = 7
trigger1 = !NumExplod(7707)
trigger1 = 1
anim = 7707
ID = 7707
pos = 55,55
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

;---------------------------------------------------------------------------
;ÉAÉpÉbÉ`êî
;---------------------------------------------------------------------------
[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(42) != 0
ID = 7600

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(42) != 1
ID = 7601

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(42) != 2
ID = 7602

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(42) != 3
ID = 7603

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(42) != 4
ID = 7604


[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(42) = 0
trigger1 = !NumExplod(7600)
trigger1 = 1
anim = 7900
ID = 7600
pos = 85,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(42) = 1
trigger1 = !NumExplod(7601)
trigger1 = 1
anim = 7901
ID = 7601
pos = 85,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(42) = 2
trigger1 = !NumExplod(7602)
trigger1 = 1
anim = 7902
ID = 7602
pos = 85,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(42) = 3
trigger1 = !NumExplod(7603)
trigger1 = 1
anim = 7903
ID = 7603
pos = 85,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(42) = 4
trigger1 = !NumExplod(7604)
trigger1 = 1
anim = 7904
ID = 7604
pos = 85,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5


[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(42) = 0
trigger1 = !NumExplod(7600)
trigger1 = 1
anim = 7700
ID = 7600
pos = 55,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(42) = 1
trigger1 = !NumExplod(7601)
trigger1 = 1
anim = 7701
ID = 7601
pos = 55,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(42) = 2
trigger1 = !NumExplod(7602)
trigger1 = 1
anim = 7702
ID = 7602
pos = 55,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(42) = 3
trigger1 = !NumExplod(7603)
trigger1 = 1
anim = 7703
ID = 7603
pos = 55,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 7800, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(42) = 4
trigger1 = !NumExplod(7604)
trigger1 = 1
anim = 7704
ID = 7604
pos = 55,60
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5



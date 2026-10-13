;---------------------------------------------------------------------------------------------------
;[Statedef 9999]
;type    = A
;movetype= H
;physics = N
;juggle  = 8
;velset=0,0
;poweradd= 0
;ctrl = 0
;anim =10001
;sprpriority = 9
;---------------------------------------------------------------------------------------------------
[Statedef 9999]
type    = A
movetype= H
physics = N
juggle  = 8
velset=0,0
poweradd= 0
ctrl = 0
anim =9741
sprpriority = 9
;[State 0, VarSet]
;type = parentVaradd
;trigger1 = root,var(6)>0 && (p2movetype!=H|| p2stateno=[120,132]) && gametime%2=0
;v =6    ;fv = 10
;value = -1
[State 1, VarSet]
type = parentVarSet
trigger1 =root,movetype=H 
v = 1    ;fv = 10
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2) = %d var(3) = %d  vel x = %d movehit= %d"
params = var(21),var(6),var(8),(var(30))
ignorehitpause = 1
;persistent = 

[State 2, VarSet]
type = Varset
trigger1 =var(10)>=0
trigger2 =var(11)>=0
trigger3 =var(12)>=0
trigger4 =var(13)>=0
trigger10 =var(20)>=0
trigger11 =var(21)>=0
v = 2   ;fv = 10
value = 1
ignorehitpause = 1

[State 3, VarSet]
type = Varset
trigger1 =var(10)>=0
trigger2 =var(11)>=0
v = 3   ;fv = 10
value = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = root,prevstateno=[190,199]
v = 19   ;fv = 10
value = 49
;ignorehitpause = 
;persistent = 
[State 0, VarAdd]
type = VarAdd
trigger1 = var(19)>0 && roundstate=2
v = 19    ;fv = 
value = -1
;ignorehitpause = 
;persistent = 

[State 4, VarSet]
type = Varset
trigger1 =root,statetype=A&& root,movetype!=H
v = 4   ;fv = 10
value = 1
ignorehitpause = 1

[State 5, VarSet]
type = Varadd
trigger1 =var(4)=2
v = 5   ;fv = 10
value = 1
ignorehitpause = 1



;ignorehitpause = 
;persistent = 
[State 6, VarSet]
type = Varset
trigger1 = roundstate=2 && var(6)<200
v = 6   ;fv = 10
value =1
ignorehitpause = 1
[State 6, VarSet]
type = Varset
trigger1 = (root,stateno=[5000,5200])&&root,prevstateno=[120,155]
v = 6   ;fv = 10
value = p2stateno
ignorehitpause = 1
;persistent = 

[State 7, VarSet]
type = VarSet
trigger1 =  p2stateno=var(6)
v =7   ;fv = 10
value = 1
ignorehitpause = 1
[State 8, VarSet]
type = VarSet
trigger1 = root,stateno=5120 
v = 8    ;fv = 10
value = 6
[State 8, VarSet]
type = Varadd
trigger1 = root,stateno!=5120 && var(8)>0
v = 8    ;fv = 10
value = -1
[State 8, VarSet]
type = VarSet
triggerall = var(13) || root,p2bodydist x= [15,45]
trigger1 = p2stateno=5201 && enemy,time >10 
trigger2 = p2stateno=5210 && enemy,time >10 
trigger3 = p2stateno=5120 && enemy,time >13
v = 9    ;fv = 10
value = 1
;enough for lights
[State 10, Explod]
type = varset
triggerall = var(10)=0
trigger1 = root,movehit=1 && ((root,stateno=600)) && root,pos y <=-40
trigger2 = root,movehit=1 &&( root,stateno=610) && root,pos y =[-75,-60]
trigger3= root,movehit=1 && (root,stateno=620||root,stateno=640||root,stateno=650)&& root,pos y =[-85,-60]
trigger4 = root,movehit=1 && ((root,stateno=630)) && root,pos y <=-70
trigger5=root,movehit=1 && ((root,stateno=600||root,stateno=630||root,stateno=610||root,stateno=640)) && root,pos y <=-40 && root,sysvar(3)=1
trigger6=root,movehit=1 && ((root,stateno=620||root,stateno=650)) && root,pos y <=-45 && root,sysvar(3)=1
v=10
value=1
ignorehitpause = 1
;enough for heavys
[State 0, Explod]
type = varset
triggerall = var(11)=0
trigger1 = root,movehit=1 && ((root,stateno=600)) && root,pos y >-40
trigger2 = root,movehit=1 &&( root,stateno=610||root,stateno=620) && root,pos y >-60
trigger3 = root,movehit=1 && ((root,stateno=630)) && root,pos y >=-55
trigger4= root,movehit=1 && (root,stateno=620||root,stateno=640||root,stateno=650)&& root,pos y =[-85,-60]
trigger5= root,movehit=1 && (root,stateno=650)&& root,pos y >=-70
trigger6=root,movehit=1 && ((root,stateno=600||root,stateno=630||root,stateno=610||root,stateno=640)) && root,pos y >-40 && root,sysvar(3)=0
trigger7=root,movehit=1 && ((root,stateno=620||root,stateno=650)) && root,pos y >-45 && root,sysvar(3)=0
v=11
value=1



;blocked so inch slowly
[State 12, Explod]
type = varset
triggerall = var(12)=0
triggerall = var(13)=0
triggerall = root,numhelper(1001)=0
trigger1= root,p2bodydist x >175 && root,ctrl
trigger2= root,stateno=400 && root,movehit
trigger3= root,stateno=430 && root,movehit
trigger4= root,stateno=600 && p2statetype=A
v=12
value=1
[State 13, Explod]
type = varset
triggerall = var(12)=0
triggerall = var(13)=0
triggerall = root,numhelper(1001)=1
trigger1= p2movetype=A &&root,var(17)&& (p2stateno!=5201||enemy,time>12)
trigger2= p2statetype=L &&root,var(17) 
v=13
value=1

;------can air dash
;[State 0, Explod]
;type = varset
;triggerall = root,movetype!=H
;triggerall = root,statetype=A
;triggerall = root,ctrl
;triggerall = root,var(31)=0
;triggerall = root,p2bodydist y >30 || p2movetype!=A || root,statetype=A
;trigger1= p2movetype=A  && p2bodydist x !=[1,30]
;trigger2 = p2stateno=5120 || enemy,prevstateno=5120
;trigger3 = root,p2bodydist x <80 && p2statetype=A
;trigger4 = (p2bodydist x>120 && (p2movetype!=A || p2statetype!=A))||backedgebodydist <117
;trigger5 = (root,p2bodydist x =[-30,0]) && p2statetype!=A && root,frontedgebodydist >60
;v=14
;value=1
;ignorehitpause =1


;------can air dash back
;[State 15, Explod]
;type = varset
;triggerall = root,movetype!=H
;triggerall = root,statetype=A
;triggerall = root,ctrl
;triggerall = root,var(31)=0 
;triggerall = p2bodydist x <120
;trigger1 = (root,p2bodydist x =[-10,40]) && p2statetype=A
;trigger2 = (root,p2bodydist x =[-30,0]) && p2statetype!=A && root,frontedgebodydist <60
;trigger3= p2bodydist x<90 && (p2movetype=A && p2statetype!=A&&backedgebodydist >117)
;v=15
;value=1
;ignorehitpause =1

;[State 0, VarSet]
;type = Varadd
;triggerall = enemy,hitshakeover
;trigger1 =root,moveguarded=1 
;v = 1   ;fv = 10
;value = 1
;ignorehitpause = 0
;[State 0, VarSet]
;type = VarSet
;trigger1 = root,movehit
;v = 1    ;fv = 10
;value = 0
;ignorehitpause = 
;persistent = 

;persistent = 


;persistent = 


;bait
[State 16, VarSet]
type = Varadd
triggerall = var(17)=0
triggerall = root,numhelper(1001)
triggerall = enemy,hitshakeover
trigger1=helper(1001),moveguarded=1
v =16  ;fv = 10
value = 1
ignorehitpause =0
;persistent = 

[State 17, VarSet]
type = VarSet
trigger1 = var(16)=3 && var(17)=0
v = 17   ;fv = 10
value = 12
;ignorehitpause = 
;persistent = 
[State 17, VarSet]
type = Varadd
trigger1 = var(17)>0  && root,stateno!=1000
v = 17   ;fv = 10
value = -1
ignorehitpause = 1


;persistent = 

;1000

;1001

;ignorehitpause = 
;persistent = 

[State 20, Explod]
type = varset
triggerall = var(20)=0
triggerall = var(17)=0
triggerall = root,numhelper(1001)=0
triggerall = root,p2bodydist x >55  || root,movehit
triggerall = p2stateno!=4999
triggerall = root,movetype!=H
triggerall = root,ctrl || root,movehit
trigger1= root,p2bodydist x+20>= var(0) && enemy,pos y >=0 && var(0)>-1
trigger2= root,p2bodydist y >-15&&root,p2bodydist x =[0,75]
trigger3 = root,movecontact && (root,stateno=435||root,stateno=405 || root,stateno=440||root,anim=206)
v=20
value=1
ignorehitpause =1
;1001

;do the knock up
[State 20, Explod]
type = varset
triggerall = var(21)=0
trigger1= (p2stateno=[1051,1052])  
trigger2=(root,var(19)=1 && p2stateno=[833,834]) 
trigger3= root,var(19)=1 && p2stateno=[1031,1032]
v=21
value=1
ignorehitpause =1

;1001
[State 25, VarSet]
type = VarSet
triggerall = random <249;|| root,var(31)=164 || root,var(19)
triggerall = p2statetype!=A|| p2movetype=H 
trigger1 = ((enemy,movetype !=A)|| root,p2bodydist x >25)&& p2statetype!=L ;&& root,var(31)=0
trigger2 = root,p2bodydist x >=40 && p2stateno=4999&& p2statetype!=L ;&& root,var(31)=0
trigger3 = root,backedgebodydist <20 && p2movetype=A
trigger4 = root,p2bodydist x <10 && p2statetype=A  ;&& root,var(31)=0
;trigger5= root,var(31)=21 && ( root,p2bodydist x >60) && root,ctrl
;trigger6= root,var(31)=164 && ( root,p2bodydist x >40) && root,ctrl
;trigger7= root,var(31)=180 && ( root,p2bodydist x >40) && root,ctrl
v = 25   ;fv = 10
value = 1
 [State 0, VarSet]
type = VarSet
trigger1 = root,statetype = A
trigger2 = root,movetype=H && root,stateno!=[120,155]
trigger3= root,prevstateno=40
trigger4= (p2stateno=[5090,5119]) &&(p2stateno=[5121,5899])
trigger5 = (root,prevstateno=52 ||root,prevstateno=5120) && p2statetype=A ;&& var(31)=0
trigger6 = p2bodydist x <55 && frontedgebodydist >50 && p2statetype!=L && p2movetype!=H
trigger7=var(8)>0
trigger8 = var(19)>0; && var(31)=0
v=30
value = 0

[State 0, VarSet]
type = VarSet
triggerall = root,statetype != A
triggerall = roundstate=2 && var(19)=0
triggerall = (var(8)<=0)
triggerall = p2stateno =5120||random <334|| p2movetype=A&& p2bodydist x >100||enemy,hitdefattr=SC,AT 
trigger1= enemy,hitdefattr=SC,AT && ctrl
trigger2 = root,p2bodydist x >130 && ctrl && root,movetype!=H&&(p2movetype!=H) 

;trigger7 =  var(31)=
v = 30   ;fv = 10
value = 1
;---adjust for p2's position
[State 0, VarSet]
type = Varadd
;triggerall = var(20)=0
trigger1 = p2statetype=L  && p2stateno!=5101
v = 0    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(20)=0
trigger1 = var(21)=0
trigger1 = var(22)=0
v = 0    ;fv = 10
value = -1
;ignorehitpause = 
;persistent = 
[State 2, VarSet]
type = Varset
trigger1 =var(10)=0
trigger1 =var(11)=0
trigger1 =var(12)=0
trigger1 =var(13)=0
trigger1 =var(20)=0
trigger1 =var(21)=0
v = 2   ;fv = 10
value = 0
ignorehitpause = 1
[State 2, VarSet]
type = Varset
trigger1 =var(10)=0
trigger1 =var(11)=0
v = 3   ;fv = 10
value = 0
ignorehitpause = 1


[State 4, VarSet]
type = Varset
trigger1 =var(6)=1
v = 4   ;fv = 10
value = 0
ignorehitpause = 1
[State 5, VarSet]
type = Varset
trigger1 =root,movehit
trigger2 = root,var(15)
v = 5   ;fv = 10
value =0
ignorehitpause = 1
[State 7, VarSet]
type = VarSet
trigger1 =  p2stateno!=var(6)
v =7   ;fv = 10
value = 0
ignorehitpause = 1


[State 8, VarSet]
type = VarSet
trigger1 = var(8)<0
v = 8    ;fv = 10
value = 0
;0----------removeexplods---
[State 8, VarSet]
type = VarSet
trigger1 = p2stateno=5201 && enemy,time <10 
trigger2 = p2stateno=5210 && enemy,time <10 
trigger3 =p2statetype!=A
v = 9    ;fv = 10
value = 0
[State 10, RemoveExplod]
type = varset
trigger1 = p2movetype!=H || p2stateno=4999
v =10
value=0
ignorehitpause = 1
[State 11, RemoveExplod]
type = varset
trigger1 = p2movetype!=H|| p2stateno=4999
v = 11
value=0
ignorehitpause = 1

[State 12, RemoveExplod]
type = varset
trigger1 =root,numhelper(1001)=1
v = 12
value=0
ignorehitpause = 1

[State 13, RemoveExplod]
type = varset
trigger1 =root,numhelper(1001)=0
trigger2 = var(12)=1
trigger3= !root,var(17)
v = 13
value=0
ignorehitpause = 1
;persistent = 
[State 0, Explod]
type = varset
trigger1= root,statetype!=A
trigger2 = root,var(31)!=0 
v=14
value=0
ignorehitpause =1
[State 0, Explod]
type = varset
trigger1= root,statetype!=A
trigger2 = root,var(31)!=0
v=15
value=0
ignorehitpause =1
[State 16, VarSet]
type = Varset
trigger1 = var(17)=1
trigger2 = root,numhelper(1001)
trigger2=helper(1001),movehit=1
v =16  ;fv = 10
value = 0
ignorehitpause =0
[State 17, VarSet]
type = Varset
trigger1 = var(17)<0 
v = 17   ;fv = 10
value = 0

;230
[State 20, RemoveExplod]
type = varset
trigger1 = root,numhelper(1001)>0|| p2stateno=4999 || root,movetype=H
trigger2= root,p2bodydist x >75
trigger3= root,p2bodydist x <25 && !root,movecontact
trigger4 = root,stateno=240 || root,anim=205 || root,anim=210 || root,stateno=200 || root,stateno=400 || root,stateno=430    
v = 20
value=0
ignorehitpause = 1

;do the knock up
[State 20, Explod]
type = varset
triggerall = var(21)=1
trigger2= (p2stateno!=[1051,1052])  && p2statetype!=L
trigger1=root,var(19)=0 
v=21
value=0
ignorehitpause =1

[State 25, VarSet]
type = VarSet
triggerall = root,backedgebodydist >20
;triggerall = root,var(31)!=164
;triggerall = root,var(31)!=180
trigger1 =  enemy,movetype =A
trigger2 = root,p2bodydist x <25 && p2stateno!=4999 && p2statetype!=L ;&& root,var(31)=0
trigger3 = root,p2bodydist x <55 && p2stateno!=4999 && p2statetype=L ;&& root,var(31)=0
trigger4 = p2statetype=A && p2movetype!=H&& root,p2bodydist x <35 && p2statetype!=L; && root,var(31)=0
;trigger5= root,var(31)=21 && (root,p2bodydist x <0 ) && root,ctrl
v = 25   ;fv = 10
value = 0

[State 42, ParentVarSet]
type = ParentVarSet
trigger1 = var(5)=0
v =42   ;fv = 
value = 0
;-----------

 [State 0, DestroySelf]
type = DestroySelf
trigger1 =roundstate!=2

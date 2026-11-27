[statedef -2]

;===========================================================================

[state -2,ƒ`[ƒgƒXƒCƒbƒ`]
type=varset
trigger1=1
var(0)=0
;+1:‘SUŒ‚’†Š®‘S–³“G
;+2:”ñUŒ‚’†ƒQ[ƒW‰ñ•œ
;+4:”ñ‹ò‚ç‚¢’†‘Ì—Í‰ñ•œ
;+8:‘SUŒ‚ƒK[•s
;+16:UŒ‚‚Ìƒqƒbƒg”‚ª‘å•‚ÉƒAƒbƒv
;+32:ƒRƒ“ƒ{•â³‚È‚µ
ignorehitpause=1

;===========================================================================
;ƒ`[ƒgƒXƒCƒbƒ`
[state -2,‘SUŒ‚’†–³“G]
type=nothitby
triggerall=var(0)&1
trigger1=movetype=a
value=sca
ignorehitpause=1

[state -2,ƒQ[ƒW‰ñ•œ]
type=poweradd
triggerall=var(0)&2
triggerall=roundstate=2
trigger1=movetype!=a
value=1
ignorehitpause=1

[state -2,‘Ì—Í‰ñ•œ]
type=lifeadd
triggerall=var(0)&4
triggerall=roundstate=2
trigger1=movetype!=h
value=1
ignorehitpause=1

[state -2,ƒK[•s]
type=assertspecial
trigger1=var(0)&8
flag=unguardable
ignorehitpause=1

;===========================================================================

[state -2,ƒtƒ‰ƒCƒ“ƒO‘Îô]
type=lifeset
triggerall=roundstate<2
triggerall=numenemy
trigger1=(teammode=turns)||(enemy,teammode=turns)
trigger1=roundsexisted=0
trigger2=!(teammode=turns)
trigger2=!(enemy,teammode=turns)
value=lifemax

;”íƒ_ƒ‚ÌƒQ[ƒWH‚ ‚è‚ª‚½‚­‚à‚ç‚Á‚Ä‚¨‚­‚æ

[state -2,ƒtƒ‰ƒCƒ“ƒO‚·‚é•s“Í‚«Ò‚Ö‚Ìƒyƒiƒ‹ƒeƒB]
type=poweradd
triggerall=roundstate<2
trigger1=movetype=h
value=gethitvar(damage)*100

;===========================================================================
[state -2,UŒ‚—Í‚Ì•W€İ’è]
type=varset
trigger1=!fvar(39)
fvar(39)=1
ignorehitpause=1

;===========================================================================
;€‘ÌAƒ]ƒ“ƒr”»’è or ’…‚éƒ^ƒCƒv‚ÌƒXƒ^ƒ“ƒhg‚¢
;[state -2,ƒJƒr‚ªŒø‚©‚È‚¢‘Šè”»’è]
;type=varset
;triggerall=numenemy
;trigger1	=enemy,name="Secco"	;ƒZƒbƒR
;trigger2	=enemy,name="Bruno"	;ƒuƒ`ƒƒƒ‰ƒeƒB
;trigger3	=enemy,name="Ghiaccio"	;ƒMƒAƒbƒ`ƒ‡
;‚±‚±‚©‚ç‰º‚És‚ğ‘‚â‚¹‚Î‘ÎÛƒLƒƒƒ‰‚ğ‘‚â‚¹‚Ü‚·B
;var(58)=1;
;ignorehitpause=1

;===========================================================================
;ª«’l
[state -2,UŒ‚—Íª«’lOFF]
type=varset
trigger1=life>lifemax*0.3
fvar(1)=1
ignorehitpause=1

[state -2,UŒ‚—Íª«’l1’iŠK–Ú]
type=varset
trigger1=life>lifemax*0.15
trigger1=life<=lifemax*0.3
fvar(1)=1.15
ignorehitpause=1

[state -2,UŒ‚—Íª«’l2’iŠK–Ú]
type=varset
trigger1=life<=lifemax*0.15
fvar(1)=1.25
ignorehitpause=1

[state -2,–hŒä—Íª«’lOFF]
type=varset
trigger1=life>lifemax*0.3
fvar(2)=1
ignorehitpause=1

[state -2,–hŒä—Íª«’l1’iŠK–Ú]
type=varset
trigger1=life>lifemax*0.15
trigger1=life<=lifemax*0.3
fvar(2)=0.85
ignorehitpause=1

[state -2,–hŒä—Íª«’l2’iŠK–Ú]
type=varset
trigger1=life<=lifemax*0.15
fvar(2)=0.75
ignorehitpause=1

;===========================================================================
;ƒRƒ“ƒ{•â³
[state -2,ƒRƒ“ƒ{•â³ƒŠƒZƒbƒg]
type=varset
triggerall=numenemy
trigger1=enemynear,movetype!=h
var(1)=0
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³ƒŠƒZƒbƒg2]
type=varset
trigger1=var(1)=0
var(3)=0
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:1”{]
type=varset
trigger1=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=[0,1]
trigger2=!var(1)
trigger3=var(0)&32
fvar(0)=1
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.9”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=2
fvar(0)=0.9
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.8”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=[3,4]
fvar(0)=0.8
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.7”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=[5,6]
fvar(0)=0.7
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.6”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=7
fvar(0)=0.6
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.5”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=8
fvar(0)=0.5
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.4”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=9
fvar(0)=0.4
ignorehitpause=1

[state -2,ƒRƒ“ƒ{•â³:0.3”{]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)>=10
fvar(0)=0.3
ignorehitpause=1

;===========================================================================
;Šeí•â³Às
[state -2,UŒ‚—Í•Ï‰»]
type=attackmulset
trigger1=1
value=fvar(0)*fvar(1)*fvar(39)
ignorehitpause=1

[state -2,–hŒä—Í•Ï‰»]
type=defencemulset
trigger1=1
value=fvar(2)
ignorehitpause=1

[state -2,1”­–ÚŒyŒ¸]
type=lifeadd
trigger1=gethitvar(hitcount)=1
value=floor(gethitvar(damage)*(1-fvar(2)))
ignorehitpause=1

;===========================================================================
;’´•KKO
[state -2,’´•KKO:ƒm[ƒ}ƒ‹]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1=1
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6030
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’Êí”s–k]
type=helper
triggerall=roundstate=3
triggerall=!numhelper(6030)
trigger1=winko
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6054
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’´•KŠ´’m•Ï”ƒŠƒZƒbƒg]
type=varset
triggerall=var(2)
triggerall=numenemy
trigger1=enemynear(var(2)-1),movetype!=a
trigger2=enemynear(var(2)-1),hitdefattr=sca,na,np,nt,sa,sp,st
var(2)=0
ignorehitpause=1

[state -2,’´•KŠ´’m•Ï”ƒZƒbƒg1]
type=varset
triggerall=numenemy
triggerall=enemynear(0),movetype=a
triggerall=!(enemynear(0),hitdefattr=sca,na,np,nt,sa,sp,st)
trigger1=enemynear(0),hitdefattr=sca,ha,hp,ht
trigger2=enemynear(0),stateno=[3000,4999]
trigger3=enemynear(0),stateno>=6000
var(2)=1
ignorehitpause=1

[state -2,’´•KŠ´’m•Ï”ƒZƒbƒg2]
type=varset
triggerall=numenemy=2
triggerall=enemynear(1),movetype=a
triggerall=!(enemynear(1),hitdefattr=sca,na,np,nt,sa,sp,st)
trigger1=enemynear(1),hitdefattr=sca,ha,hp,ht
trigger2=enemynear(1),stateno=[3000,4999]
trigger3=enemynear(1),stateno>=6000
var(2)=2
ignorehitpause=1

;===========================================================================

[state -2,ƒnƒCƒWƒƒƒ“ƒv”»’è]
type=varadd
trigger1=var(5)>0
var(5)=-1

;===========================================================================

[state -2,ƒfƒoƒbƒO—p•\¦]
type=displaytoclipboard
trigger1=1
text="%d %d %.4f %.2f"
params=var(0),var(2),fvar(0)*fvar(1)*fvar(39),fvar(2)
ignorehitpause=1

[state -2,ƒfƒoƒbƒO—p•\¦2]
type=appendtoclipboard
trigger1=numenemy
text=" %d"
params=ifelse(var(1),enemynear,gethitvar(hitcount)-var(1)+var(3)+1,0)
ignorehitpause=1

;===========================================================================
;ƒ[ƒJƒ‹ƒ‹[ƒ‹
;-------------------------------------
;“ÅŒø‰ÊiƒhƒƒEƒBƒ“ƒAƒ‹ƒJƒij‰ü
[state -2, 0]
type = poweradd
triggerall = power > 0
trigger1 = numenemy
trigger1 = enemynear(0),authorname = "Drowin arcana"
trigger1 = enemynear(0),fvar(20) > 0
trigger2 = numenemy >= 2
trigger2 = enemynear(1),authorname = "Drowin arcana"
trigger2 = enemynear(1),fvar(20) > 0
value = -1
[state -2, 0]
type = lifeadd
triggerall = gametime % 7 = 0
trigger1 = numenemy
trigger1 = enemynear(0),authorname = "Drowin arcana"
trigger1 = enemynear(0),fvar(20) > 0
trigger2 = numenemy >= 2
trigger2 = enemynear(1),authorname = "Drowin arcana"
trigger2 = enemynear(1),fvar(20) > 0
value = -1
kill = 0
[State -2,0]
type = Palfx
trigger1 = numenemy
trigger1 = enemynear(0),authorname = "Drowin arcana"
trigger1 = enemynear(0),fvar(20) > 0
trigger2 = numenemy >= 2
trigger2 = enemynear(1),authorname = "Drowin arcana"
trigger2 = enemynear(1),fvar(20) > 0
add = 100,0,110
mul = 220,220,220
time = 5
ignorehitpause = 1

;===========================================================================
;y‡H|ÔåH—tzub‚ğÅ‚ª‚·v
[State -2]
Type = LifeAdd
triggerall = numenemy
TriggerAll = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
Trigger1 = Enemy,Var(47) = 1
Value = -5
Kill = 0

[State -2]
Type = PowerAdd
triggerall = numenemy
TriggerAll = Enemy,AuthorName = "‡H" && Enemy,Name = "Akiha_Vermilion"
Trigger1 = Enemy,Var(47) = 1
Value = -26
;===========================================================================
;y586|_”öŠÏ—ézu•sK‚Ì‰òvuŠÏ—é‚¿‚ñƒsƒ“ƒ`Iv
[State -2, LifeAdd]
type = LifeAdd
triggerall = NumEnemy
triggerall = (Enemy,TeamMode = Simul) = 0
triggerall = (TeamMode = Simul) = 0
triggerall = Enemy,AuthorName = "586"
triggerall = Enemy,Name = "Misuzu Kamio"
triggerall = Enemy,fvar(11) > 0
trigger1 = Enemy,var(13) = 1
trigger1 = GameTime % 13 = 0
trigger2 = Enemy,var(13) = 2
trigger2 = GameTime % 11 = 0
trigger3 = Enemy,var(13) = 3
trigger3 = GameTime % 8 = 0
trigger4 = Enemy,var(13) = 4
trigger4 = GameTime % 6 = 0
trigger5 = Enemy,var(13) = 5
trigger5 = GameTime % 3 = 0
value = -1
kill = 0
ignorehitpause = 1

[State -2, PalFX]
type = PalFX
triggerall = NumEnemy
triggerall = (Enemy,TeamMode = Simul) = 0
triggerall = (TeamMode = Simul) = 0
triggerall = Enemy,AuthorName = "586"
triggerall = Enemy,Name = "Misuzu Kamio"
trigger1 = Enemy,fvar(11) > 0
add = -50,150,150
time = 1
ignorehitpause = 1
;===========================================================================
;y‘t‹M]—HXqzuÙõ‚Ì–²vuÙõ‘‚Ö‚Ì–ñ‘©èŒ`v

[State -2, LifeAdd]
Type       = LifeAdd
TriggerAll = NumEnemy           >= 1
TriggerAll = Enemy,AuthorName    = "Souki" && Enemy,Name   = "Yuyuko Saigyouji"
Trigger1   = Enemy,Var(3)        = 1       || Enemy,Var(3) = 2
Trigger1   = GameTime%6          = 0
Value      = IfElse(Enemy,Var(3) = 1, -2, -3)
Kill       = 0
;===========================================================================
;y…‰e]¬’¬zu’E°‚Ì‹Vv

;U‚èŒü‚«—}§
[State pos moving]
type = AssertSpecial
triggerall = numenemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
flag = noautoturn

;ˆÚ“®
[State pos moving]
type = Posadd
triggerall = numenemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
x = -ceil(enemynear,fVar(24))*facing*enemynear,facing
y = -ceil(enemynear,fVar(25))*(statetype!=L)

;statetype!=A+statetype!=L‚Ìê‡‹­§—‰ºstate‚Ö
[State pos moving]
type = Changestate
triggerall = numenemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
Triggerall = (statetype != A)*(pos y!=0)*(statetype!=L)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
value = 50
;===========================================================================
;y…‰e]—D“Ü‰ØzuŠ¢zD•¨‚Ì‹Êv

[State lifeadd]
type = lifeadd
Trigger1 = numEnemy = 1
Trigger1 = Pos y > -240
Trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),fvar(21))
value = -floor(Enemy(0),fvar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State lifeadd]
type = lifeadd
Triggerall = numEnemy = 2
Triggerall = Pos y > -240
Trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),fvar(21))
Trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th105")*(Enemy(1),fvar(21))
value = -floor(Enemy(0),fvar(21))*2-floor(Enemy(1),fvar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0
;===========================================================================
;yjin|ƒAƒbƒVƒ…zuƒWƒFƒ‹ƒ~ƒi[ƒ‹v

[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,Teammode = single || enemy,Teammode = turns
triggerall = enemy,AuthorName = "jin" && Enemy,Name = "Ash"
trigger1 = enemy,var(40) != 0
trigger1 = stateno = 3120
trigger2 = enemy,NumHelper(3200) > 0
trigger2 = enemy,var(40)
var(8) = enemy,var(40)
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

;••ˆóŠÔ‰ğœ
[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,AuthorName = "jin" && Enemy,Name = "Ash"
trigger1 = enemy,var(40) = 0
trigger2 = enemy,NumHelper(3200) = 0
var(8) = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

;===========================================================================
;ySander71113|‚¿‚¸‚ézu—ë‹Z‚Ì‘bv

[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,Teammode = single || enemy,Teammode = turns
triggerall = enemy,AuthorName = "Sander71113" && Enemy,Name = "Chizuru Kagura"
trigger1 = enemy,stateno = 2000 && enemy,movehit = 1
trigger2 = enemy,stateno = 2010 && enemy,movehit = 1
var(8) = ifelse(enemynear(var(52)),stateno = 2010,850,550)
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

;••ˆóŠÔ‰ğœ
[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,AuthorName = "Sander71113" && Enemy,Name = "Chizuru Kagura"
trigger1 = enemy,NumHelper(2001) = 0 && enemy,NumHelper(2011) = 0
var(8) = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

;===========================================================================
;yMDK|‚¿‚¸‚é_ƒ}ƒLzu—ë‹Z‚Ì‘b^O_‹Z”VQ^—Œ…‚Ì_‹T^”ô’é”V—ç•‘v

[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,Teammode = single || enemy,Teammode = turns
triggerall = enemy,AuthorName = "MDK" && Enemy,Name = "chizuru_maki"
trigger1 = enemy,stateno = 2100 && enemy,movehit
trigger2 = enemy,NumHelper(4700) > 0
trigger2 = enemy,var(32)
var(8) = enemy,var(32)
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

;••ˆóŠÔ‰ğœ
[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,AuthorName = "MDK" && Enemy,Name = "chizuru_maki"
trigger1 = enemy,NumHelper(4700) = 0
var(8) = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
;===========================================================================
;y•Ê•{|ƒ}ƒLzu—Œ…‚Ì_‹T^—ë‹Z‚Ì‘bv

[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,Teammode = single || enemy,Teammode = turns
triggerall = enemy,AuthorName = "beppu" && Enemy,Name = "MakiXI"
trigger1 = enemy,var(16) != 0
trigger1 = stateno = 5030
trigger2 = enemy,NumHelper(1360) > 0
trigger2 = enemy,var(16)
var(8) = enemy,var(16)
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

;••ˆóŠÔ‰ğœ
[State -2]
type = varset
triggerall = numenemy
triggerall = enemy,AuthorName = "beppu" && Enemy,Name = "MakiXI"
trigger1 = enemy,var(16) = 0
trigger2 = enemy,NumHelper(1360) = 0
var(8) = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
;------------------------------------------
;••ˆóŠÔ‰ğœ—\”õ
[State -2]
type = varadd
trigger1 = var(8) > 0
var(8) = -1
persistent = 0
ignorehitpause = 1

[State -2]
type = Palfx
triggerall = var(8)
triggerall = numenemy
trigger1 = enemy,AuthorName = "MDK" && Enemy,Name = "chizuru_maki"
trigger2 = enemy,AuthorName = "Sander71113" && Enemy,Name = "Chizuru Kagura"
add = 50,50,170
mul = 165,165,165
sinadd = 95,95,95,17
time = 1
color = 0
invertall = 0
ignorehitpause = 1

[State -2]
type = varset
trigger1 = var(8) != 0
var(7) = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[State -2]
type = varset
trigger1 = var(8) = 0
trigger2 = Teammode = simul || enemy,Teammode = simul
var(7) = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999


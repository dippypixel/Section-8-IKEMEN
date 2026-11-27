[statedef -2]

;===========================================================================
;??????
[State -2]
type = helper
trigger1 = movetype != H
trigger1 = !Numhelper(8500)
stateno = 8500
id = 8500
pos = 0,0
pausemovetime = 999999
supermovetime = 999999
sprpriority = -1
postype = p1
ownpal = 1
size.xscale = 1.03
size.yscale = 1.03

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
;‹zŒŒ‹S•â³A’Œ‚Ì’j•â³
[state -2,UŒ‚—Í‚Ì•W€İ’è]
type=varset
trigger1=!fvar(39)
fvar(39)=1
ignorehitpause=1

[state -2,‹zŒŒ‹S”»’è]
type=varset
triggerall=numenemy
trigger1	=enemy,name="03ria-red"	;03RIA-g
trigger2	=enemy,name="dio"	;DIO
trigger3	=enemy,name="Sion Eltnam Atlasia [Vampire]"	;VƒVƒIƒ“
trigger4	=enemy,name="Sion TATARI"	;VƒVƒIƒ“
trigger5	=enemy,name="Sion_TATARI"	;VƒVƒIƒ“
trigger6	=enemy,name="raigu's Alucard"	;ƒAƒ‹ƒJ[ƒh
trigger7	=enemy,name="Arcueid Brunestud"	;ƒAƒ‹ƒN
trigger8	=enemy,name="Arcueid_Brunestud"	;ƒAƒ‹ƒN
trigger9	=enemy,name="W ARCUEID"	;ƒAƒ‹ƒN•ƒƒ‹ƒN
trigger10	=enemy,name="vanilla ice"	;ƒ”ƒ@ƒjƒ‰
trigger11	=enemy,name="vanillaice"	;ƒ”ƒ@ƒjƒ‰
trigger12	=enemy,name="Yumiduka_Satsuki"	;‚³‚Â‚«
trigger13	=enemy,name="Sakuya Izayoi"	;ƒVƒƒƒhƒEç–é
trigger13	=enemy,authorname="isamusi"
trigger14	=enemy,name="SLAYER"	;ƒXƒŒƒCƒ„[
trigger15	=enemy,name="Dark Arcueid"	;ƒ_[ƒNƒAƒ‹ƒN
trigger16	=enemy,name="Dark Arcueid mk2"	;ƒ_[ƒNƒAƒ‹ƒNmk2
trigger17	=enemy,name="Demitri"	;ƒfƒ~ƒgƒŠ
trigger18	=enemy,name="Demitri-Ex"	;ƒfƒ~ƒgƒŠ
trigger19	=enemy,name="nukesaku"	;ƒkƒPƒTƒN
trigger20	=enemy,name="DIO BRANDO"	;ƒnƒCDIO
trigger21	=enemy,name="final dio"	;ƒtƒ@ƒCƒiƒ‹DIO
trigger22	=enemy,name="Final_Sakuya"	;ƒtƒ@ƒCƒiƒ‹ç–é
trigger23	=enemy,name="Flandre_Scarlet"	;ƒtƒ‰ƒ“
trigger24	=enemy,name="mora"	;ƒ‚[ƒ‰
trigger25	=enemy,name="Remilia Scarlet"	;ƒŒƒ~ƒŠƒA
trigger26	=enemy,name="Remilia_Scarlet"	;ƒŒƒ~ƒŠƒA
trigger27	=enemy,name="Michael_Roa_Valdamjong"	;ƒƒA
trigger28	=enemy,name="RaveEx"	;ƒ[ƒhƒŒƒCƒ”ƒiƒX
trigger29	=enemy,name="warakia"	;ƒƒ‰ƒLƒA
trigger30	=enemy,name="Warachia"	;ƒƒ‰ƒLƒA
trigger31	=enemy,name="Warakia"	;ƒƒ‰ƒLƒA
trigger32	=enemy,name="Red Arcueid"	;ƒƒ‹ƒN
trigger33	=enemy,name="Red_Arcueid"	;ƒƒ‹ƒN
trigger34	=enemy,name="WARCUEID"	;ƒƒ‹ƒN
trigger35	=enemy,name="wantixen"	;ƒƒ“ƒ`ƒFƒ“
trigger36	=enemy,name="Izayoi Sakuya Brando"	;ç–éƒuƒ‰ƒ“ƒh[
trigger37	=enemy,name="seras"	;•wŒx
trigger38	=enemy,name="Shadow Dio"	;‰eDIO
trigger39	=enemy,name="Sakuya Shadow Brando"	;‰eƒuƒ‰ƒ“ƒh[
trigger40	=enemy,name="Inferis Chaos"	;‹³ö
trigger41	=enemy,name="Nrvnqsr_Chaos"	;‹³ö
trigger42	=enemy,name="a"	;’U“ß
trigger43	=enemy,name="alucard"	;’U“ß
trigger44	=enemy,name="Akaitsuki"	;é‚¢Œ
trigger45	=enemy,name="raigu's dracula"	;á–{”Œİ
trigger46	=enemy,name="Araki Hirohiko"	;r–Ø
trigger47	=enemy,name="satsuki EX"	;ŠoÁ‚³‚Â‚«
trigger48	=enemy,name="Reimu_Scarlet"	;—ì–²¥ƒXƒJ[ƒŒƒbƒg
trigger49	=enemy,name="Mukuro"	;Š[
trigger50	=enemy,name="Kars"	;ƒJ[ƒY
;‚±‚±‚©‚ç‰º‚És‚ğ‘‚â‚¹‚Î‘ÎÛƒLƒƒƒ‰‚ğ‘‚â‚¹‚Ü‚·B
fvar(39)=1.05;‚±‚±‚ªUŒ‚—Í‚Ì•Ï‰»—¦‚Å‚·B
ignorehitpause=1

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
;’´?K?EKO(’???)
[State -2]
type = Helper
triggerall = LoseKo && !NumHelper(6050)
trigger1 = enemy,hitdefattr = SCA, HA, HP, HT
trigger2 = (enemynear,stateno = [3000,9999]) || (enemynear,stateno = [13000,19999])
id = 6050
stateno = 16040
postype = p1
pos = 0,0
ownpal = 1
keyctrl = 0
pausemovetime = 99999999
supermovetime = 99999999
ignorehitpause = 1

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
[state -2,ƒRƒ“ƒ{Œv‘ªƒŠƒZƒbƒg]
type=varset
trigger1= numtarget = 0
var(37)=0

[state -2,ƒRƒ“ƒ{Œv‘ªƒŠƒZƒbƒg]
type=varset
trigger1= numtarget = 0
var(38)=0
;===========================================================================

[State -2, ƒfƒoƒbƒO(•Ï”Šm”F)]
Type = DisplayToClipBoard
Trigger1 = 1
Text = "var(59)=%d,var(40)=%d,var(38)=%d,fvar(6)=%f,3101 x=%f"
Params = var(59),var(40),var(38),fvar(6),helper(3101),pos x
IgnoreHitPause = 1

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

;------------------------------------------

;‰E‘ã‹{‰õ ‘¼uƒƒ^•Ô‚µ•ƒƒ^Ä”½˜_v‘Î‰ƒXƒe[ƒg
[state ];ƒƒ^•Ô‚µ•ƒƒ^Ä”½˜_`ƒpƒ[ƒQ[ƒWÁ”ï~2
type=Poweradd
triggerall=alive&&!numexplod(19864)&&!numexplod(19865)
trigger1=numenemy&&!numpartner
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
value=-2000;››››@©Á”ï—Ê‚Ì–ÚˆÀ‚Í‰º‹L‚É‚ ‚è‚Ü‚·B1‰ñ•ª‚ÌÁ”ï—Ê‚É‚µ‚Ä‰º‚³‚¢B
ignorehitpause=1

[state ];ƒƒ^•Ô‚µ`ƒ{ƒCƒX
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s19864,0
ignorehitpause=1

[state ];ƒƒ^•Ô‚µ`ƒJƒbƒgƒCƒ“i‰EŒü‚«j
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=-1
anim=19864
ID=19864
postype=left
pos=0,240
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ];ƒƒ^•Ô‚µ`ƒJƒbƒgƒCƒ“i¶Œü‚«j
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=1
anim=19864
ID=19864
postype=right
pos=0,240
facing=-1
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ];ƒƒ^Ä”½˜_`ƒ{ƒCƒX
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s19864,1
ignorehitpause=1


[state ];ƒƒ^Ä”½˜_`ƒJƒbƒgƒCƒ“i‰EŒü‚«j
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=-1
anim=19865
ID=19865
postype=left
pos=0,240
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state ];ƒƒ^Ä”½˜_`ƒJƒbƒgƒCƒ“i¶Œü‚«j
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=1
anim=19865
ID=19865
postype=right
pos=0,240
facing=-1
scale=0.5,0.5
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;------------------------------------------

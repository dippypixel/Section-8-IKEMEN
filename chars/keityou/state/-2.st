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

;”íƒ_ƒ‚ÌƒQ[ƒWH‚ ‚è‚ª‚½‚­‚à‚ç‚Á‚Ä‚¨‚­‚æ

[state -2,ƒtƒ‰ƒCƒ“ƒO‚·‚é•s“Í‚«Ò‚Ö‚Ìƒyƒiƒ‹ƒeƒB]
type=poweradd
triggerall=roundstate<2
trigger1=movetype=h
value=gethitvar(damage)*100

;===========================================================================
;[state -2,ƒVƒ…ƒgƒƒnƒCƒ€ƒXƒCƒbƒ`](–¢Š®¬
;type=varset
;trigger1=1
;var(41)=1;
;ignorehitpause=1

;===========================================================================
;‹zŒŒ‹S•â³A’Œ‚Ì’j•â³
[state -2,UŒ‚—Í‚Ì•W€İ’è]
type=varset
trigger1=!fvar(39)
fvar(39)=1
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
;’´•KKO
[state -2,’´•KKO:ca‚è]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="khan"	&&enemynear(var(2)-1),authorname="bad darkness"
trigger2	=enemynear(var(2)-1),name="Vergil"	&&enemynear(var(2)-1),authorname="bugya"	&&enemynear(var(2)-1),stateno=3301	;DTŠ•Š„‚è
trigger3	=enemynear(var(2)-1),name="Moriya Minakata"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=12100	;ŠˆE¥—‚êáŒ‰Ô
trigger4	=enemynear(var(2)-1),name="Fiona"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2010	;´¸½¶ØÊŞ°
trigger5	=enemynear(var(2)-1),name="Kamui"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2010	;Àa
trigger6	=(enemynear(var(2)-1),name="omega rugal98"	||enemynear(var(2)-1),name="Rugal2k2")	&&enemynear(var(2)-1),authorname="GONZO-"	&&(enemynear(var(2)-1),stateno=2104	||enemynear(var(2)-1),stateno=2205)	;ÃŞ½Ä×¸¼®İ¥µÒ¶Ş
trigger7	=enemynear(var(2)-1),name="Rugal2k2"	&&enemynear(var(2)-1),authorname="GONZO-"	&&enemynear(var(2)-1),stateno=[3210,3215]	;¼ŞªÉ»²ÄŞÍÙ
trigger8	=enemynear(var(2)-1),name="ZERO"	&&enemynear(var(2)-1),authorname="GONZO-"	&&((enemynear(var(2)-1),stateno=[3000,3001])	||enemynear(var(2)-1),stateno=3411)	;–½aw
trigger9	=enemynear(var(2)-1),name="MURAKUMO"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=2513	;”ªhˆê‰F
trigger10	=enemynear(var(2)-1),name="MURAKUMO"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=2100	;“ÁU“Oba
trigger11	=enemynear(var(2)-1),name="Setsuna"	&&enemynear(var(2)-1),authorname="HSR"	&&enemynear(var(2)-1),stateno=3001	;–³–Á(â)
trigger12	=enemynear(var(2)-1),name="Kamui_Tokinomiya"	&&enemynear(var(2)-1),authorname="Ina"	&&enemynear(var(2)-1),stateno=520	;Àa
trigger13	=enemynear(var(2)-1),name="O-Adel"	&&enemynear(var(2)-1),authorname="jin"	&&(enemynear(var(2)-1),stateno=2100	||enemynear(var(2)-1),stateno=2600)	;G¥¹°Æ¯Ë
trigger14	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=21000	;âS
trigger15	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3000	&&enemynear(var(2)-1),var(42)=1	;l‹S¢–¢—ˆ‰i…a£
trigger16	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3001	;’f–½Œ•¢–»‘za£/’f–ÀŒ•¢–À’Ãœqa£
trigger17	=(enemynear(var(2)-1),name="Clone Zero"	||enemynear(var(2)-1),name="Original Zero  ")	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=[3000,3001]	;–½aw
trigger18	=enemynear(var(2)-1),name="Youmu-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"
trigger19	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=3110	;–œ–@‹Aˆê“
trigger20	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=3030	;•KEØ“–@
trigger21	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=2300	;“ÁUv—‹
trigger22	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3128	;r‚ğ‰z‚¦s‚­–çC
trigger23	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3201	;€‚ğ‹°‚ê‚ÊS–ç
trigger24	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3214	;EX–œ‹S–ÅÓ
trigger25	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3515	;EX–œ‹S–ÅÓ‰ü•Ï”Å
trigger26	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=[3100,3110]	;a¯˜T‰å
trigger27	=enemynear(var(2)-1),name="johnny"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3210	;‰_’£‚Ì‹‡
trigger28	=enemynear(var(2)-1),name="johnny"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3001	;¢‚»‚ê‚ª‰´‚Ì–¼‚¾£
trigger29	=enemynear(var(2)-1),name="YoumuSS"	&&enemynear(var(2)-1),authorname="Pinko"	&&enemynear(var(2)-1),stateno=2900	;”é‰œ‹`
trigger30	=enemynear(var(2)-1),name="YoumuSS"	&&enemynear(var(2)-1),authorname="Pinko"	&&enemynear(var(2)-1),stateno=3510	;â–½‰œ‹`
trigger31	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&(enemynear(var(2)-1),stateno=3121	||enemynear(var(2)-1),stateno=3150)	;Full Moon Slash
trigger32	=enemynear(var(2)-1),name="Original Zero"	&&enemynear(var(2)-1),authorname="Rin & Bat"	&&((enemynear(var(2)-1),stateno=[3000,3001])	||enemynear(var(2)-1),stateno=[3410,3411])	;–½aw
trigger33	=enemynear(var(2)-1),name="Tenko"	&&enemynear(var(2)-1),authorname="suigin"	&&enemynear(var(2)-1),stateno=7500	;´¸½¶ØÊŞ
trigger34	=enemynear(var(2)-1),name="cvsg_rugal"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3100	;¼ŞªÉ»²ÄŞ¥ÍÌŞİ
trigger35	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_ex")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3102	;“V”e’f‹ó—óa
trigger36	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_normal")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3200	;“V”e¦àŠa
trigger37	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_normal")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3000	;”é‰œ‹` “V”e••_a
trigger38	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_normal")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3310	;â–½‰œ‹`
trigger39	=enemynear(var(2)-1),name="cvshayato"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3200	;—ù–
trigger40	=enemynear(var(2)-1),name="cvshayato"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3000	;—…™‹a
trigger41	=enemynear(var(2)-1),name="cvskuroko"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3401	;•q‘å—•‘
trigger42	=enemynear(var(2)-1),name="Naitou"	&&enemynear(var(2)-1),authorname="ƒ}ƒ“ƒhƒ‰ƒt"	&&enemynear(var(2)-1),stateno=2200	;‹†‹Éî¸Ş×³İÄŞ½Ä×²¸
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6031
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’´•KKO:‰¡a‚è]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="Mai Kawasumi"	&&enemynear(var(2)-1),authorname="586"	&&enemynear(var(2)-1),stateno=[6103,6123]	;”•ä“ã
trigger2	=enemynear(var(2)-1),name="Vergil"	&&enemynear(var(2)-1),authorname="bugya"	&&enemynear(var(2)-1),stateno=3202	;DT¾‘–‹‡‚¢
trigger3	=enemynear(var(2)-1),name="Ukyo Tachibana"	&&enemynear(var(2)-1),authorname="buyon"	&&enemynear(var(2)-1),stateno=4170	;–²‘zcŒõ‰à
trigger4	=enemynear(var(2)-1),name="Ukyo Tachibana"	&&enemynear(var(2)-1),authorname="buyon"	&&enemynear(var(2)-1),stateno=4270	;–²‘zcŒõ‰à64
trigger5	=enemynear(var(2)-1),name="Moriya Minakata"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=11100	;ŠˆE¥ˆê˜Z–éŒ‰Ø
trigger6	=enemynear(var(2)-1),name="Fiona"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2020	;¾²¸Ø¯ÄŞÊßÆ¯¼­
trigger7	=enemynear(var(2)-1),name="Kamui"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2006	;€âJ
trigger8	=enemynear(var(2)-1),name="Kamui"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2001	;–³‰…
trigger9	=enemynear(var(2)-1),name="goenitz"	&&enemynear(var(2)-1),authorname="GONZO-"	&&enemynear(var(2)-1),stateno=2530	;ÌÙÌŞ×½Ä
trigger10	=enemynear(var(2)-1),name="KAGUYA HOURAISAN"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=3000	;™RŒ‘M
trigger11	=enemynear(var(2)-1),name="KAGUYA HOURAISAN"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=3050	;aŒ‘M
trigger12	=enemynear(var(2)-1),name="Kamui_Tokinomiya"	&&enemynear(var(2)-1),authorname="Ina"	&&enemynear(var(2)-1),stateno=532	;€âJ
trigger13	=enemynear(var(2)-1),name="Kamui_Tokinomiya"	&&enemynear(var(2)-1),authorname="Ina"	&&enemynear(var(2)-1),stateno=501	;–³‰…
trigger14	=enemynear(var(2)-1),name="NEODIO"	&&enemynear(var(2)-1),authorname="jin"	&&enemynear(var(2)-1),stateno=4010	;±ÙÃ¨Ò¯Ä²Ø­°¼Ş®İ
trigger15	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3000	&&enemynear(var(2)-1),var(42)=0	;l•„¢Œ»¢a£
trigger16	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3100	;¢¼st•—a£
trigger17	=enemynear(var(2)-1),name="Alice-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&((enemynear(var(2)-1),stateno=[3100,3101])	||enemynear(var(2)-1),stateno=[3600,3601])	;ÄŞ°Ù½Ş½Ã¯Ìß
trigger18	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=2200	;“ÁU¾‹ì
trigger19	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3110	;r‚ğ‰z‚¦s‚­–çA
trigger20	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3120	;r‚ğ‰z‚¦s‚­–çB
trigger21	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3001	;”­Ÿ‚·‚é_‹C–ç
trigger22	=enemynear(var(2)-1),name="johnny"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3501	;214214HS
trigger23	=enemynear(var(2)-1),name="Colonel"	&&enemynear(var(2)-1),authorname="peg"	&&enemynear(var(2)-1),stateno=3001	;‹‡‚¢
trigger24	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&enemynear(var(2)-1),stateno=3430	;Flash Burst
trigger25	=(enemynear(var(2)-1),name="ROBO-KY1"	||enemynear(var(2)-1),name="ROBO-KY2")	&&enemynear(var(2)-1),authorname="ukege"	&&enemynear(var(2)-1),stateno=3210	;¶²S‚ÌˆêŒ‚
trigger26	=enemynear(var(2)-1),name="blackpolnareff"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3001	;â‘Î‚É•‰‚¯‚ñ‚Ì‚¾¯
trigger27	=enemynear(var(2)-1),name="cvsguile"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3200	;¿Æ¯¸ÊØ¹°İ
trigger28	=enemynear(var(2)-1),name="cvshayato"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3301	;— —…™‹a
trigger29	=enemynear(var(2)-1),name="Nanaya_Shiki"	&&enemynear(var(2)-1),authorname="‡H"	&&enemynear(var(2)-1),stateno=3101	;‹É€¥µ–é
trigger30	=enemynear(var(2)-1),name="Nanaya_Shiki"	&&enemynear(var(2)-1),authorname="‡H"	&&enemynear(var(2)-1),stateno=3001	;‘Mâ¥–À–¹–å
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6032
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’´•KKO:ƒoƒ‰ƒoƒ‰]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="Oswald"	&&enemynear(var(2)-1),authorname="ahuron"
trigger2	=enemynear(var(2)-1),name="Alice Margatroid"	&&enemynear(var(2)-1),authorname="ATUSI"	&&enemynear(var(2)-1),stateno=2401	;g‚«g–‚ŠÙ‚Ìg’ƒ
trigger3	=enemynear(var(2)-1),name="Vergil"	&&enemynear(var(2)-1),authorname="bugya"	&&enemynear(var(2)-1),stateno=3502	;â“
trigger4	=enemynear(var(2)-1),name="Ukyo Tachibana"	&&enemynear(var(2)-1),authorname="buyon"	&&enemynear(var(2)-1),stateno=1276	;_r‚ê
trigger5	=enemynear(var(2)-1),name="Moriya Minakata"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=14070	;ŠˆE¥Œ“Ç‚İ
trigger6	=enemynear(var(2)-1),name="Setsuna"	&&enemynear(var(2)-1),authorname="HSR"	&&enemynear(var(2)-1),stateno=3131	;–³–Á(‹ÉÉ’Ç)
trigger7	=enemynear(var(2)-1),name="Shadow Dio"	&&enemynear(var(2)-1),authorname="kikurage"	&&enemynear(var(2)-1),stateno=4615	;€‚Ì–Y‹p
trigger8	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3101	;¢é”ò“V”V•‘£
trigger9	=enemynear(var(2)-1),name="Alice-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=4015	;MAX2
trigger10	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=[3000,3030]	;–œ‹S–ÅÓ
trigger11	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&(enemynear(var(2)-1),stateno=3110	||enemynear(var(2)-1),stateno=3551)	;–œ‹S–ÅÓ‰ü•Ï”Å
trigger12	=enemynear(var(2)-1),name="YoumuSS"	&&enemynear(var(2)-1),authorname="Pinko"	&&enemynear(var(2)-1),stateno=3020	;ˆê‘M
trigger13	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&enemynear(var(2)-1),stateno=3441	;Flash Burst(‹­‰»”Å)
trigger14	=enemynear(var(2)-1),name="Tenko"	&&enemynear(var(2)-1),authorname="suigin"	&&enemynear(var(2)-1),stateno=7410	;ÊŞ×ÊŞ×‚Éˆø‚«—ô‚¢‚Ä‚â‚ë‚¤‚©?EX
trigger15	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3501	;€‚Ì–Y‹p
trigger16	=enemynear(var(2)-1),name="Nanaya_Shiki"	&&enemynear(var(2)-1),authorname="‡H"	&&enemynear(var(2)-1),stateno=3051	;‘Mâ¥–À–¹–å(AAD)
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6033
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’´•KKO:–I‚Ì‘ƒ]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="Mishio Amano"	&&enemynear(var(2)-1),authorname="586"	&&enemynear(var(2)-1),stateno=[6100,6123]	;•S‹SÅ‘M
trigger2	=enemynear(var(2)-1),name="JAGI"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=[2100,2105]	;–k“l—…Š¿Œ‚
trigger3	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=[2200,2201]	;‰ñ“]Œ^“ËŠÑ‰œ‹Z¥—†ù
trigger4	=enemynear(var(2)-1),name="Alice Margatroid"	&&enemynear(var(2)-1),authorname="ATUSI"	&&enemynear(var(2)-1),stateno=2101	;ÄŞ°Ù½ŞÃ²¸µÌ
trigger5	=enemynear(var(2)-1),name="washizuka"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=11040	;^¥˜T‰å
trigger6	=enemynear(var(2)-1),name="Sakuya Izayoi"	&&enemynear(var(2)-1),authorname="isamusi"	&&enemynear(var(2)-1),stateno=8606	;ß•„¢ÊßÆ¯¼­Ò²ÄŞ£
trigger7	=enemynear(var(2)-1),name="Polnareff"	&&enemynear(var(2)-1),authorname="Izumo"
trigger8	=enemynear(var(2)-1),name="NEODIO"	&&enemynear(var(2)-1),authorname="jin"	&&(enemynear(var(2)-1),stateno=3010	||enemynear(var(2)-1),stateno=3510)	;±ÙÃ¨Ò¯ÄËŞ°½Ä
trigger9	=enemynear(var(2)-1),name="Shadow Dio"	&&enemynear(var(2)-1),authorname="kikurage"	&&enemynear(var(2)-1),stateno=4030	;ÊßÆ¯¼­ÒİÄ
trigger10	=enemynear(var(2)-1),name="Alice-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&(enemynear(var(2)-1),stateno=3010	||enemynear(var(2)-1),stateno=3510)	;–Å‘½Ø‚è¼¬İÊ°²
trigger11	=enemynear(var(2)-1),name="Young Joseph +"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=4011	;ÌŞ¯‰ó‚·‚Ù‚Ç¼­°Ä
trigger12	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3401	;“–g
trigger13	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3300	;”j—ƒ—–P
trigger14	=enemynear(var(2)-1),name="Shadow DIO"	&&enemynear(var(2)-1),authorname="Orochi Herman"	&&enemynear(var(2)-1),stateno=2206	;ÊßÆ¯¼­ÒİÄ
trigger15	=enemynear(var(2)-1),name="petshop"	&&enemynear(var(2)-1),authorname="rei"	&&enemynear(var(2)-1),stateno=3000	;·Ş¶ŞÌØ°¿Şİ
trigger16	=enemynear(var(2)-1),name="petshop"	&&enemynear(var(2)-1),authorname="rei"	&&enemynear(var(2)-1),stateno=3210	;”Ô’·‚Ì–ÒU
trigger17	=enemynear(var(2)-1),name="DIO BRANDO"	&&enemynear(var(2)-1),authorname="Shio"	&&enemynear(var(2)-1),stateno=4000	;Áª¯¸Ò²Ä‚¾¯
trigger18	=enemynear(var(2)-1),name="blackpolnareff"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3101	;ÀŞÒ‰Ÿ‚µ‚ÆŒ¾‚¤‚â‚Â‚¾¯
trigger19	=enemynear(var(2)-1),name="dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3653	;DIO‚Ìw¢ŠEx
trigger20	=enemynear(var(2)-1),name="dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3501	||enemynear(var(2)-1),stateno=3552)	;ÊßÆ¯¼­ÒİÄ
trigger21	=(enemynear(var(2)-1),name="dio"	||enemynear(var(2)-1),name="final dio")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3000	||enemynear(var(2)-1),stateno=3050)	;Áª¯¸Ò²Ä‚¾¯
trigger22	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3001	;ÊßÆ¯¼­ÒİÄ
trigger23	=(enemynear(var(2)-1),name="Hol horse"	||enemynear(var(2)-1),name="Hol horse & Boingo")	&&enemynear(var(2)-1),authorname="y.y"	&&enemynear(var(2)-1),stateno=[3000,3005]	;‚Ô‚¿‚Ü‚¯‚ë¯!
trigger24	=enemynear(var(2)-1),name="ƒU¥ƒ[ƒ‹ƒh"	&&enemynear(var(2)-1),authorname="ƒzƒ^ƒŠƒ…ƒ\"	&&enemynear(var(2)-1),stateno=2000	;Áª¯¸Ò²Ä‚¾¯!
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6034
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’´•KKO:ŒŒ‚Ü‚İ‚ê]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="kirby"	&&enemynear(var(2)-1),authorname="BIRD"	&&enemynear(var(2)-1),stateno=2331	;Íß²İÄ
trigger2	=enemynear(var(2)-1),name="Yagami-AKOF"	&&enemynear(var(2)-1),authorname="jin"	&&enemynear(var(2)-1),stateno=3010	;‹ÖçQ•S“óEŒŞ®¥gU‰Ø
trigger3	=enemynear(var(2)-1),name="Yagami-AKOF"	&&enemynear(var(2)-1),authorname="jin"	&&enemynear(var(2)-1),stateno=2110	;ŒŒ‚Ì–\‘–
trigger4	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=22003	;c!!
trigger5	=enemynear(var(2)-1),name="Shadow Dio"	&&enemynear(var(2)-1),authorname="kikurage"	&&(enemynear(var(2)-1),stateno=4400	||enemynear(var(2)-1),numhelper(4410))	;¶Ø½Ï!
trigger6	=enemynear(var(2)-1),name="Ryuji Yamazaki"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=4010	;c!!
trigger7	=enemynear(var(2)-1),name="Shadow DIO"	&&enemynear(var(2)-1),authorname="Orochi Herman"	&&(enemynear(var(2)-1),stateno=2101	||enemynear(var(2)-1),numhelper(2101))	;¶Ø½Ï!
trigger8	=enemynear(var(2)-1),name="DIO BRANDO"	&&enemynear(var(2)-1),authorname="Shio"	&&enemynear(var(2)-1),stateno=3310	;ŒŒ‚Ì¢Š«
trigger9	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_ex")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3320	;â–½‰œ‹`
trigger10	=(enemynear(var(2)-1),name="dio"	||enemynear(var(2)-1),name="final dio")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3302	||enemynear(var(2)-1),stateno=3352)	;ŒŒ‚Ì¢Š«
trigger11	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3451	;EXTRACTzŠÂŒğŠ·
trigger12	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3300	||enemynear(var(2)-1),numhelper(7700)	||enemynear(var(2)-1),numhelper(7701))	;¶Ø½Ï!
trigger13	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),numhelper(7702)	||enemynear(var(2)-1),numhelper(7703)	||enemynear(var(2)-1),numhelper(7704))	;¶Ø½Ï!
trigger14	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),numhelper(7705)	||enemynear(var(2)-1),numhelper(7706)	||enemynear(var(2)-1),numhelper(7707))	;¶Ø½Ï!
trigger15	=enemynear(var(2)-1),name="Hol horse"	&&enemynear(var(2)-1),authorname="y.y"	&&enemynear(var(2)-1),stateno=3010	;Å‹­‚ÌºİËŞ
trigger16	=enemynear(var(2)-1),name="Yumiduka_Satsuki"	&&enemynear(var(2)-1),authorname="‡H"	&&enemynear(var(2)-1),stateno=3001	;“{‚Á‚½‚ñ‚¾‚©‚çcc!
trigger17	=enemynear(var(2)-1),name="Yumiduka_Satsuki"	&&enemynear(var(2)-1),authorname="‡H"	&&enemynear(var(2)-1),stateno=3052	;“{‚Á‚½‚ñ‚¾‚©‚çcc!(AAD)
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6035
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[state -2,’´•KKO:”š”­]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="dc_stan"	&&enemynear(var(2)-1),authorname="1/8192"
trigger2	=enemynear(var(2)-1),name="Kyo Kusanagi"	&&enemynear(var(2)-1),authorname="ahuron"
trigger3	=enemynear(var(2)-1),name="Syo Kirishima"	&&enemynear(var(2)-1),authorname="ahuron"	&&enemynear(var(2)-1),stateno=2006	;¾¸¼¬Ù¥·Ø¼Ï¥ÀŞ²ÅÏ²Ä
trigger4	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=2100	;ŠgUŒ^”²è“‰œ‹Z¥â‰e
trigger5	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=2500	;ÅIŒ^”²è“”é‹Z¥—ÓŒõ
trigger6	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=2000	;‘MŒõŒ^”²è“‰œ‹Z¥Ü–P
trigger7	=enemynear(var(2)-1),name="order-Sol=Badguy"	&&enemynear(var(2)-1),authorname="Akutagawa"
trigger8	=enemynear(var(2)-1),name="K9999"	&&enemynear(var(2)-1),authorname="BLACK"	&&enemynear(var(2)-1),stateno=[3010,3015]	;‚Ä‚ß‚¥‚à‰‚Á‚¿‚Ü‚¦!!
trigger9	=enemynear(var(2)-1),name="kill"	&&enemynear(var(2)-1),authorname="BLACK"
trigger10	=enemynear(var(2)-1),name="Saisyu Kusanagi"	&&enemynear(var(2)-1),authorname="David Demianoff"
trigger11	=enemynear(var(2)-1),name="Saisyu Kusanagi"	&&enemynear(var(2)-1),authorname="David Demianoff & GoD_Ryu"
trigger12	=enemynear(var(2)-1),name="IGNIZ"	&&enemynear(var(2)-1),authorname="GONZO-"	&&enemynear(var(2)-1),stateno=[2300,2302]	;´İÄŞ¥µÌŞ¥¶Ş²±
trigger13	=enemynear(var(2)-1),name="K'"	&&enemynear(var(2)-1),authorname="Hazakura"
trigger14	=enemynear(var(2)-1),name="Avdul"	&&enemynear(var(2)-1),authorname="Izumo"
trigger15	=enemynear(var(2)-1),name="Billy Kane"	&&enemynear(var(2)-1),authorname="J.Lee & GoD_Ryu"	&&enemynear(var(2)-1),stateno=1860	;MAX’´‰Î‰Šù•—
trigger16	=enemynear(var(2)-1),name="Billy Kane"	&&enemynear(var(2)-1),authorname="J.Lee & GoD_Ryu"	&&enemynear(var(2)-1),stateno=6003	;×²±°´ÚÒİÀÙ 
trigger17	=enemynear(var(2)-1),name="Billy Kane"	&&enemynear(var(2)-1),authorname="J.Lee & GoD_Ryu"	&&enemynear(var(2)-1),stateno=[1800,1850]	;’´‰Î‰Šù•—
trigger18	=enemynear(var(2)-1),name="Shingo Yabuki"	&&enemynear(var(2)-1),authorname="JFCT555"	&&enemynear(var(2)-1),stateno=3650	;K-Boom!
trigger19	=enemynear(var(2)-1),name="Shingo Yabuki"	&&enemynear(var(2)-1),authorname="JFCT555"	&&enemynear(var(2)-1),stateno=[3610,3611]	;ÊŞ°Æİ¸Ş
trigger20	=(enemynear(var(2)-1),name="CloneKyo"	||enemynear(var(2)-1),name="Kyo-1"	||enemynear(var(2)-1),name="Kyo-2")	&&enemynear(var(2)-1),authorname="jin"
trigger21	=enemynear(var(2)-1),name="EX-Kyo"	&&enemynear(var(2)-1),authorname="jin"
trigger22	=enemynear(var(2)-1),name="KUSANAGI"	&&enemynear(var(2)-1),authorname="jin"
trigger23	=enemynear(var(2)-1),name="Kyo"	&&enemynear(var(2)-1),authorname="jin"
trigger24	=enemynear(var(2)-1),name="Flamme"	&&enemynear(var(2)-1),authorname="Juke Kisaragi"
trigger25	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=[4020,4023]	;´İÄŞ¥µÌŞ¥´ÃŞİ
trigger26	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=2011	;ÃŞ½ÍßÚ²Ä¥µ°ÊŞ°ÄŞ×²ÌŞ
trigger27	=enemynear(var(2)-1),name="Young Joseph +"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=3100	;´²¼Ş¬‚ÌÔÎ
trigger28	=enemynear(var(2)-1),name="sol"	&&enemynear(var(2)-1),authorname="muteki"
trigger29	=enemynear(var(2)-1),name="kevin"	&&enemynear(var(2)-1),authorname="NHK"
trigger30	=enemynear(var(2)-1),name="Krizalid"	&&enemynear(var(2)-1),authorname="Nyankoro"	&&enemynear(var(2)-1),stateno=3300	;´İÄŞµÌŞ¥´ÃŞİ
trigger31	=enemynear(var(2)-1),name="Krizalid"	&&enemynear(var(2)-1),authorname="Nyankoro"	&&enemynear(var(2)-1),stateno=[3200,3210]	;´İÄŞµÌŞ¥ÍÌŞİ
trigger32	=enemynear(var(2)-1),name="Krizalid"	&&enemynear(var(2)-1),authorname="Nyankoro"	&&enemynear(var(2)-1),stateno=3510	;Ì¨±°½¥ºİÌ×¸ŞÚ°¼®İ
trigger33	=enemynear(var(2)-1),name="ikemen"	&&enemynear(var(2)-1),authorname="otto"	&&enemynear(var(2)-1),stateno=3102	;A-bomb
trigger34	=enemynear(var(2)-1),name="ikemen"	&&enemynear(var(2)-1),authorname="otto"	&&enemynear(var(2)-1),stateno=1020	;‰Î‰Š•úËŠí
trigger35	=enemynear(var(2)-1),name="Dan Hibiki"	&&enemynear(var(2)-1),authorname="Phantom.of.the.Server"	&&enemynear(var(2)-1),stateno=4001	;Š¿“¹
trigger36	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&((enemynear(var(2)-1),stateno=[3005,3007])	||enemynear(var(2)-1),stateno=3017)	;Heaven's Sword
trigger37	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&(enemynear(var(2)-1),stateno=3302	||enemynear(var(2)-1),stateno=3304)	;Sun Cry
trigger38	=enemynear(var(2)-1),name="Heidern"	&&enemynear(var(2)-1),authorname="Tatsu"	&&enemynear(var(2)-1),stateno=4510	;Ê²ÃŞÙİ´½¹°Ìß
trigger39	=enemynear(var(2)-1),name="Heidern"	&&enemynear(var(2)-1),authorname="Tatsu"	&&enemynear(var(2)-1),stateno=3140	;Ê²ÃŞÙİ´İÄŞ
trigger40	=(enemynear(var(2)-1),name="ROBO-KY1"	||enemynear(var(2)-1),name="ROBO-KY2"	||enemynear(var(2)-1),name="ROBO-KY3")	&&enemynear(var(2)-1),authorname="ukege"	&&enemynear(var(2)-1),stateno=3600	;13¶²’e
trigger41	=enemynear(var(2)-1),name="ROBO-KY2"	&&enemynear(var(2)-1),authorname="ukege"	&&enemynear(var(2)-1),stateno=[2500,2501]	;À²×İÚ²ÌŞver.ƒÀ
trigger42	=enemynear(var(2)-1),name="Q"	&&enemynear(var(2)-1),authorname="Umihei"	&&enemynear(var(2)-1),stateno=2471	;”š”­‚ğ”º‚¤‘ÅŒ‚‚â•ßŠl(‰¼)¨‘ÅŒ‚
trigger43	=enemynear(var(2)-1),name="Q"	&&enemynear(var(2)-1),authorname="Umihei"	&&enemynear(var(2)-1),stateno=2511	;”š”­‚ğ”º‚¤‘ÅŒ‚‚â•ßŠl(‰¼)¨•ßŠl
trigger44	=enemynear(var(2)-1),name="cvscommando"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3000	;·¬ÌßÃİÌ§²±°
trigger45	=enemynear(var(2)-1),name="cvsjill"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3100	;Û¹¯Ä×İÁ¬°
trigger46	=enemynear(var(2)-1),name="cvskuroko"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3001	;•q‘åÖ“ã
trigger47	=(enemynear(var(2)-1),name="cvskyo"	||enemynear(var(2)-1),name="cvskyo_normal"	||enemynear(var(2)-1),name="cvskyo_ex")	&&enemynear(var(2)-1),authorname="Warusaki3"
trigger48	=enemynear(var(2)-1),name="cvsrolento"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3100	;Ï²İ½²°Êß°
helpertype=normal
name="lose"
ID=6030
pos=9999,9999
postype=back
facing=1
stateno=6036
keyctrl=0
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

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
trigger1=loseko
trigger1=!var(2)
trigger2=winko
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
var(3) = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[State -2]
type = varset
trigger1 = var(8) = 0
trigger2 = Teammode = simul || enemy,Teammode = simul
var(3) = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999


;===========================================================================
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
value=-2000;››››@©Á”ï—Ê‚Ì–ÚˆÀ‚Í‰º‹L‚É‚ ‚è‚Ü‚·B1‰ñ•ª‚ÌÁ”ï—Ê‚É‚µ‚Ä‰º‚³‚¢B
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
channel = 0

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
channel = 0

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
scale=0.4,0.4
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
scale=0.4,0.4
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;------------------------------------------

;===========================================================================
;BCƒQ[ƒWì
[State -2]
type = helper
triggerall = roundstate = 2 
trigger1 = !Numhelper(7800)
trigger1 = 1
stateno = 7800
id = 7800
pos = 50,15;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
size.xscale = 1
size.yscale = 1

[state -2 , •à•º”E‰Šú’l]
type = VarSet
trigger1 = roundstate = 0
var(40) = 60

[state -2 , •à•º”EÅ’á’l]
type = VarSet
trigger1 = var(40) < 1
var(40) = 0

[state -2 , •à•º”EÅ‘å’l]
type = VarSet
trigger1 = var(40) > 60
var(40) = 60

[state -2 , íÔ”E‰Šú’l]
type = VarSet
trigger1 = roundstate = 0
var(44) = 7

[state -2 , íÔ”EÅ’á’l]
type = VarSet
trigger1 = var(44) < 1
var(44) = 0

[state -2 , íÔ”EÅ‘å’l]
type = VarSet
trigger1 = var(44) > 7
var(44) = 7

[state -2 , ƒAƒpƒbƒ`”E‰Šú’l]
type = VarSet
trigger1 = roundstate = 0
var(42) = 4

[state -2 , ƒAƒpƒbƒ`”EÅ’á’l]
type = VarSet
trigger1 = var(42) < 1
var(42) = 0

[state -2 , ƒAƒpƒbƒ`”EÅ‘å’l]
type = VarSet
trigger1 = var(42) > 4
var(42) = 4
;===========================================================================

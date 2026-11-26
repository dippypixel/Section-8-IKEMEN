[statedef -2]

;===========================================================================

[state -2,チートスイッチ]
type=varset
trigger1=1
var(0)=0
;+1:全攻撃中完全無敵
;+2:非攻撃中ゲージ回復
;+4:非喰らい中体力回復
;+8:全攻撃ガー不
;+16:攻撃のヒット数が大幅にアップ
;+32:コンボ補正なし
ignorehitpause=1

;===========================================================================
;チートスイッチ
[state -2,全攻撃中無敵]
type=nothitby
triggerall=var(0)&1
trigger1=movetype=a
value=sca
ignorehitpause=1

[state -2,ゲージ回復]
type=poweradd
triggerall=var(0)&2
triggerall=roundstate=2
trigger1=movetype!=a
value=1
ignorehitpause=1

[state -2,体力回復]
type=lifeadd
triggerall=var(0)&4
triggerall=roundstate=2
trigger1=movetype!=h
value=1
ignorehitpause=1

[state -2,ガー不]
type=assertspecial
trigger1=var(0)&8
flag=unguardable
ignorehitpause=1

;===========================================================================

[state -2,フライング対策]
type=lifeset
triggerall=roundstate<2
triggerall=numenemy
trigger1=(teammode=turns)||(enemy,teammode=turns)
trigger1=roundsexisted=0
trigger2=!(teammode=turns)
trigger2=!(enemy,teammode=turns)
value=lifemax

;被ダメのゲージ？ありがたくもらっておくよ

[state -2,フライングする不届き者へのペナルティ]
type=poweradd
triggerall=roundstate<2
trigger1=movetype=h
value=gethitvar(damage)*100

;===========================================================================
;吸血鬼補正
[state -2,攻撃力の標準設定]
type=varset
trigger1=!fvar(39)
fvar(39)=1
ignorehitpause=1

[state -2,吸血鬼判定]
type=varset
triggerall=numenemy
trigger1	=enemy,name="03ria-red"	;03RIA-紅
trigger2	=enemy,name="dio"	;DIO
trigger3	=enemy,name="Sion Eltnam Atlasia [Vampire]"	;Vシオン
trigger4	=enemy,name="Sion TATARI"	;Vシオン
trigger5	=enemy,name="Sion_TATARI"	;Vシオン
trigger6	=enemy,name="raigu's Alucard"	;アルカード
trigger7	=enemy,name="Arcueid Brunestud"	;アルク
trigger8	=enemy,name="Arcueid_Brunestud"	;アルク
trigger9	=enemy,name="W ARCUEID"	;アルク＆ワルク
trigger10	=enemy,name="vanilla ice"	;ヴァニラ
trigger11	=enemy,name="vanillaice"	;ヴァニラ
trigger12	=enemy,name="Yumiduka_Satsuki"	;さつき
trigger13	=enemy,name="Sakuya Izayoi"	;シャドウ咲夜
trigger13	=enemy,authorname="isamusi"
trigger14	=enemy,name="SLAYER"	;スレイヤー
trigger15	=enemy,name="Dark Arcueid"	;ダークアルク
trigger16	=enemy,name="Dark Arcueid mk2"	;ダークアルクmk2
trigger17	=enemy,name="Demitri"	;デミトリ
trigger18	=enemy,name="Demitri-Ex"	;デミトリ
trigger19	=enemy,name="nukesaku"	;ヌケサク
trigger20	=enemy,name="DIO BRANDO"	;ハイDIO
trigger21	=enemy,name="final dio"	;ファイナルDIO
trigger22	=enemy,name="Final_Sakuya"	;ファイナル咲夜
trigger23	=enemy,name="Flandre_Scarlet"	;フラン
trigger24	=enemy,name="mora"	;モーラ
trigger25	=enemy,name="Remilia Scarlet"	;レミリア
trigger26	=enemy,name="Remilia_Scarlet"	;レミリア
trigger27	=enemy,name="Michael_Roa_Valdamjong"	;ロア
trigger28	=enemy,name="RaveEx"	;ロードレイヴナス
trigger29	=enemy,name="warakia"	;ワラキア
trigger30	=enemy,name="Warachia"	;ワラキア
trigger31	=enemy,name="Warakia"	;ワラキア
trigger32	=enemy,name="Red Arcueid"	;ワルク
trigger33	=enemy,name="Red_Arcueid"	;ワルク
trigger34	=enemy,name="WARCUEID"	;ワルク
trigger35	=enemy,name="wantixen"	;ワンチェン
trigger36	=enemy,name="Izayoi Sakuya Brando"	;咲夜ブランドー
trigger37	=enemy,name="seras"	;婦警
trigger38	=enemy,name="Shadow Dio"	;影DIO
trigger39	=enemy,name="Sakuya Shadow Brando"	;影ブランドー
trigger40	=enemy,name="Inferis Chaos"	;教授
trigger41	=enemy,name="Nrvnqsr_Chaos"	;教授
trigger42	=enemy,name="a"	;旦那
trigger43	=enemy,name="alucard"	;旦那
trigger44	=enemy,name="Akaitsuki"	;朱い月
trigger45	=enemy,name="raigu's dracula"	;若本伯爵
trigger46	=enemy,name="Araki Hirohiko"	;荒木
trigger47	=enemy,name="satsuki EX"	;覚醒さつき
trigger48	=enemy,name="Reimu_Scarlet"	;霊夢･スカーレット
trigger49	=enemy,name="Mukuro"	;骸
;ここから下に行を増やせば対象キャラを増やせます。
fvar(39)=1.05;ここが攻撃力の変化率です。
ignorehitpause=1

;===========================================================================
;根性値
[state -2,攻撃力根性値OFF]
type=varset
trigger1=life>lifemax*0.3
fvar(1)=1
ignorehitpause=1

[state -2,攻撃力根性値1段階目]
type=varset
trigger1=life>lifemax*0.15
trigger1=life<=lifemax*0.3
fvar(1)=1.15
ignorehitpause=1

[state -2,攻撃力根性値2段階目]
type=varset
trigger1=life<=lifemax*0.15
fvar(1)=1.25
ignorehitpause=1

[state -2,防御力根性値OFF]
type=varset
trigger1=life>lifemax*0.3
fvar(2)=1
ignorehitpause=1

[state -2,防御力根性値1段階目]
type=varset
trigger1=life>lifemax*0.15
trigger1=life<=lifemax*0.3
fvar(2)=0.85
ignorehitpause=1

[state -2,防御力根性値2段階目]
type=varset
trigger1=life<=lifemax*0.15
fvar(2)=0.75
ignorehitpause=1

;===========================================================================
;コンボ補正
[state -2,コンボ補正リセット]
type=varset
triggerall=numenemy
trigger1=enemynear,movetype!=h
var(1)=0
ignorehitpause=1

[state -2,コンボ補正リセット2]
type=varset
trigger1=var(1)=0
var(3)=0
ignorehitpause=1

[state -2,コンボ補正:1倍]
type=varset
trigger1=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=[0,1]
trigger2=!var(1)
trigger3=var(0)&32
fvar(0)=1
ignorehitpause=1

[state -2,コンボ補正:0.9倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=2
fvar(0)=0.9
ignorehitpause=1

[state -2,コンボ補正:0.8倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=[3,4]
fvar(0)=0.8
ignorehitpause=1

[state -2,コンボ補正:0.7倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=[5,6]
fvar(0)=0.7
ignorehitpause=1

[state -2,コンボ補正:0.6倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=7
fvar(0)=0.6
ignorehitpause=1

[state -2,コンボ補正:0.5倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=8
fvar(0)=0.5
ignorehitpause=1

[state -2,コンボ補正:0.4倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)=9
fvar(0)=0.4
ignorehitpause=1

[state -2,コンボ補正:0.3倍]
type=varset
triggerall=!(var(0)&32)
triggerall=var(1)
trigger1=numenemy
trigger1=enemynear,gethitvar(hitcount)-var(1)+var(3)>=10
fvar(0)=0.3
ignorehitpause=1

;===========================================================================
;各種補正実行
[state -2,攻撃力変化]
type=attackmulset
trigger1=1
value=fvar(0)*fvar(1)*fvar(39)
ignorehitpause=1

[state -2,防御力変化]
type=defencemulset
trigger1=1
value=fvar(2)
ignorehitpause=1

[state -2,1発目軽減]
type=lifeadd
trigger1=gethitvar(hitcount)=1
value=floor(gethitvar(damage)*(1-fvar(2)))
ignorehitpause=1

;===========================================================================
;超必KO
[state -2,超必KO:縦斬り]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="khan"	&&enemynear(var(2)-1),authorname="bad darkness"
trigger2	=enemynear(var(2)-1),name="Vergil"	&&enemynear(var(2)-1),authorname="bugya"	&&enemynear(var(2)-1),stateno=3301	;DT兜割り
trigger3	=enemynear(var(2)-1),name="Moriya Minakata"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=12100	;活殺･乱れ雪月花
trigger4	=enemynear(var(2)-1),name="Fiona"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2010	;ｴｸｽｶﾘﾊﾞｰ
trigger5	=enemynear(var(2)-1),name="Kamui"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2010	;逝斬
trigger6	=(enemynear(var(2)-1),name="omega rugal98"	||enemynear(var(2)-1),name="Rugal2k2")	&&enemynear(var(2)-1),authorname="GONZO-"	&&(enemynear(var(2)-1),stateno=2104	||enemynear(var(2)-1),stateno=2205)	;ﾃﾞｽﾄﾗｸｼｮﾝ･ｵﾒｶﾞ
trigger7	=enemynear(var(2)-1),name="Rugal2k2"	&&enemynear(var(2)-1),authorname="GONZO-"	&&enemynear(var(2)-1),stateno=[3210,3215]	;ｼﾞｪﾉｻｲﾄﾞﾍﾙ
trigger8	=enemynear(var(2)-1),name="ZERO"	&&enemynear(var(2)-1),authorname="GONZO-"	&&((enemynear(var(2)-1),stateno=[3000,3001])	||enemynear(var(2)-1),stateno=3411)	;獄鎖斬陣
trigger9	=enemynear(var(2)-1),name="MURAKUMO"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=2513	;八紘一宇
trigger10	=enemynear(var(2)-1),name="MURAKUMO"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=2100	;特攻徹甲斬
trigger11	=enemynear(var(2)-1),name="Setsuna"	&&enemynear(var(2)-1),authorname="HSR"	&&enemynear(var(2)-1),stateno=3001	;無銘(絶)
trigger12	=enemynear(var(2)-1),name="Kamui_Tokinomiya"	&&enemynear(var(2)-1),authorname="Ina"	&&enemynear(var(2)-1),stateno=520	;逝斬
trigger13	=enemynear(var(2)-1),name="O-Adel"	&&enemynear(var(2)-1),authorname="jin"	&&(enemynear(var(2)-1),stateno=2100	||enemynear(var(2)-1),stateno=2600)	;G･ｹｰﾆｯﾋ
trigger14	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=21000	;禊
trigger15	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3000	&&enemynear(var(2)-1),var(42)=1	;人鬼｢未来永劫斬｣
trigger16	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3001	;断命剣｢冥想斬｣/断迷剣｢迷津慈航斬｣
trigger17	=(enemynear(var(2)-1),name="Clone Zero"	||enemynear(var(2)-1),name="Original Zero  ")	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=[3000,3001]	;獄鎖斬陣
trigger18	=enemynear(var(2)-1),name="Youmu-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"
trigger19	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=3110	;万法帰一刀
trigger20	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=3030	;必殺切込刀法
trigger21	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=2300	;特攻迅雷
trigger22	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3128	;屍を越え行く也C
trigger23	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3201	;死を恐れぬ心也
trigger24	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3214	;EX万鬼滅砕
trigger25	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3515	;EX万鬼滅砕改変版
trigger26	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=[3100,3110]	;斬星狼牙
trigger27	=enemynear(var(2)-1),name="johnny"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3210	;雲張の居合
trigger28	=enemynear(var(2)-1),name="johnny"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3001	;｢それが俺の名だ｣
trigger29	=enemynear(var(2)-1),name="YoumuSS"	&&enemynear(var(2)-1),authorname="Pinko"	&&enemynear(var(2)-1),stateno=2900	;秘奥義
trigger30	=enemynear(var(2)-1),name="YoumuSS"	&&enemynear(var(2)-1),authorname="Pinko"	&&enemynear(var(2)-1),stateno=3510	;絶命奥義
trigger31	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&(enemynear(var(2)-1),stateno=3121	||enemynear(var(2)-1),stateno=3150)	;Full Moon Slash
trigger32	=enemynear(var(2)-1),name="Original Zero"	&&enemynear(var(2)-1),authorname="Rin & Bat"	&&((enemynear(var(2)-1),stateno=[3000,3001])	||enemynear(var(2)-1),stateno=[3410,3411])	;獄鎖斬陣
trigger33	=enemynear(var(2)-1),name="Tenko"	&&enemynear(var(2)-1),authorname="suigin"	&&enemynear(var(2)-1),stateno=7500	;ｴｸｽｶﾘﾊﾞ
trigger34	=enemynear(var(2)-1),name="cvsg_rugal"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3100	;ｼﾞｪﾉｻｲﾄﾞ･ﾍﾌﾞﾝ
trigger35	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_ex")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3102	;天覇断空烈斬
trigger36	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_normal")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3200	;天覇凄煌斬
trigger37	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_normal")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3000	;秘奥義 天覇封神斬
trigger38	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_normal")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3310	;絶命奥義
trigger39	=enemynear(var(2)-1),name="cvshayato"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3200	;煉獄
trigger40	=enemynear(var(2)-1),name="cvshayato"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3000	;羅刹斬
trigger41	=enemynear(var(2)-1),name="cvskuroko"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3401	;黒子大乱舞
trigger42	=enemynear(var(2)-1),name="Naitou"	&&enemynear(var(2)-1),authorname="マンドラフ"	&&enemynear(var(2)-1),stateno=2200	;究極扇ｸﾞﾗｳﾝﾄﾞｽﾄﾗｲｸ
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

[state -2,超必KO:横斬り]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="Mai Kawasumi"	&&enemynear(var(2)-1),authorname="586"	&&enemynear(var(2)-1),stateno=[6103,6123]	;麦穂薙
trigger2	=enemynear(var(2)-1),name="Vergil"	&&enemynear(var(2)-1),authorname="bugya"	&&enemynear(var(2)-1),stateno=3202	;DT疾走居合い
trigger3	=enemynear(var(2)-1),name="Ukyo Tachibana"	&&enemynear(var(2)-1),authorname="buyon"	&&enemynear(var(2)-1),stateno=4170	;夢想残光霞
trigger4	=enemynear(var(2)-1),name="Ukyo Tachibana"	&&enemynear(var(2)-1),authorname="buyon"	&&enemynear(var(2)-1),stateno=4270	;夢想残光霞64
trigger5	=enemynear(var(2)-1),name="Moriya Minakata"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=11100	;活殺･一六夜月華
trigger6	=enemynear(var(2)-1),name="Fiona"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2020	;ｾｲｸﾘｯﾄﾞﾊﾟﾆｯｼｭ
trigger7	=enemynear(var(2)-1),name="Kamui"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2006	;死祀
trigger8	=enemynear(var(2)-1),name="Kamui"	&&enemynear(var(2)-1),authorname="Drowin arcana"	&&enemynear(var(2)-1),stateno=2001	;無怨
trigger9	=enemynear(var(2)-1),name="goenitz"	&&enemynear(var(2)-1),authorname="GONZO-"	&&enemynear(var(2)-1),stateno=2530	;ﾌﾙﾌﾞﾗｽﾄ
trigger10	=enemynear(var(2)-1),name="KAGUYA HOURAISAN"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=3000	;儚月閃
trigger11	=enemynear(var(2)-1),name="KAGUYA HOURAISAN"	&&enemynear(var(2)-1),authorname="HM"	&&enemynear(var(2)-1),stateno=3050	;斬月閃
trigger12	=enemynear(var(2)-1),name="Kamui_Tokinomiya"	&&enemynear(var(2)-1),authorname="Ina"	&&enemynear(var(2)-1),stateno=532	;死祀
trigger13	=enemynear(var(2)-1),name="Kamui_Tokinomiya"	&&enemynear(var(2)-1),authorname="Ina"	&&enemynear(var(2)-1),stateno=501	;無怨
trigger14	=enemynear(var(2)-1),name="NEODIO"	&&enemynear(var(2)-1),authorname="jin"	&&enemynear(var(2)-1),stateno=4010	;ｱﾙﾃｨﾒｯﾄｲﾘｭｰｼﾞｮﾝ
trigger15	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3000	&&enemynear(var(2)-1),var(42)=0	;人符｢現世斬｣
trigger16	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3100	;｢西行春風斬｣
trigger17	=enemynear(var(2)-1),name="Alice-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&((enemynear(var(2)-1),stateno=[3100,3101])	||enemynear(var(2)-1),stateno=[3600,3601])	;ﾄﾞｰﾙｽﾞｽﾃｯﾌﾟ
trigger18	=enemynear(var(2)-1),name="Fritz"	&&enemynear(var(2)-1),authorname="Mikita"	&&enemynear(var(2)-1),stateno=2200	;特攻疾駆
trigger19	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3110	;屍を越え行く也A
trigger20	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3120	;屍を越え行く也B
trigger21	=enemynear(var(2)-1),name="Hibiki Takane"	&&enemynear(var(2)-1),authorname="Mouser"	&&enemynear(var(2)-1),stateno=3001	;発勝する神気也
trigger22	=enemynear(var(2)-1),name="johnny"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3501	;214214HS
trigger23	=enemynear(var(2)-1),name="Colonel"	&&enemynear(var(2)-1),authorname="peg"	&&enemynear(var(2)-1),stateno=3001	;居合い
trigger24	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&enemynear(var(2)-1),stateno=3430	;Flash Burst
trigger25	=(enemynear(var(2)-1),name="ROBO-KY1"	||enemynear(var(2)-1),name="ROBO-KY2")	&&enemynear(var(2)-1),authorname="ukege"	&&enemynear(var(2)-1),stateno=3210	;ｶｲ心の一撃
trigger26	=enemynear(var(2)-1),name="blackpolnareff"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3001	;絶対に負けんのだｯ
trigger27	=enemynear(var(2)-1),name="cvsguile"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3200	;ｿﾆｯｸﾊﾘｹｰﾝ
trigger28	=enemynear(var(2)-1),name="cvshayato"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3301	;裏羅刹斬
trigger29	=enemynear(var(2)-1),name="Nanaya_Shiki"	&&enemynear(var(2)-1),authorname="⑨"	&&enemynear(var(2)-1),stateno=3101	;極死･七夜
trigger30	=enemynear(var(2)-1),name="Nanaya_Shiki"	&&enemynear(var(2)-1),authorname="⑨"	&&enemynear(var(2)-1),stateno=3001	;閃鞘･迷獄沙門
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

[state -2,超必KO:バラバラ]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="Oswald"	&&enemynear(var(2)-1),authorname="ahuron"
trigger2	=enemynear(var(2)-1),name="Alice Margatroid"	&&enemynear(var(2)-1),authorname="ATUSI"	&&enemynear(var(2)-1),stateno=2401	;紅き紅魔館の紅茶
trigger3	=enemynear(var(2)-1),name="Vergil"	&&enemynear(var(2)-1),authorname="bugya"	&&enemynear(var(2)-1),stateno=3502	;絶刀
trigger4	=enemynear(var(2)-1),name="Ukyo Tachibana"	&&enemynear(var(2)-1),authorname="buyon"	&&enemynear(var(2)-1),stateno=1276	;神荒れ
trigger5	=enemynear(var(2)-1),name="Moriya Minakata"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=14070	;活殺･月読み
trigger6	=enemynear(var(2)-1),name="Setsuna"	&&enemynear(var(2)-1),authorname="HSR"	&&enemynear(var(2)-1),stateno=3131	;無銘(極ﾉ追)
trigger7	=enemynear(var(2)-1),name="Shadow Dio"	&&enemynear(var(2)-1),authorname="kikurage"	&&enemynear(var(2)-1),stateno=4615	;死の忘却
trigger8	=enemynear(var(2)-1),name="Youmu_Konpaku"	&&enemynear(var(2)-1),authorname="Kurogane"	&&enemynear(var(2)-1),stateno=3101	;｢朱雀飛天之舞｣
trigger9	=enemynear(var(2)-1),name="Alice-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=4015	;MAX2
trigger10	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=[3000,3030]	;万鬼滅砕
trigger11	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&(enemynear(var(2)-1),stateno=3110	||enemynear(var(2)-1),stateno=3551)	;万鬼滅砕改変版
trigger12	=enemynear(var(2)-1),name="YoumuSS"	&&enemynear(var(2)-1),authorname="Pinko"	&&enemynear(var(2)-1),stateno=3020	;一閃
trigger13	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&enemynear(var(2)-1),stateno=3441	;Flash Burst(強化版)
trigger14	=enemynear(var(2)-1),name="Tenko"	&&enemynear(var(2)-1),authorname="suigin"	&&enemynear(var(2)-1),stateno=7410	;ﾊﾞﾗﾊﾞﾗに引き裂いてやろうか?EX
trigger15	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3501	;死の忘却
trigger16	=enemynear(var(2)-1),name="Nanaya_Shiki"	&&enemynear(var(2)-1),authorname="⑨"	&&enemynear(var(2)-1),stateno=3051	;閃鞘･迷獄沙門(AAD)
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

[state -2,超必KO:蜂の巣]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="Mishio Amano"	&&enemynear(var(2)-1),authorname="586"	&&enemynear(var(2)-1),stateno=[6100,6123]	;百鬼焦閃
trigger2	=enemynear(var(2)-1),name="JAGI"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=[2100,2105]	;北斗羅漢撃
trigger3	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=[2200,2201]	;回転型突貫奥技･螺旋
trigger4	=enemynear(var(2)-1),name="Alice Margatroid"	&&enemynear(var(2)-1),authorname="ATUSI"	&&enemynear(var(2)-1),stateno=2101	;ﾄﾞｰﾙｽﾞﾃｲｸｵﾌ
trigger5	=enemynear(var(2)-1),name="washizuka"	&&enemynear(var(2)-1),authorname="DALA arranged by Ildanaf"	&&enemynear(var(2)-1),stateno=11040	;真･狼牙
trigger6	=enemynear(var(2)-1),name="Sakuya Izayoi"	&&enemynear(var(2)-1),authorname="isamusi"	&&enemynear(var(2)-1),stateno=8606	;罪符｢ﾊﾟﾆｯｼｭﾒｲﾄﾞ｣
trigger7	=enemynear(var(2)-1),name="Polnareff"	&&enemynear(var(2)-1),authorname="Izumo"
trigger8	=enemynear(var(2)-1),name="NEODIO"	&&enemynear(var(2)-1),authorname="jin"	&&(enemynear(var(2)-1),stateno=3010	||enemynear(var(2)-1),stateno=3510)	;ｱﾙﾃｨﾒｯﾄﾋﾞｰｽﾄ
trigger9	=enemynear(var(2)-1),name="Shadow Dio"	&&enemynear(var(2)-1),authorname="kikurage"	&&enemynear(var(2)-1),stateno=4030	;ﾊﾟﾆｯｼｭﾒﾝﾄ
trigger10	=enemynear(var(2)-1),name="Alice-KOF"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&(enemynear(var(2)-1),stateno=3010	||enemynear(var(2)-1),stateno=3510)	;滅多切りｼｬﾝﾊｰｲ
trigger11	=enemynear(var(2)-1),name="Young Joseph +"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=4011	;ﾌﾞｯ壊すほどｼｭｰﾄ
trigger12	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3401	;当身
trigger13	=enemynear(var(2)-1),name="chipp_arrange"	&&enemynear(var(2)-1),authorname="muteki"	&&enemynear(var(2)-1),stateno=3300	;破翼落鳳
trigger14	=enemynear(var(2)-1),name="Shadow DIO"	&&enemynear(var(2)-1),authorname="Orochi Herman"	&&enemynear(var(2)-1),stateno=2206	;ﾊﾟﾆｯｼｭﾒﾝﾄ
trigger15	=enemynear(var(2)-1),name="petshop"	&&enemynear(var(2)-1),authorname="rei"	&&enemynear(var(2)-1),stateno=3000	;ｷﾞｶﾞﾌﾘｰｿﾞﾝ
trigger16	=enemynear(var(2)-1),name="petshop"	&&enemynear(var(2)-1),authorname="rei"	&&enemynear(var(2)-1),stateno=3210	;番長の猛攻
trigger17	=enemynear(var(2)-1),name="DIO BRANDO"	&&enemynear(var(2)-1),authorname="Shio"	&&enemynear(var(2)-1),stateno=4000	;ﾁｪｯｸﾒｲﾄだｯ
trigger18	=enemynear(var(2)-1),name="blackpolnareff"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3101	;ﾀﾞﾒ押しと言うやつだｯ
trigger19	=enemynear(var(2)-1),name="dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3653	;DIOの『世界』
trigger20	=enemynear(var(2)-1),name="dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3501	||enemynear(var(2)-1),stateno=3552)	;ﾊﾟﾆｯｼｭﾒﾝﾄ
trigger21	=(enemynear(var(2)-1),name="dio"	||enemynear(var(2)-1),name="final dio")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3000	||enemynear(var(2)-1),stateno=3050)	;ﾁｪｯｸﾒｲﾄだｯ
trigger22	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3001	;ﾊﾟﾆｯｼｭﾒﾝﾄ
trigger23	=(enemynear(var(2)-1),name="Hol horse"	||enemynear(var(2)-1),name="Hol horse & Boingo")	&&enemynear(var(2)-1),authorname="y.y"	&&enemynear(var(2)-1),stateno=[3000,3005]	;ぶちまけろｯ!
trigger24	=enemynear(var(2)-1),name="ザ･ワールド"	&&enemynear(var(2)-1),authorname="ホタリュソ"	&&enemynear(var(2)-1),stateno=2000	;ﾁｪｯｸﾒｲﾄだｯ!
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

[state -2,超必KO:血まみれ]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="kirby"	&&enemynear(var(2)-1),authorname="BIRD"	&&enemynear(var(2)-1),stateno=2331	;ﾍﾟｲﾝﾄ
trigger2	=enemynear(var(2)-1),name="Yagami-AKOF"	&&enemynear(var(2)-1),authorname="jin"	&&enemynear(var(2)-1),stateno=3010	;禁千参百弐拾伍式･紅散華
trigger3	=enemynear(var(2)-1),name="Yagami-AKOF"	&&enemynear(var(2)-1),authorname="jin"	&&enemynear(var(2)-1),stateno=2110	;血の暴走
trigger4	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=22003	;…!!
trigger5	=enemynear(var(2)-1),name="Shadow Dio"	&&enemynear(var(2)-1),authorname="kikurage"	&&(enemynear(var(2)-1),stateno=4400	||enemynear(var(2)-1),numhelper(4410))	;ｶﾘｽﾏ!
trigger6	=enemynear(var(2)-1),name="Ryuji Yamazaki"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=4010	;…!!
trigger7	=enemynear(var(2)-1),name="Shadow DIO"	&&enemynear(var(2)-1),authorname="Orochi Herman"	&&(enemynear(var(2)-1),stateno=2101	||enemynear(var(2)-1),numhelper(2101))	;ｶﾘｽﾏ!
trigger8	=enemynear(var(2)-1),name="DIO BRANDO"	&&enemynear(var(2)-1),authorname="Shio"	&&enemynear(var(2)-1),stateno=3310	;血の召喚
trigger9	=(enemynear(var(2)-1),name="cvshaohmaru"	||enemynear(var(2)-1),name="cvshaohmaru_ex")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3320	;絶命奥義
trigger10	=(enemynear(var(2)-1),name="dio"	||enemynear(var(2)-1),name="final dio")	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3302	||enemynear(var(2)-1),stateno=3352)	;血の召喚
trigger11	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3451	;EXTRACT循環交換
trigger12	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),stateno=3300	||enemynear(var(2)-1),numhelper(7700)	||enemynear(var(2)-1),numhelper(7701))	;ｶﾘｽﾏ!
trigger13	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),numhelper(7702)	||enemynear(var(2)-1),numhelper(7703)	||enemynear(var(2)-1),numhelper(7704))	;ｶﾘｽﾏ!
trigger14	=enemynear(var(2)-1),name="shadow dio"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&(enemynear(var(2)-1),numhelper(7705)	||enemynear(var(2)-1),numhelper(7706)	||enemynear(var(2)-1),numhelper(7707))	;ｶﾘｽﾏ!
trigger15	=enemynear(var(2)-1),name="Hol horse"	&&enemynear(var(2)-1),authorname="y.y"	&&enemynear(var(2)-1),stateno=3010	;最強のｺﾝﾋﾞ
trigger16	=enemynear(var(2)-1),name="Yumiduka_Satsuki"	&&enemynear(var(2)-1),authorname="⑨"	&&enemynear(var(2)-1),stateno=3001	;怒ったんだから……!
trigger17	=enemynear(var(2)-1),name="Yumiduka_Satsuki"	&&enemynear(var(2)-1),authorname="⑨"	&&enemynear(var(2)-1),stateno=3052	;怒ったんだから……!(AAD)
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

[state -2,超必KO:爆発]
type=helper
triggerall=!(teammode=simul)
triggerall=roundstate=3
triggerall=loseko
triggerall=var(2)
triggerall=!numhelper(6030)
triggerall=numenemy
trigger1	=enemynear(var(2)-1),name="dc_stan"	&&enemynear(var(2)-1),authorname="1/8192"
trigger2	=enemynear(var(2)-1),name="Kyo Kusanagi"	&&enemynear(var(2)-1),authorname="ahuron"
trigger3	=enemynear(var(2)-1),name="Syo Kirishima"	&&enemynear(var(2)-1),authorname="ahuron"	&&enemynear(var(2)-1),stateno=2006	;ｾｸｼｬﾙ･ｷﾘｼﾏ･ﾀﾞｲﾅﾏｲﾄ
trigger4	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=2100	;拡散型抜手刀奥技･絶影
trigger5	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=2500	;最終型抜手刀秘技･燐光
trigger6	=enemynear(var(2)-1),name="Nameless"	&&enemynear(var(2)-1),authorname="Ahuron"	&&enemynear(var(2)-1),stateno=2000	;閃光型抜手刀奥技･灼鳳
trigger7	=enemynear(var(2)-1),name="order-Sol=Badguy"	&&enemynear(var(2)-1),authorname="Akutagawa"
trigger8	=enemynear(var(2)-1),name="K9999"	&&enemynear(var(2)-1),authorname="BLACK"	&&enemynear(var(2)-1),stateno=[3010,3015]	;てめぇも往っちまえ!!
trigger9	=enemynear(var(2)-1),name="kill"	&&enemynear(var(2)-1),authorname="BLACK"
trigger10	=enemynear(var(2)-1),name="Saisyu Kusanagi"	&&enemynear(var(2)-1),authorname="David Demianoff"
trigger11	=enemynear(var(2)-1),name="Saisyu Kusanagi"	&&enemynear(var(2)-1),authorname="David Demianoff & GoD_Ryu"
trigger12	=enemynear(var(2)-1),name="IGNIZ"	&&enemynear(var(2)-1),authorname="GONZO-"	&&enemynear(var(2)-1),stateno=[2300,2302]	;ｴﾝﾄﾞ･ｵﾌﾞ･ｶﾞｲｱ
trigger13	=enemynear(var(2)-1),name="K'"	&&enemynear(var(2)-1),authorname="Hazakura"
trigger14	=enemynear(var(2)-1),name="Avdul"	&&enemynear(var(2)-1),authorname="Izumo"
trigger15	=enemynear(var(2)-1),name="Billy Kane"	&&enemynear(var(2)-1),authorname="J.Lee & GoD_Ryu"	&&enemynear(var(2)-1),stateno=1860	;MAX超火炎旋風棍
trigger16	=enemynear(var(2)-1),name="Billy Kane"	&&enemynear(var(2)-1),authorname="J.Lee & GoD_Ryu"	&&enemynear(var(2)-1),stateno=6003	;ﾗｲｱｰｴﾚﾒﾝﾀﾙ 
trigger17	=enemynear(var(2)-1),name="Billy Kane"	&&enemynear(var(2)-1),authorname="J.Lee & GoD_Ryu"	&&enemynear(var(2)-1),stateno=[1800,1850]	;超火炎旋風棍
trigger18	=enemynear(var(2)-1),name="Shingo Yabuki"	&&enemynear(var(2)-1),authorname="JFCT555"	&&enemynear(var(2)-1),stateno=3650	;K-Boom!
trigger19	=enemynear(var(2)-1),name="Shingo Yabuki"	&&enemynear(var(2)-1),authorname="JFCT555"	&&enemynear(var(2)-1),stateno=[3610,3611]	;ﾊﾞｰﾆﾝｸﾞ
trigger20	=(enemynear(var(2)-1),name="CloneKyo"	||enemynear(var(2)-1),name="Kyo-1"	||enemynear(var(2)-1),name="Kyo-2")	&&enemynear(var(2)-1),authorname="jin"
trigger21	=enemynear(var(2)-1),name="EX-Kyo"	&&enemynear(var(2)-1),authorname="jin"
trigger22	=enemynear(var(2)-1),name="KUSANAGI"	&&enemynear(var(2)-1),authorname="jin"
trigger23	=enemynear(var(2)-1),name="Kyo"	&&enemynear(var(2)-1),authorname="jin"
trigger24	=enemynear(var(2)-1),name="Flamme"	&&enemynear(var(2)-1),authorname="Juke Kisaragi"
trigger25	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=[4020,4023]	;ｴﾝﾄﾞ･ｵﾌﾞ･ｴﾃﾞﾝ
trigger26	=enemynear(var(2)-1),name="OGRE"	&&enemynear(var(2)-1),authorname="JUN"	&&enemynear(var(2)-1),stateno=2011	;ﾃﾞｽﾍﾟﾚｲﾄ･ｵｰﾊﾞｰﾄﾞﾗｲﾌﾞ
trigger27	=enemynear(var(2)-1),name="Young Joseph +"	&&enemynear(var(2)-1),authorname="Men'sClub"	&&enemynear(var(2)-1),stateno=3100	;ｴｲｼﾞｬの赤石
trigger28	=enemynear(var(2)-1),name="sol"	&&enemynear(var(2)-1),authorname="muteki"
trigger29	=enemynear(var(2)-1),name="kevin"	&&enemynear(var(2)-1),authorname="NHK"
trigger30	=enemynear(var(2)-1),name="Krizalid"	&&enemynear(var(2)-1),authorname="Nyankoro"	&&enemynear(var(2)-1),stateno=3300	;ｴﾝﾄﾞｵﾌﾞ･ｴﾃﾞﾝ
trigger31	=enemynear(var(2)-1),name="Krizalid"	&&enemynear(var(2)-1),authorname="Nyankoro"	&&enemynear(var(2)-1),stateno=[3200,3210]	;ｴﾝﾄﾞｵﾌﾞ･ﾍﾌﾞﾝ
trigger32	=enemynear(var(2)-1),name="Krizalid"	&&enemynear(var(2)-1),authorname="Nyankoro"	&&enemynear(var(2)-1),stateno=3510	;ﾌｨｱｰｽ･ｺﾝﾌﾗｸﾞﾚｰｼｮﾝ
trigger33	=enemynear(var(2)-1),name="ikemen"	&&enemynear(var(2)-1),authorname="otto"	&&enemynear(var(2)-1),stateno=3102	;A-bomb
trigger34	=enemynear(var(2)-1),name="ikemen"	&&enemynear(var(2)-1),authorname="otto"	&&enemynear(var(2)-1),stateno=1020	;火炎放射器
trigger35	=enemynear(var(2)-1),name="Dan Hibiki"	&&enemynear(var(2)-1),authorname="Phantom.of.the.Server"	&&enemynear(var(2)-1),stateno=4001	;漢道
trigger36	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&((enemynear(var(2)-1),stateno=[3005,3007])	||enemynear(var(2)-1),stateno=3017)	;Heaven's Sword
trigger37	=enemynear(var(2)-1),name="Dragon Claw"	&&enemynear(var(2)-1),authorname="Reu"	&&(enemynear(var(2)-1),stateno=3302	||enemynear(var(2)-1),stateno=3304)	;Sun Cry
trigger38	=enemynear(var(2)-1),name="Heidern"	&&enemynear(var(2)-1),authorname="Tatsu"	&&enemynear(var(2)-1),stateno=4510	;ﾊｲﾃﾞﾙﾝｴｽｹｰﾌﾟ
trigger39	=enemynear(var(2)-1),name="Heidern"	&&enemynear(var(2)-1),authorname="Tatsu"	&&enemynear(var(2)-1),stateno=3140	;ﾊｲﾃﾞﾙﾝｴﾝﾄﾞ
trigger40	=(enemynear(var(2)-1),name="ROBO-KY1"	||enemynear(var(2)-1),name="ROBO-KY2"	||enemynear(var(2)-1),name="ROBO-KY3")	&&enemynear(var(2)-1),authorname="ukege"	&&enemynear(var(2)-1),stateno=3600	;13ｶｲ弾
trigger41	=enemynear(var(2)-1),name="ROBO-KY2"	&&enemynear(var(2)-1),authorname="ukege"	&&enemynear(var(2)-1),stateno=[2500,2501]	;ﾀｲﾗﾝﾚｲﾌﾞver.β
trigger42	=enemynear(var(2)-1),name="Q"	&&enemynear(var(2)-1),authorname="Umihei"	&&enemynear(var(2)-1),stateno=2471	;爆発を伴う打撃や捕獲(仮)→打撃
trigger43	=enemynear(var(2)-1),name="Q"	&&enemynear(var(2)-1),authorname="Umihei"	&&enemynear(var(2)-1),stateno=2511	;爆発を伴う打撃や捕獲(仮)→捕獲
trigger44	=enemynear(var(2)-1),name="cvscommando"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3000	;ｷｬﾌﾟﾃﾝﾌｧｲｱｰ
trigger45	=enemynear(var(2)-1),name="cvsjill"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3100	;ﾛｹｯﾄﾗﾝﾁｬｰ
trigger46	=enemynear(var(2)-1),name="cvskuroko"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3001	;黒子大蛇薙
trigger47	=(enemynear(var(2)-1),name="cvskyo"	||enemynear(var(2)-1),name="cvskyo_normal"	||enemynear(var(2)-1),name="cvskyo_ex")	&&enemynear(var(2)-1),authorname="Warusaki3"
trigger48	=enemynear(var(2)-1),name="cvsrolento"	&&enemynear(var(2)-1),authorname="Warusaki3"	&&enemynear(var(2)-1),stateno=3100	;ﾏｲﾝｽｲｰﾊﾟｰ
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

[state -2,超必KO:ノーマル]
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

[state -2,通常敗北]
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

[state -2,超必感知変数リセット]
type=varset
triggerall=var(2)
triggerall=numenemy
trigger1=enemynear(var(2)-1),movetype!=a
trigger2=enemynear(var(2)-1),hitdefattr=sca,na,np,nt,sa,sp,st
var(2)=0
ignorehitpause=1

[state -2,超必感知変数セット1]
type=varset
triggerall=numenemy
triggerall=enemynear(0),movetype=a
triggerall=!(enemynear(0),hitdefattr=sca,na,np,nt,sa,sp,st)
trigger1=enemynear(0),hitdefattr=sca,ha,hp,ht
trigger2=enemynear(0),stateno=[3000,4999]
trigger3=enemynear(0),stateno>=6000
var(2)=1
ignorehitpause=1

[state -2,超必感知変数セット2]
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

[state -2,ハイジャンプ判定]
type=varadd
trigger1=var(5)>0
var(5)=-1

;===========================================================================

[state -2,デバッグ用表示]
type=displaytoclipboard
trigger1=1
text="%d %d %.4f %.2f"
params=var(0),var(2),fvar(0)*fvar(1)*fvar(39),fvar(2)
ignorehitpause=1

[state -2,デバッグ用表示2]
type=appendtoclipboard
trigger1=numenemy
text=" %d"
params=ifelse(var(1),enemynear,gethitvar(hitcount)-var(1)+var(3)+1,0)
ignorehitpause=1

;===========================================================================
;ローカルルール
;-------------------------------------
;毒効果（ドロウィンアルカナ）改
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
;【⑨氏－赤主秋葉】「獣を焦がす」
[State -2]
Type = LifeAdd
triggerall = numenemy
TriggerAll = Enemy,AuthorName = "⑨" && Enemy,Name = "Akiha_Vermilion"
Trigger1 = Enemy,Var(47) = 1
Value = -5
Kill = 0

[State -2]
Type = PowerAdd
triggerall = numenemy
TriggerAll = Enemy,AuthorName = "⑨" && Enemy,Name = "Akiha_Vermilion"
Trigger1 = Enemy,Var(47) = 1
Value = -26
;===========================================================================
;【586氏－神尾観鈴】「不幸の塊」「観鈴ちんピンチ！」
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
;【奏貴氏‐幽々子】「无寿の夢」「无寿国への約束手形」

[State -2, LifeAdd]
Type       = LifeAdd
TriggerAll = NumEnemy           >= 1
TriggerAll = Enemy,AuthorName    = "Souki" && Enemy,Name   = "Yuyuko Saigyouji"
Trigger1   = Enemy,Var(3)        = 1       || Enemy,Var(3) = 2
Trigger1   = GameTime%6          = 0
Value      = IfElse(Enemy,Var(3) = 1, -2, -3)
Kill       = 0
;===========================================================================
;【水影氏‐小町】「脱魂の儀」

;振り向き抑制
[State pos moving]
type = AssertSpecial
triggerall = numenemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
flag = noautoturn

;移動
[State pos moving]
type = Posadd
triggerall = numenemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
x = -ceil(enemynear,fVar(24))*facing*enemynear,facing
y = -ceil(enemynear,fVar(25))*(statetype!=L)

;statetype!=A+statetype!=Lの場合強制落下stateへ
[State pos moving]
type = Changestate
triggerall = numenemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
Triggerall = (statetype != A)*(pos y!=0)*(statetype!=L)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
value = 50
;===========================================================================
;【水影氏‐優曇華】「瓦斯織物の玉」

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
;【jin氏－アッシュ】「ジェルミナール」

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

;封印時間解除
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
;【Sander71113氏－ちずる】「零技の礎」

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

;封印時間解除
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
;【MDK氏－ちずる_マキ】「零技の礎／三神技之参／洛水の神亀／簸帝之礼舞」

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

;封印時間解除
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
;【別府氏－マキ】「洛水の神亀／零技の礎」

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

;封印時間解除
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
;封印時間解除予備
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
;ジャギ「おい、そこへ座れ」対応ステート
[state ]
type=AssertSpecial
trigger1=numenemy
trigger1=movetype=H&&stateno=901&&enemynear,name="JAGI"&&enemynear,Authorname="Drowin hokuto"
flag=invisible

[state ]
type=Explod
trigger1=!numexplod(830)&&numenemy
trigger1=movetype=H&&stateno=901&&enemynear,name="JAGI"&&enemynear,Authorname="Drowin hokuto"
anim=830
ID=830
postype=p1
scale=1,1
pos=0,0
sprpriority=1
bindtime=-1
removetime=-1
shadow=-1


[state ]
type=Explod
trigger1=!numexplod(831)&&numenemy
trigger1=movetype=H&&stateno=901&&enemynear,name="JAGI"&&enemynear,Authorname="Drowin hokuto"
anim=831
ID=831
postype=p1
scale=1,1
pos=0,0
sprpriority=-1
bindtime=-1
removetime=-1
shadow=-1

[State ]
type=RemoveExplod
trigger1=numexplod(830)=1&&(anim!=6||stateno!=901||(stateno=901&&time=120))
ID=830

[State ]
type=RemoveExplod
trigger1=numexplod(831)=1&&(anim!=6||stateno!=901||(stateno=901&&time=120))
ID=831

[state ]
type=ChangeAnim
trigger1=numenemy
trigger1=movetype=H&&stateno=805&&((enemynear,name="JAGI"&&enemynear,Authorname="Ahuron"&&time>=10)||(enemynear,name="JagiMeirin"&&enemynear,Authorname="Ts"&&(time=[10,141]))||(enemynear,name="JAGI"&&enemynear,Authorname="Ts"))
value=830
;------------------------------------------
;レイ、テンシ、鈴仙･U･イナバ「投げ」対応ステート
[State ]
type=PlaySnd
triggerall=movetype=H&&numenemy
trigger1=(stateno=807&&time=1&&enemynear,name="REI"&&enemynear,authorname="ahuron")||(stateno=20020&&anim=5600&&enemynear,name="A-Rei"&&enemynear,authorname="simotsuki")||(stateno=755&&time=13&&(enemynear,name="tenshi"||enemynear,name="tenshi_rei"))
trigger2=(stateno=806&&time=1&&(enemynear,name="REIsen U Inaba"||enemynear,name="TEOC REISEN"))
value=s5000,0
persistent=0

[state ]
type=ChangeAnim
trigger1=numenemy
trigger1=movetype=H&&((stateno=20020&&anim=5600&&enemynear,name="A-Rei"&&enemynear,authorname="simotsuki")||(stateno=755&&anim=5000&&(enemynear,name="tenshi"||enemynear,name="tenshi_rei")))
value=834
persistent=0

[state ]
type=ChangeAnim
trigger1=numenemy
trigger1=stateno=806&&anim=806&&movetype=H&&(enemynear,name="REIsen U Inaba"||enemynear,name="TEOC REISEN")
value=807
persistent=0
;------------------------------------------

;右代宮縁寿 他「メタ返し＆メタ再反論」対応ステート
[state ];メタ返し＆メタ再反論～パワーゲージ消費×2
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
value=-2000;○○○○　←消費量の目安は下記にあります。1回分の消費量にして下さい。
ignorehitpause=1

[state ];メタ返し～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s19864,0
ignorehitpause=1

[state ];メタ返し～カットイン（右向き）
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

[state ];メタ返し～カットイン（左向き）
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

[state ];メタ再反論～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s19864,1
ignorehitpause=1


[state ];メタ再反論～カットイン（右向き）
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

[state ];メタ再反論～カットイン（左向き）
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

;オインゴボインゴ（毒紅茶）対応ステート
[state ];飲んどる場合かーッ
type=PlaySnd
trigger1=(anim=5557&&time=400)
value=s5557,0

[state ];飲んどる場合かーッ
type=PlaySnd
trigger1=(anim=5557&&time=500)
value=s5557,1
volume = 400
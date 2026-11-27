;-AI(CPU)-----------------------------------------------------------
[Command]
name = "cpu1"
command = x, x
time = 0

[Command]
name = "cpu2"
command = x, y
time = 0

[Command]
name = "cpu3"
command = x, z
time = 0

[Command]
name = "cpu4"
command = x, a
time = 0

[Command]
name = "cpu5"
command = x, b
time = 0

[Command]
name = "cpu6"
command = x, c
time = 0

[Command]
name = "cpu7"
command = y, x
time = 0]

[Command]
name = "cpu8"
command = y, y
time = 0

[Command]
name = "cpu9"
command = y, z
time = 0

[Command]
name = "cpu10"
command = y, a
time = 0

[Command]
name = "cpu11"
command = y, b
time = 0

[Command]
name = "cpu12"
command = y, c
time = 1

[Command]
name = "cpu13"
command = z, x
time = 0

[Command]
name = "cpu14"
command = z, y
time = 0

[Command]
name = "cpu15"
command = z, z
time = 0

[Command]
name = "cpu16"
command = z, a
time = 0

[Command]
name = "cpu17"
command = z, b
time = 0

[Command]
name = "cpu18"
command = z, c
time = 0

[Command]
name = "cpu19"
command = a, x
time = 0

[Command]
name = "cpu20"
command = a, y
time = 0

[Command]
name = "cpu21"
command = a, z
time = 0

[Command]
name = "cpu22"
command = a, a
time = 0

[Command]
name = "cpu23"
command = a, b
time = 0

[Command]
name = "cpu24"
command = a, c
time = 0

[Command]
name = "cpu25"
command = b, x
time = 0

[Command]
name = "cpu26"
command = b, y
time = 0

[Command]
name = "cpu27"
command = b, z
time = 0

[Command]
name = "cpu28"
command = b, a
time = 0

[Command]
name = "cpu29"
command = b, b
time = 0

[Command]
name = "cpu30"
command = b, c
time = 0

[Command]
name = "cpu31"
command = c, x
time = 0

[Command]
name = "cpu32"
command = c, y
time = 0

[Command]
name = "cpu33"
command = c, z
time = 0

[Command]
name = "cpu34"
command = c, a
time = 0

[Command]
name = "cpu35"
command = c, b
time = 0

[Command]
name = "cpu36"
command = c, c
time = 0

[Command]
name = "cpu37"
command = F, F
time = 0

[Command]
name = "cpu38"
command = B, B
time = 0

[Command]
name = "cpu39"
command = D, D
time = 0

[Command]
name = "cpu40"
command = D, F
time = 0

[Command]
name = "cpu41"
command = F, D
time = 0

[Command]
name = "cpu42"
command = D, B
time = 0

[Command]
name = "cpu43"
command = B, D
time = 0

[Command]
name = "cpu44"
command = F, a
time = 0

[Command]
name = "cpu45"
command = F, b
time = 0

[Command]
name = "cpu46"
command = F, c
time = 0

[Command]
name = "cpu47"
command =  F, x
time = 0

[Command]
name = "cpu48"
command =  F, y
time = 0

[Command]
name = "cpu49"
command = F, z
time = 0

[Command]
name = "cpu50"
command = F, B
time = 0

;----AI起動コマンド用(XOR・2)----
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "fwd2"
command = F
time = 1

[Command]
name = "back2"
command = B
time = 1

[Command]
name = "up2"
command = U
time = 1

[Command]
name = "down2"
command = D
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

;-----スーパーコンボ------
;===何想像してんのさ===
[command]
name = "nanisouzou"
command = ~D,DF, F,x+y
time = 12

[command]
name = "nanisouzou"
command = ~D,DF, F,y+z
time = 12

[command]
name = "nanisouzou"
command = ~D,DF, F,x+z
time = 12

[command]
name = "nanisouzou"
command = ~D,DF, F,b
time = 12

;===アイアンクラッシュ===
[Command]
name = "iron"
command = ~D, DB, B,x+y
time = 12

[Command]
name = "iron"
command = ~D, DB, B, y+z
time = 12

[Command]
name = "iron"
command = ~D, DB, B, x+z
time = 12

[Command]
name = "iron"
command = ~D, DB, B, b
time = 12

;-| システム系 |-----------------------------------------------------------
[Command]
name = "tandem"
command = ~D,DB, B, a
time = 12

[Command]
name = "stand"
command = ~D,DF, F, a
time = 12

;====ガードキャンセル====
[Command]
name = "guard_cancel"
command = ~F, D, DF, x
time = 18

[Command]
name = "guard_cancel"
command = ~F, D, DF, y
time = 18

[Command]
name = "guard_cancel"
command = ~F, D, DF, z
time = 18

;-| 必殺技 |-----------------------------------------------------------
;====感電黒コゲ====
[Command]
name = "kurokoge"
command = ~F, D, DF, x
time = 18

[Command]
name = "kurokoge"
command = ~F, D, DF, y
time = 18

[Command]
name = "kurokoge"
command = ~F, D, DF, z
time = 18

;===グンバツの脚===
[Command]
name = "gunbatsu"
command = ~D, DB, B, x
time = 12

[Command]
name = "gunbatsu"
command = ~D, DB, B, y
time = 12

[Command]
name = "gunbatsu"
command = ~D, DB, B, z
time = 12

;===コレクション===
[Command]
name = "collection"
command = ~D, DF, F, x
time = 12

[Command]
name = "collection"
command = ~D, DF, F, y
time = 12

[Command]
name = "collection"
command = ~D, DF, F, z
time = 12

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = $D, $U
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| ２～３個のボタン同時押し技 |-----------------------------------------------

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "recovery"
command = x+y+z
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
time = 1

;-| 方向キー＋攻撃ボタン設定 |--------------------------------------------------------------
[Command]
name = "down_x";Required (do not remove)
command = /$D,x
time = 1

[Command]
name = "down_y";Required (do not remove)
command = /$D,y
time = 1

[Command]
name = "down_z";Required (do not remove)
command = /$D,z
time = 1

[Command]
name = "down_a";Required (do not remove)
command = /$D,a
time = 1

[Command]
name = "down_b";Required (do not remove)
command = /$D,b
time = 1

[Command]
name = "down_c";Required (do not remove)
command = /$D,c
time = 1

;-| ボタン設定 |-----------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command];（ブロッキング用）
name = "fwd"
command = F
time = 1

[Command];（レバガチャ用）
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command];
name = "backdown"
command = DB
time = 1

[Command]
name = "fwddown"
command = DF
time = 1

[Command]
name = "backup"
command = UB
time = 1

[Command]
name = "fwdup"
command = UF
time = 1

;-| ボタン押しっぱなし設定 |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1
;-| 方向キー押しっぱなし設定 |--------------------------------------------------------------
[Command]
name = "holdbackdown";Guarding
command = /$DB
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1




[Statedef 10218]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = posset
trigger1=1
x=root,pos x+ifelse((root,facing>0),-100,100)
y=root,pos y




;-------------------------■AI設定■--------------------------------------------------------








[State -2:         VarSet];■AI+立ち回り設定■
type     = parentVaradd
triggerall = root,var(56)=0
triggerall=(RoundState =2)
trigger1 = (root,alive && root,ctrl)||root,var(56)>0
v        = 56
value    =10*               1                        ;(立ち回り設定。1~3)



[State -2:         VarSet];■超反応設定■
type     = VarSet
trigger1=var(41)-((ceil(var(41)/1000)-ifelse(var(41)-(ceil(var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=var(41)<100000
trigger2=(var(14)>0 && var(13) !=enemynear(Var(36)),stateno)||(var(14)=0 && var(13) !=enemynear(Var(36)),stateno)
trigger3=enemynear(Var(36)),movetype !=A
trigger4=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) && var(14)>2 )
v        = 41
value    =                        8       ;(0~10、超反応設定。数字が高いほど攻撃に対する反撃が厳しくなる)



[State -2:         VarSet];■ガード設定■
type     = VarSet
trigger1=var(41) <1000
trigger2=(var(14)>0 && var(13) !=enemynear(Var(36)),stateno)||(var(14)=0 && var(13) !=enemynear(Var(36)),stateno)
trigger3=enemynear(Var(36)),movetype !=A
trigger4=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) && var(14)>2 )
v        = 41
value    =var(41)+1000*           8      ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)



[State -2:         VarSet];■アドバンシングガード頻度■
type     = VarSet
trigger1=var(42)<1000
v        = 42
value    =                       200       ;(0~999、アドバンシングガードの頻度)



[State -2:         VarSet];■初期磁力レベル■
type     = parentVarSet
trigger1=root,var(58)<=1 && roundstate=1
v        = 58
value    =                       1       ;(1~8、磁力レベルの初期値)






























[State -2:         VarSet]
type     = Varadd
trigger1=var(41)-((ceil(var(41)/1000)-ifelse(var(41)-(ceil(var(41)/1000)*1000)<0,1,0))*1000)<100
trigger1=random>(var(41)-((ceil(var(41)/1000)-ifelse(var(41)-(ceil(var(41)/1000)*1000)<0,1,0))*1000))*100
trigger1=enemynear(Var(36)),movetype=A
trigger1 = (var(14)>0 && var(13) !=enemynear(Var(36)),stateno)||(var(14)=0 && var(13) !=enemynear(Var(36)),stateno)||(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) && var(14)>2 )
v        = 41
value    =100
[State -2:         VarSet]
type     = Varadd
trigger1=var(41)<100000
trigger1=random>((ceil(var(41)/1000)-ifelse(var(41)-(ceil(var(41)/1000)*1000)<0,1,0))*1000)/10
trigger1=enemynear(Var(36)),movetype=A
trigger1 = (var(14)>0 && var(13) !=enemynear(Var(36)),stateno)||(var(14)=0 && var(13) !=enemynear(Var(36)),stateno)||(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v        = 41
value    =100000
[State -2:         VarSet]
type     = Varset
;;trigger1=random<=var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)
trigger1=root,stateno!=[150,159]
v        = 42
value    =var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)+ifelse(random<=var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000),1000,2000)
[State -2:         VarSet]
type     = Varset
;;trigger1=random<=var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)
trigger1=(root,power<1000 && enemynear(Var(36)),statetype!=A)&&root,stateno!=[150,159]
v        = 42
value    =var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)+2000
[State -2:         VarSet]
type     = Varadd
trigger1=var(43)=2 && root,stateno=[10195,10196]
trigger2=(var(43)=[3,999]) && root,stateno!=[10195,10196]
v        = 43
value    =ifelse(var(43)=2,398,-1)
[State -2:         VarSet]
type     = Varadd
trigger1=var(43)<1000 && root,stateno=[10195,10196]
trigger1=root,win
v        = 43
value    =1000




 


[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow





[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear,life > 0
var(36) = 0
IgnoreHitPause = 1

[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear,life <= 0
var(36) = 1
IgnoreHitPause = 1













[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=-1
triggerall=fvar(5) !=-99999
trigger1=root,movetype=H||(root,stateno=[150,159])||(root,stateno=1000||root,stateno=1050)
trigger2=root,stateno=4000||root,stateno=4010||root,stateno=4020
trigger3=root,stateno=4100||root,stateno=4110||root,stateno=4120
fv = 5
value =-fvar(5)
Ignorehitpause=1










[State -2 , 1]
type = Varset
triggerall=fvar(21)>0 && fvar(21)-fvar(5) !=[-999,999]
triggerall=fvar(22)>0 && fvar(22)-fvar(5) !=[-999,999]
triggerall=fvar(23)>0 && fvar(23)-fvar(5) !=[-999,999]
triggerall=fvar(24)>0 && fvar(24)-fvar(5) !=[-999,999]
triggerall=fvar(25)>0 && fvar(25)-fvar(5) !=[-999,999]
triggerall=fvar(26)>0 && fvar(26)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(20)>=0
trigger1=fvar(5) >0
fv = 20
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(20)<0 
fv =  20
value =-fvar(20)
[State -2 , 1]
type = Varset
triggerall=fvar(21)=0||fvar(21)-fvar(5) =[-999,999]
triggerall=fvar(22)>0 && fvar(22)-fvar(5) !=[-999,999]
triggerall=fvar(23)>0 && fvar(23)-fvar(5) !=[-999,999]
triggerall=fvar(24)>0 && fvar(24)-fvar(5) !=[-999,999]
triggerall=fvar(25)>0 && fvar(25)-fvar(5) !=[-999,999]
triggerall=fvar(26)>0 && fvar(26)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(21)>=0
trigger1=fvar(5) >0
fv = 21
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(21)<0 
fv =  21
value =-fvar(21)
[State -2 , 1]
type = Varset
triggerall=fvar(22)=0||fvar(22)-fvar(5) =[-999,999]
triggerall=fvar(23)>0 && fvar(23)-fvar(5) !=[-999,999]
triggerall=fvar(24)>0 && fvar(24)-fvar(5) !=[-999,999]
triggerall=fvar(25)>0 && fvar(25)-fvar(5) !=[-999,999]
triggerall=fvar(26)>0 && fvar(26)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(22)>=0
trigger1=fvar(5) >0
fv = 22
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(22)<0 
fv =  22
value =-fvar(22)
[State -2 , 1]
type = Varset
triggerall=fvar(23)=0||fvar(23)-fvar(5) =[-999,999]
triggerall=fvar(24)>0 && fvar(24)-fvar(5) !=[-999,999]
triggerall=fvar(25)>0 && fvar(25)-fvar(5) !=[-999,999]
triggerall=fvar(26)>0 && fvar(26)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(23)>=0
trigger1=fvar(5) >0
fv = 23
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(23)<0 
fv =  23
value =-fvar(23)
[State -2 , 1]
type = Varset
triggerall=fvar(24)=0||fvar(24)-fvar(5) =[-999,999]
triggerall=fvar(25)>0 && fvar(25)-fvar(5) !=[-999,999]
triggerall=fvar(26)>0 && fvar(26)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(24)>=0
trigger1=fvar(5) >0
fv = 24
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(24)<0 
fv =  24
value =-fvar(24)
[State -2 , 1]
type = Varset
triggerall=fvar(25)=0||fvar(25)-fvar(5) =[-999,999]
triggerall=fvar(26)>0 && fvar(26)-fvar(5) !=[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(25)>=0
trigger1=fvar(5) >0
fv = 25
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(25)<0 
fv =  25
value =-fvar(25)
[State -2 , 1]
type = Varset
triggerall=fvar(26)=0||fvar(26)-fvar(5) =[-999,999]
triggerall=root,fvar(16)>0 && root,fvar(16)-fvar(5) !=[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=fvar(26)>=0
trigger1=fvar(5) >0
fv = 26
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(26)<0 
fv =  26
value =-fvar(26)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(16)=0||root,fvar(16)-fvar(5) =[-999,999]
triggerall=root,fvar(4)>0 && root,fvar(4)-fvar(5) !=[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,fvar(16)>=0
trigger1=fvar(5) >0
fv = 16
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(16)<0 
fv =  16
value =-root,fvar(16)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(4)=0||root,fvar(4)-fvar(5) =[-999,999]
triggerall=root,fvar(3)>0 && root,fvar(3)-fvar(5) !=[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,fvar(4)>=0
trigger1=fvar(5) >0
fv = 4
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(4)<0 
fv =  4
value =-root,fvar(4)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(3)=0||root,fvar(3)-fvar(5) =[-999,999]
triggerall=root,var(50)>0 && root,var(50)-fvar(5) !=[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,fvar(3)>=0
trigger1=fvar(5) >0
fv = 3
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(3)<0 
fv =  3
value =-root,fvar(3)
[State -2 , 1]
type = parentVarset
triggerall=root,var(50)=0||root,var(50)-fvar(5) =[-999,999]
triggerall=root,var(47)>0 && root,var(47)-fvar(5) !=[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,var(50)>=0
trigger1=fvar(5) >0
v = 50
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,var(50)<0 
v =  50
value =-root,var(50)
[State -2 , 1]
type = parentVarset
triggerall=root,var(47)=0||root,var(47)-fvar(5) =[-999,999]
triggerall=root,var(31)>0 && root,var(31)-fvar(5) !=[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,var(47)>=0
trigger1=fvar(5) >0
v = 47
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,var(47)<0 
v =  47
value =-root,var(47)
[State -2 , 1]
type = parentVarset
triggerall=root,var(31)=0||root,var(31)-fvar(5) =[-999,999]
triggerall=root,var(14)>0 && root,var(14)-fvar(5) !=[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,var(31)>=0
trigger1=fvar(5) >0
v = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,var(31)<0 
v =  31
value =-root,var(31)
[State -2 , 1]
type = parentVarset
triggerall=root,var(14)=0||root,var(14)-fvar(5) =[-999,999]
triggerall=root,var(11)>0 && root,var(11)-fvar(5) !=[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,var(14)>=0
trigger1=fvar(5) >0
v = 14
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,var(14)<0 
v =  14
value =-root,var(14)
[State -2 , 1]
type = parentVarset
triggerall=root,var(11)=0||root,var(11)-fvar(5) =[-999,999]
triggerall=root,var(3)>0 && root,var(3)-fvar(5) !=[-999,999]
trigger1=root,var(11)>=0
trigger1=fvar(5) >0
v = 11
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,var(11)<0 
v =  11
value =-root,var(11)
[State -2 , 1]
type = parentVarset
triggerall=root,var(3)=0||root,var(3)-fvar(5) =[-999,999]
trigger1=root,var(3)>=0
trigger1=fvar(5) >0
v = 3
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,var(3)<0 
v =  3
value =-root,var(3)





[State -2 , 1]
type = Varset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=fvar(38)>0 && fvar(38)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(37)>0 && fvar(37)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(36)>0 && fvar(36)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(35)>0 && fvar(35)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(34)>0 && fvar(34)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=fvar(39)=0 && var(14)<2
fv = 39
value =1
[State -2 , 1]
type = Varset
triggerall=fvar(39)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 39
value =0
[State -2 , 1]
type = Varset
triggerall=fvar(39)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 39
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = Varset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=fvar(37)>0 && fvar(37)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(36)>0 && fvar(36)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(35)>0 && fvar(35)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(34)>0 && fvar(34)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=fvar(38)=0 && var(14)<2
fv = 38
value =1
[State -2 , 1]
type = Varset
triggerall=fvar(38)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 38
value =0
[State -2 , 1]
type = Varset
triggerall=fvar(38)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 38
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = Varset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=fvar(36)>0 && fvar(36)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(35)>0 && fvar(35)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(34)>0 && fvar(34)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=fvar(37)=0 && var(14)<2
fv = 37
value =1
[State -2 , 1]
type = Varset
triggerall=fvar(37)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 37
value =0
[State -2 , 1]
type = Varset
triggerall=fvar(37)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 37
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = Varset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=fvar(35)>0 && fvar(35)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=fvar(34)>0 && fvar(34)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=fvar(36)=0 && var(14)<2
fv = 36
value =1
[State -2 , 1]
type = Varset
triggerall=fvar(36)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 36
value =0
[State -2 , 1]
type = Varset
triggerall=fvar(36)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 36
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = Varset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=fvar(34)>0 && fvar(34)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=fvar(35)=0 && var(14)<2
fv = 35
value =1
[State -2 , 1]
type = Varset
triggerall=fvar(35)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 35
value =0
[State -2 , 1]
type = Varset
triggerall=fvar(35)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 35
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = Varset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
trigger1=fvar(34)=0 && var(14)<2
fv = 34
value =1
[State -2 , 1]
type = Varset
triggerall=fvar(34)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 34
value =0
[State -2 , 1]
type = Varset
triggerall=fvar(34)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 34
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))














[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)>0
fv = 5
value =-99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) =-99999
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 5
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) !=-99999
triggerall=((root,movetype =H) ||root,stateno !=[800,899])
trigger1=1
fv = 5
value =0
Ignorehitpause=1
[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=0
triggerall=fvar(5) !=-99999
triggerall=root,movetype!=H
triggerall=root,stateno<200||root,movetype=A
trigger1=var(13)>0
trigger1=var(13) =enemynear(Var(36)),stateno
fv = 5 
value =-(var(13)*1000)-ifelse(var(14)>999,999,var(14)+ifelse((root,teamside=1),1,0))
Ignorehitpause=1















[State -2:         VarSet] 
type     = VarSet
triggerall=var(50)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=(var(13)=0)||(var(35)=[1,7])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 50 
value =var(50)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =var(50)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 50
value =-var(50)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=0
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 50
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =ifelse(var(50)<=-1000000,-var(50)-1000000,ifelse(var(50)>=-999,0,-Var(50)-(ceil(-Var(50)/1000)-ifelse(-Var(50)-(ceil(-Var(50)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 50
value =-var(50)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 50
value =var(50)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(50)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(50)-(ceil(Var(50)/1000)-ifelse(Var(50)-(ceil(Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 50
value =var(50)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=(var(13)=0)||(var(35)=[1,7])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 51
value =var(51)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =var(51)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 51
value =-var(51)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=0 && var(50)=[999,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 51
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =ifelse(var(51)<=-1000000,-var(51)-1000000,ifelse(var(51)>=-999,0,-Var(51)-(ceil(-Var(51)/1000)-ifelse(-Var(51)-(ceil(-Var(51)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 51
value =-var(51)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 51
value =var(51)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(51)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(51)-(ceil(Var(51)/1000)-ifelse(Var(51)-(ceil(Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 51
value =var(51)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=(var(13)=0)||((var(35)!=[1,7])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105)
v = 52
value =var(52)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =var(52)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 52
value =-var(52)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=0
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 52
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =ifelse(var(52)<=-1000000,-var(52)-1000000,ifelse(var(52)>=-999,0,-Var(52)-(ceil(-Var(52)/1000)-ifelse(-Var(52)-(ceil(-Var(52)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 52
value =-var(52)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 52
value =var(52)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(52)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(52)-(ceil(Var(52)/1000)-ifelse(Var(52)-(ceil(Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 52
value =var(52)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[0,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=(var(13)=0)||((var(35)!=[1,7])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105);||numhelper(4010)
v = 53
value =var(53)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =var(53)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 53
value =-var(53)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=0 && var(52)=[999,999999]
trigger1=((root,stateno=[200,499])||(root,stateno=[800,999]));;&&(root,stateno=410)
trigger1=var(13)>0 
v = 53
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =ifelse(var(53)<=-1000000,-var(53)-1000000,ifelse(var(53)>=-999,0,-Var(53)-(ceil(-Var(53)/1000)-ifelse(-Var(53)-(ceil(-Var(53)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 53
value =-var(53)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 53
value =var(53)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(53)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(53)-(ceil(Var(53)/1000)-ifelse(Var(53)-(ceil(Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 53
value =var(53)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[0,999999]
trigger1=(root,stateno=42)
trigger1=(var(13)=0)||root,stateno=198
v = 54
value =var(54)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,27])||(root,stateno=[130,159]))
v = 54
value =var(54)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999]
trigger1=(root,stateno=42)
trigger1=var(13)>0 
v = 54
value =-var(54)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=0
trigger1=(root,stateno=42)
trigger1=var(13)>0 
v = 54
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||((root,ctrl||root,stateno<200) && (root,statetype!=A) && (root,stateno!=[40,49]))
v = 54
value =ifelse(var(54)<=-1000000,-var(54)-1000000,ifelse(var(54)>=-999,0,-Var(54)-(ceil(-Var(54)/1000)-ifelse(-Var(54)-(ceil(-Var(54)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 54
value =-var(54)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 54
value =var(54)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(54)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(54)-(ceil(Var(54)/1000)-ifelse(Var(54)-(ceil(Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 54
value =var(54)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[0,999999]
trigger1=(root,stateno=42)
trigger1=(var(13)=0)
v = 55
value =var(55)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,28])||(root,stateno=[130,159]))
v = 55
value =var(55)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=(var(55)=[1,999]) 
trigger1=(root,stateno=42)
trigger1=var(13)>0 
v = 55
value =-var(55)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=0 && (var(54)=[999,999999])
trigger1=(root,stateno=42)
trigger1=var(13)>0 
v = 55
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||((root,ctrl||root,stateno<200) && (root,statetype!=A) && (root,stateno!=[40,49]))
v = 55
value =ifelse(var(55)<=-1000000,-var(55)-1000000,ifelse(var(55)>=-999,0,-Var(55)-(ceil(-Var(55)/1000)-ifelse(-Var(55)-(ceil(-Var(55)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 55
value =-var(55)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 55
value =var(55)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(55)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(55)-(ceil(Var(55)/1000)-ifelse(Var(55)-(ceil(Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 55
value =var(55)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[0,999999]
trigger1=(root,stateno=[3000,3999])
trigger1=(var(13)=0)
v = 57
value =var(57)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 57
value =var(57)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999]
trigger1=(root,stateno=[3000,3999])
trigger1=var(13)>0 
v = 57
value =-var(57)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=0 ;&& var(56)=[999,999999]
trigger1=(root,stateno=[3000,3999])
trigger1=var(13)>0 
v = 57
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)
v = 57
value =ifelse(var(57)<=-1000000,-var(57)-1000000,ifelse(var(57)>=-999,0,-Var(57)-(ceil(-Var(57)/1000)-ifelse(-Var(57)-(ceil(-Var(57)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 57
value =-var(57)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 57
value =var(57)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(57)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(57)-(ceil(Var(57)/1000)-ifelse(Var(57)-(ceil(Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 57
value =var(57)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[0,999999]
trigger1=(root,stateno=[3000,3999])
trigger1=(var(13)=0)
v = 58
value =var(58)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 58
value =var(58)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999]
trigger1=(root,stateno=[3000,3999])
trigger1=var(13)>0 
v = 58
value =-var(58)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=0 && var(57)=[999,999999]
trigger1=(root,stateno=[3000,3999])
trigger1=var(13)>0 
v = 58
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)
v = 58
value =ifelse(var(58)<=-1000000,-var(58)-1000000,ifelse(var(58)>=-999,0,-Var(58)-(ceil(-Var(58)/1000)-ifelse(-Var(58)-(ceil(-Var(58)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 58
value =-var(58)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 58
value =var(58)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(58)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(58)-(ceil(Var(58)/1000)-ifelse(Var(58)-(ceil(Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 58
value =var(58)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[0,999999]
triggerall=(root,stateno=900)
trigger1=(var(13)=0)
v = 56
value =var(56)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =var(56)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999]
triggerall=(root,stateno=900)
trigger1=var(13)>0 
v = 56
value =-var(56)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=0 
triggerall=(root,stateno=900)
trigger1=var(13)>0 
v = 56
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,stateno<200&&helper(218),var(35)!=[1,8])
v = 56
value =ifelse(var(56)<=-1000000,-var(56)-1000000,ifelse(var(56)>=-999,0,-Var(56)-(ceil(-Var(56)/1000)-ifelse(-Var(56)-(ceil(-Var(56)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 56
value =var(56)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(56)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(56)-(ceil(Var(56)/1000)-ifelse(Var(56)-(ceil(Var(56)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 56
value =var(56)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[0,999999]
triggerall=(root,stateno=900)
trigger1=(var(13)=0)
v = 59
value =var(59)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999]
triggerall=(root,stateno=900)
trigger1=var(13)>0 
v = 59
value =-var(59)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=0 && var(56)=[999,999999]
triggerall=(root,stateno=900)
trigger1=var(13)>0 
v = 59
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,stateno<200&&helper(218),var(35)!=[1,8])
v = 59
value =ifelse(var(59)<=-1000000,-var(59)-1000000,ifelse(var(59)>=-999,0,-Var(59)-(ceil(-Var(59)/1000)-ifelse(-Var(59)-(ceil(-Var(59)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 59
value =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 59
value =var(59)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(59)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(59)-(ceil(Var(59)/1000)-ifelse(Var(59)-(ceil(Var(59)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 59
value =var(59)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(46)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 46
value =-var(46)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(46)=0
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 46
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(46)=[-1999999,-1]
trigger1=0;(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159])||(root,movetype=A&&root,stateno>=200))
v = 46
value =ifelse(var(46)<=-1000000,-var(46)-1000000,ifelse(var(46)>=-999,0,-Var(46)-(ceil(-Var(46)/1000)-ifelse(-Var(46)-(ceil(-Var(46)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(46)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 46
value =-var(46)
[State -2:         VarSet]
type     = VarSet
triggerall=var(46)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 46
value =var(46)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(46)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(46)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(46)-(ceil(Var(46)/1000)-ifelse(Var(46)-(ceil(Var(46)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 46
value =var(46)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(47)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 47
value =-var(47)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(47)=0 && var(46)=[999,999999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 47
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(47)=[-1999999,-1]
trigger1=0;(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159])||(root,movetype=A && root,stateno>=200))
v = 47
value =ifelse(var(47)<=-1000000,-var(47)-1000000,ifelse(var(47)>=-999,0,-Var(47)-(ceil(-Var(47)/1000)-ifelse(-Var(47)-(ceil(-Var(47)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(47)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 47
value =-var(47)
[State -2:         VarSet]
type     = VarSet
triggerall=var(47)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 47
value =var(47)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(47)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(47)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(47)-(ceil(Var(47)/1000)-ifelse(Var(47)-(ceil(Var(47)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 47
value =var(47)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[0,999999]
triggerall=(root,stateno=1200)
trigger1=(var(13)=0)||root,stateno=198
v = 44
value =var(44)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 44
value =var(44)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999]
triggerall=(root,stateno=1200)
trigger1=var(13)>0 
v = 44
value =-var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=0
triggerall=(root,stateno=1200)
trigger1=var(13)>0 
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&root,statetype!=A)
v = 44
value =ifelse(var(44)<=-1000000,-var(44)-1000000,ifelse(var(44)>=-999,0,-Var(44)-(ceil(-Var(44)/1000)-ifelse(-Var(44)-(ceil(-Var(44)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-var(44)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =var(44)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(44)-(ceil(Var(44)/1000)-ifelse(Var(44)-(ceil(Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 44
value =var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[0,999999]
triggerall=(root,stateno=1200)
trigger1=(var(13)=0)
v = 45
value =var(45)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 45
value =var(45)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999]
triggerall=(root,stateno=1200)
trigger1=var(13)>0 
v = 45
value =-var(45)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=0 && var(44)=[999,999999]
triggerall=(root,stateno=1200)
trigger1=var(13)>0 
v = 45
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||root,ctrl
v = 45
value =ifelse(var(45)<=-1000000,-var(45)-1000000,ifelse(var(45)>=-999,0,-Var(45)-(ceil(-Var(45)/1000)-ifelse(-Var(45)-(ceil(-Var(45)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||root,ctrl
v = 45
value =-var(45)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 45
value =var(45)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(45)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(45)-(ceil(Var(45)/1000)-ifelse(Var(45)-(ceil(Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =[0,9]
v = 45
value =var(45)+2000000









 





 

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(19)=[-99999,0]
;triggerall=root,fvar(17)>0&&root,fvar(17)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
fv = 19
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(19)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=0;root,fvar(17)<=0||root,fvar(17)=-root,fvar(29)
fv = 19
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(19)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
fv = 19
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(19)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
fv = 19
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(19)=[-199999,-100000]
trigger1=1
fv = 19
value =-root,fvar(19)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(19)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
fv = 19
value =root,fvar(19)-100000

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[-99999,0]
triggerall=root,fvar(19)>0&&root,fvar(19)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
fv = 17
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=root,fvar(19)<=0||root,fvar(19)=-root,fvar(29)
fv = 17
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
fv = 17
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
fv = 17
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[-199999,-100000]
trigger1=1
fv = 17
value =-root,fvar(17)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
fv = 17
value =root,fvar(17)-100000
















[State -2:         VarSet, Damage]
type     = VarSet
triggerall = enemynear(Var(36)),movetype=A
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1 =enemynear(Var(36)),HitDefAttr =SCA,HA
trigger2=var(15) - (enemynear(Var(36)),power*100)>=100000
v        = 15
value    =var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+100
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+((ceil(enemynear(Var(36)),power/10)-ifelse(enemynear(Var(36)),power-(ceil(enemynear(Var(36)),power/10)*10)<0,1,0))*1000)
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000)=[100,299]
trigger1 = enemynear(Var(36)),movetype !=A
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)

[State -2:         VarSet]
type     = varset
trigger1=root,stateno=131||(root,stateno=130&&root,time<=1&&prevstateno=131)
;trigger1=root,inguarddist=0
;trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger2=root,statetype=L
trigger2=numpartner=0
trigger2=enemynear(Var(36)),movetype=A
trigger2=var(14)<=10
trigger3=(root,facing=1 && enemynear(Var(36)),pos x<root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>root,pos x)
trigger3=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger3=numpartner=0 && numenemy=1
trigger4=numpartner=0 && numenemy=1
trigger4=(root,facing=1 && enemynear(Var(36)),pos x<=root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>=root,pos x)||enemynear(Var(36)),vel x !=0
trigger4=enemynear(Var(36)),statetype=A && (var(14)<=20||(enemynear(Var(36)),vel x=0 && enemynear(Var(36)),vel y>0)) && enemynear(Var(36)),movetype =A 
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+ifelse(root,stateno=131&& root,inguarddist=0,1,10)
[State -2, Run Back]
type     = varadd
triggerall=numpartner=0
triggerall=numenemy=1
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
triggerall=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger1=root,var(3)>999 && root,var(3)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger1=root,var(3)>999 && root,var(3)-((ceil(root,var(3)/1000)-ifelse(root,var(3)-(ceil(root,var(3)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger2=root,var(11)>999 && root,var(11)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger2=root,var(11)>999 && root,var(11)-((ceil(root,var(11)/1000)-ifelse(root,var(11)-(ceil(root,var(11)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger3=root,var(14)>999 && root,var(14)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger3=root,var(14)>999 && root,var(14)-((ceil(root,var(14)/1000)-ifelse(root,var(14)-(ceil(root,var(14)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger4=root,var(31)>999 && root,var(31)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger4=root,var(31)>999 && root,var(31)-((ceil(root,var(31)/1000)-ifelse(root,var(31)-(ceil(root,var(31)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger5=root,var(47)>999 && root,var(47)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger5=root,var(47)>999 && root,var(47)-((ceil(root,var(47)/1000)-ifelse(root,var(47)-(ceil(root,var(47)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger6=root,var(50)>999 && root,var(50)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger6=root,var(50)>999 && root,var(50)-((ceil(root,var(50)/1000)-ifelse(root,var(50)-(ceil(root,var(50)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger7=fvar(26)>999 && fvar(26)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(26)>999 && fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger8=root,fvar(3)>999 && root,fvar(3)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger8=root,fvar(3)>999 && root,fvar(3)-((ceil(root,fvar(3)/1000)-ifelse(root,fvar(3)-(ceil(root,fvar(3)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger9=root,fvar(4)>999 && root,fvar(4)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger9=root,fvar(4)>999 && root,fvar(4)-((ceil(root,fvar(4)/1000)-ifelse(root,fvar(4)-(ceil(root,fvar(4)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger10=root,fvar(16)>999 && root,fvar(16)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger10=root,fvar(16)>999 && root,fvar(16)-((ceil(root,fvar(16)/1000)-ifelse(root,fvar(16)-(ceil(root,fvar(16)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
v        = 15
value    =10
[State -2:         VarSet]
type     = varadd
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[1,98]
trigger1=root,movetype !=H
trigger1=root,statetype !=L
trigger1=root,stateno !=[5000,5150]
v        = 15
value    =1
[State -2:         VarSet]
type     = varset
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[3,9]
trigger2=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>=20
trigger3=root,stateno=[150,159]
trigger3=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>1||var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>10
trigger4=root,stateno=[5000,5059]
trigger5=(enemynear(Var(36)),stateno=1350&&numhelper(1310))
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)





[State -2 , 1]
type = Varadd
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,998]
v = 18
value =1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),life>0
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=[5100,5120]
v = 18
value =1
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>=1
trigger1=enemynear(Var(36)),stateno =[5000,5059]
v = 18
value =((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(18)=[1000,1999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000
[State -2 , 1]
type = Varset
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =(var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000))*1000
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno !=[5100,5110])&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 18
value =1000+var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/100000)-ifelse(var(18)-(ceil(var(18)/100000)*100000)<0,1,0))*100000)=[1,9999]
trigger1=(root,stateno=200)||(root,stateno=220)||(root,stateno=225)||(root,stateno=300)
trigger1=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200 && root,time<=1
trigger1=numenemy=1 && numpartner=0
v = 18
value =10000
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/100000)-ifelse(var(18)-(ceil(var(18)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger1=(root,movecontact)||enemynear(Var(36)),life<=0||enemynear(Var(36)),stateno<200||enemynear(Var(36)),movetype=A||root,movetype=H
v = 18
value =-10000













[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])
v = 19
value =-29
[State -2 , 1]
type = Varset
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=20
trigger2=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger2=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)>1
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)<=19
v = 19
value =1
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=0
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])||(enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=1000)
v = 19
value =ifelse((enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899]),1,30)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=1
trigger1=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =1
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[0,99]
triggerall=root,inguarddist
trigger1=var(13)<=0 && enemynear(Var(36)),movetype !=A
v = 19
value =100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=root,inguarddist=0
v = 19
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=var(13)<=0 && root,movetype =A
v = 19
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=root,ctrl
trigger2=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 19
value =ifelse(root,ctrl,-1000,1000)
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),pos x-root,pos x=[-150,150]
triggerall=(root,stateno=[120,159])||((root,stateno!=[5100,5150])&&(root,movetype !=H))
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
trigger1=random<=10+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,0)
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=8;+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,10)
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<20000,-10000,-30000)
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =-20000
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[60000,69999]
trigger2= enemynear(Var(36)),stateno<160 ||(enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13))||(enemynear(Var(36)),movetype=H)||(root,movetype=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[80000,89999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<70000,-60000,-80000)
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[70000,79999]
v = 19
value =-70000
[State -2 , 1]
type = Varadd
triggerall= root,movetype=A && (var(13)>0||inguarddist=0) && ((root,stateno!=9212)||(enemynear(Var(36)),statetype!=A))
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 19
value =ifelse(var(13)>0,20000,ifelse(var(12)<160 && (enemynear(Var(36)),movetype!=H),30000,10000))
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),stateno!=var(13)
;trigger1=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =ifelse((enemynear(Var(36)),movetype=A),50000,ifelse((enemynear(Var(36)),stateno>=160),60000,10000))
[State -2 , 1]
type = Varadd
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1= enemynear(Var(36)),movetype=A||inguarddist
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2= enemynear(Var(36)),movetype=A||inguarddist||(enemynear(Var(36)),stateno>=160 && enemynear(Var(36)),movetype!=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =50000
[State -2 , 1]
type = Varadd
triggerall= var(35)=7 && root,stateno=[1100,1110]
triggerall=partner,life<=0;numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[0,99999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[400000,499999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[600000,699999]
v = 19
value =100000
[State -2 , 1]
type = Varadd
triggerall= root,stateno!=[1100,1110]
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999]
v = 19
value =100000
[State -2 , 1]
type = Varset
trigger1= enemynear(Var(36)),movetype=H && root,stateno=1150
trigger2=root,stateno=[1100,1110]
trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
trigger3=root,prevstateno=[1100,1110]
trigger3=root,stateno!=[1100,1199]
trigger3=root,movetype!=H
v = 19
value =800000+var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varset
triggerall= enemynear(Var(36)),movetype!=H
trigger1=1
v = 19
value =var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)>0
trigger1=root,inguarddist 
v = 17
value =1
[State -2 , 1]
type = Varset
trigger1=root,inguarddist =0
v = 17
value =0
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)=0
trigger1=root,inguarddist && enemynear(Var(36)),movetype!=A
v = 17
value =1
[State -2 , 1]
type = Varadd 
trigger1=var(16)<999 && root,stateno=[120,159]
trigger2=(var(16)=[1,1000]) && root,stateno!=[120,159]
v = 16
value =ifelse((root,stateno!=[120,159]),-var(16),1)



[State -2 , 1]
type = Varset
trigger1=var(35)=1||var(35)=[4,6]
trigger1=(root,statetype!=A)||var(35)!=5
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =ifelse(var(35)=6,7,ifelse((var(35)=[4,ifelse(statetype=A&&(movetype!=A)&&(movetype!=H),4,5)]),3,3))
[State -2 , 1]
type = Varset
trigger1=var(35)=8
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =0
[State -2 , 1]
type = Varset
trigger1=var(35)!=5
trigger1=var(35)!=[8,9]
trigger1 = (enemynear(Var(36)),HitDefAttr =SCA,NT,ST,HT)||var(46)>=2000000||var(47)>=2000000
v = 35
value =4
[State -2 , 1]
type = Varset
triggerall=((var(35)!=[5,40])&&(var(35)!=[100,300]))||var(35)=8
trigger1=(root,stateno=102)||(root,stateno=[41,49])||(root,stateno=[100,105])||(root,stateno=[1150,1160])
v = 35
value =ifelse(var(35)=4,5,ifelse(var(13)>0,1,2))
[State -2 , 1]
type = Varset
;triggerall=(var(35)!=[1,5])
trigger1=(root,stateno=900) && var(13)>0
v = 35
value =8
[State -2 , 1]
type = Varset
triggerall=var(35)!=23
trigger1=((root,stateno=[800,899])||(root,stateno=[3100,3199])) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=0;(root,stateno=1100) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =11
[State -2 , 1]
type = Varset
triggerall=var(35)=12
trigger1=(root,stateno!=400)
v = 35
value =12
[State -2 , 1]
type = Varset
trigger1=(root,stateno=400) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =12
[State -2 , 1]
type = Varset
trigger1=(root,stateno=520) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=11156
v = 35
value =13
[State -2 , 1]
type = Varset
triggerall=var(35)=11
trigger1=(root,stateno=1900)
v = 35
value =14
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[600,699]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 && enemynear(Var(36)),statetype!=A
v = 35
value =15
[State -2 , 1]
type = Varset
trigger1=(root,stateno=310||root,stateno=[1000,1050]) && enemynear(Var(36)),movetype=H
v = 35
value =18
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[3000,3099]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =19
[State -2 , 1] 
type = Varset
trigger1=(var(35)=[2,3])||(var(35)=7)||(var(35)=9)||(var(35)=60)
trigger1=(root,statetype!=A)||root,movetype=H||root,movetype=A
trigger1=(root,ctrl && root,stateno!=[100,119])||root,movetype=H||root,movetype=A||root,stateno=1110
trigger2=(var(35)=[10,39])||(var(35)=[200,299])
trigger2=(var(35)!=19)||(enemynear(Var(36)),movetype=A)||(((enemynear(Var(36)),ctrl)||(enemynear(Var(36)),stateno<200))&&enemynear(Var(36)),statetype!=A)
trigger2=(enemynear(Var(36)),movetype!=H)||var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])||(enemynear(Var(36)),stateno =[3500,3509])
trigger3=var(35)=13 && root,time>=30;||(enemynear(Var(36)),statetype!=A)||root,movetype=H||enemynear(Var(36)),movetype=A
trigger3=(root,stateno=[3000,3199])||(root,stateno=1200)||(root,stateno=1900)
v = 35
value =0







[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
fv = 30 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 30 
value =-fvar(30)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && enemynear(Var(36)),statetype!=A
fv = 30 
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)>0 && enemynear(Var(36)),stateno=fvar(30) && root,stateno=1900
fv = 30 
value =fvar(30)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(30)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 30 
value =ifelse((root,movetype=H),fvar(30)+100000,fvar(30)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
fv = 31 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 31 
value =-fvar(31)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && fvar(30)>0 && enemynear(Var(36)),statetype!=A
fv = 31
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)>0 && enemynear(Var(36)),stateno=fvar(31) && root,stateno=1900
fv = 31
value =fvar(31)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(31)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 31 
value =ifelse((root,movetype=H),fvar(31)+100000,fvar(31)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
fv = 31 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
trigger3=fvar(31)=enemynear(Var(36)),stateno||fvar(31)-100000=enemynear(Var(36)),stateno||fvar(31)-200000=enemynear(Var(36)),stateno
fv = 32 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 32
value =-fvar(32)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && fvar(30)>0 && fvar(31)>0 && enemynear(Var(36)),statetype!=A
fv = 32
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)>0 && enemynear(Var(36)),stateno=fvar(32) && root,stateno=1900
fv = 32
value =fvar(32)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(32)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 32
value =ifelse((root,movetype=H),fvar(32)+100000,fvar(32)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
trigger3=fvar(31)=enemynear(Var(36)),stateno||fvar(31)-100000=enemynear(Var(36)),stateno||fvar(31)-200000=enemynear(Var(36)),stateno
fv = 32
value =0




[State -2 , 1]
type = Varset
triggerall=var(5)=0
trigger1=(root,stateno=29)
v = 5
value =1
[State -2 , 1]
type = Varset
triggerall=var(5)>=1
trigger1=root,stateno!=29
v = 5
value =ifelse(var(5)>=8,0,var(5)+1)
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 6
value =0
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 6
value =ifelse((-var(6)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(6)=0 && enemynear(Var(36)),movetype=A
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 6
value =-root,life
[State -2 , 1]
type = Varset
trigger1=(root,stateno!=[40,49])&&(root,statetype!=A)
v = 7
value =0
[State -2 , 1]
type = Varset
trigger1=root,stateno=[42,43]
v = 7
value =1
[State -2 , 1]
type = Varadd
trigger1=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 8
value =-1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=0
trigger1=enemynear(Var(36)),movetype=A && var(9)-enemynear(Var(36)),power>=1000
trigger2=enemynear(Var(36)),HitDefAttr =SCA,HA,HP,HT
v = 8
value =1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[0,9]
trigger1=root,stateno=42 && var(35)=10 && enemynear(Var(36)),movetype!=H
v = 8
value =10
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[10,19]
trigger1=(root,ctrl && root,statetype!=A)||enemynear(Var(36)),movetype=H||(root,movetype=H&&root,stateno>200)
v = 8
value =ifelse(((root,ctrl && root,statetype!=A)||enemynear(Var(36)),movetype=H),-10,10)
[State -2 , 1]
type = Varset
trigger1=1
v = 9
value =enemynear(Var(36)),power
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A && var(14)<2 && var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)=0
v = 12
value =1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NT,ST,HT
trigger1=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
trigger2=helper(4000),stateno=4120
trigger2=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
v = 12
value =((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varadd
trigger1=root,statetype=L && var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[0,9]
v = 12
value =10
[State -2 , 1]
type = Varadd
trigger1=root,statetype!=L 
trigger1=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[10,89]
trigger2=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]
v = 12
value =ifelse((var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]),-90,10)
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 12
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=root,time<=1 && var(14)>6 && (root,stateno=705||root,stateno=715||root,stateno=725)
trigger2=enemynear(Var(36)),HitDefAttr =SCA,SA
v = 12
value =100
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=random<=15||movetype=H||(var(13)!=enemynear(Var(36)),stateno)||(enemynear(Var(36)),movetype!=A)
v = 12
value =-1000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=root,stateno=800||root,prevstateno=800
v = 12
value =-1000
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 11
value =0
[State -2 , 1]
type = Varset 
trigger1=(var(11)=0||var(11)=2) && enemynear(Var(36)),movetype=A 
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
v = 11
value =ifelse(var(11)=2,1,-1)
[State -2 , 1]
type = Varset
trigger1=var(11)=0 && enemynear(Var(36)),movetype=A 
v = 11
value =2
[State -2 , 1]
type = Varadd
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)<9
trigger1=(root,stateno=[42,49])&&root,time=1&&(enemynear(Var(36)),movetype=H)&&(root,prevstateno=[200,499])
v = 10
value =1
[State -2 , 1]
type = Varset
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),movetype!=H)
v = 10
value =((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varset
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)>0
trigger1=enemynear(Var(36)),movetype!=H
v = 10
value =((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varadd
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
trigger1=((root,prevstateno=[200,499])&&root,stateno=42&&root,time=1)
v = 10
value =10
[State -2 , 1]
type = Varadd
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[10,19]
trigger1=root,stateno=[1500,1599]
v = 10
value =10
[State -2 , 1]
type = Varadd
triggerall=(root,stateno=[3000,3999]) && enemynear(Var(36)),movetype!=H
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[0,99]
v = 10
value =100
[State -2 , 1]
type = Varadd
triggerall=(root,stateno=[200,699]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[100,199]
v = 10
value =-100
[State -2 , 1]
type = Varadd
triggerall=root,movetype=A
trigger1=var(10)-((ceil(var(10)/10000)-ifelse(var(10)-(ceil(var(10)/10000)*10000)<0,1,0))*10000)=[0,999]
v = 10
value =1000
[State -2 , 1]
type = Varadd
triggerall=root,stateno=900
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 10
value =10000
[State -2 , 1]
type = Varadd
triggerall=enemynear(Var(36)),ctrl||root,movetype=H
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[10000,19999]
v = 10
value =ifelse((root,movetype=H),10000,-10000)
[State -2 , 1] 
type = Varadd
triggerall=enemynear(Var(36)),statetype=A 
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)<100000
v = 10
value =ifelse((root,facing>0),100000,200000)
[State -2 , 1] 
type = Varset
triggerall=root,movetype=H||root,movetype=A||enemynear(helper(218),Var(36)),statetype!=A
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
v = 10
value =var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)+((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1] 
type = Varadd
triggerall=var(10)<1000000
trigger1=root,stateno=195
v = 10
value =1000000






[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v = 14
value =0
Ignorehitpause=1




[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A
trigger2=var(14)>0
v = 14
value =1
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 13
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(13)>=0
v = 13
value =enemynear(Var(36)),stateno
Ignorehitpause=1



































































[Statedef -1]






[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(3) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(11) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(14) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(31) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(47) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(50) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(3) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(4) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(16) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(17) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(19) =0



[State -1]
type = ChangeState
value=ifelse(life>400,10195,10196)
triggerall = !ishelper
triggerall = var(56)!=0 
triggerall = helper(218),var(43)=[1,999]
triggerall = Alive
triggerall = statetype != A 
triggerall=p2bodydist x>=0
triggerall =(Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101]))
trigger1 =0; win
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(56)>0 
triggerall=var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(stateno=1000||stateno=1200||stateno=1050||stateno=310)
trigger1=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(56) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(56)>0
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(movetype=H)||ctrl||p2life<=0
trigger1=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(56) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(56)>0 
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(stateno=1100||stateno=[1900,1999])&&prevstateno=[200,499]
trigger1=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[0,99])
trigger2=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[200,299])
trigger3=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[400,499])
trigger4=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[600,699])
var(56) = 100
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(56)>0
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(movetype=H)||ctrl||p2life<=0
trigger1=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[100,199])
trigger2=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[300,399])
trigger3=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[500,599])
trigger4=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)=[700,799])
var(56) = ifelse(movetype=H,100,-100)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
trigger1 = var(56)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(56) = var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)
[State -3:         VarSet] 
type     = Varadd
triggerall=!ishelper
triggerall = var(56)>0
triggerall=numhelper(11200)=0||p2movetype!=H
trigger1 =var(56)-((ceil(var(56)/100000)-ifelse(var(56)-(ceil(var(56)/100000)*100000)<0,1,0))*100000)=[10000,19999]
var(56) = -10000
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(56)>0
trigger1 = (RoundState != 2) && var(56)>1000000
trigger2 =stateno=700 && var(56)<1000000
var(56) = var(56)+ifelse(var(56)<1000000,1000000,-1000000)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(56)>0
trigger1=RoundState !=2
v        = 56
value    =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(56)<0
trigger1=RoundState=2 && ctrl
v        = 56
value    =-var(56)

[State -2]
Type = Helper
;trigger1=var(59)>0
trigger1 = numhelper(218)=0
StateNo = 10218
ID = 218
Name = "AI1"
Pos = 0,0
PosType = P1
Ownpal = 1
Persistent = 0
IgnoreHitPause =1























[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<50,42,ifelse(p2bodydist x<120,47,108))
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive
triggerall = statetype != A
triggerall=helper(218),var(35)!=15
triggerall =var(56)-((ceil(var(56)/100000)-ifelse(var(56)-(ceil(var(56)/100000)*100000)<0,1,0))*100000)=[10000,19999]
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x>-20
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(StateNo = 109)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A));||helper(218),var(41)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200&&p2statetype!=A
[State -1, Stand]
type = ChangeState 
value =ifelse(statetype=A,1920,ifelse(p2bodydist x<70,108,1200))
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive
;triggerall = statetype != A
triggerall=helper(218),var(35)=11
triggerall = p2bodydist x<70||!numhelper(11200)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x>-20
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(StateNo = 109)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A));||helper(218),var(41)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200 
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<10,520,100)
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive
triggerall = statetype != A
triggerall=p2stateno=11156;;helper(218),var(35)=12
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x>-20 && (p2bodydist x<10||stateno!=100)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(StateNo = 109)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A));||helper(218),var(41)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200 
[State -1, Stand]
type = ChangeState 
value =ifelse(power>=1000,3000,ifelse(var(58)>=8&&numhelper(11200)=0,1200,1900))
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive
triggerall = statetype != A
triggerall=helper(218),var(35)=13
triggerall=p2stateno!=11156
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x>-20 ;;;;&& (p2bodydist x<30||stateno!=100)
triggerall = (stateno=520) && !(movecontact && var(10)>1)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A));||helper(218),var(41)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200 
[State -1]
type = ChangeState
value = 1920
triggerall = !ishelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(35)!=10
;triggerall=(power>=500&&var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2)||helper(218),var(35)!=17
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype=A
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149]);;||((stateno=[110,115])&&AnimElemTime(2)>=0)||(stateno=2000&&time>=2)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1=helper(218),var(35)=5 && (p2bodydist x<30||vel x<0)
[State -1]
type = ChangeState
value = ifelse(p2statetype=A,ifelse(p2bodydist x<=20&&vel x>=0,600,620),620)
triggerall = !ishelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(35)!=10
;triggerall=(power>=500&&var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2)||helper(218),var(35)!=17
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype=A
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149]);;||((stateno=[110,115])&&AnimElemTime(2)>=0)||(stateno=2000&&time>=2)
triggerall=p2bodydist x<=40+ifelse(vel x=0,0,40)
triggerall=p2bodydist x>=-40
triggerall=(p2statetype=A && p2bodydist y=[0,40])||(vel y>0 && pos y>=ifelse((helper(218),var(7)=1),-40,-50) && p2statetype!=A)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;;trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x>30,220,520)
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
;triggerall=(helper(218),var(35)!=16)||p2statetype!=A
triggerall=(p2stateno!=11156)||p2movetype!=H
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2||p2statetype=A||helper(218),var(35)!=9
;triggerall=p2bodydist x<=20||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||helper(218),var(35)!=16
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>30,8,6)=[-40,ifelse(p2bodydist x>30,0,20)])
triggerall=p2bodydist x>=-20
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=110
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=60,3,ifelse(p2bodydist x<=70,4,5))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;;&& (p2stateno>=1000||p2bodydist x<=40)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x>ifelse(p2movetype=H,15,30),210,520)
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
;triggerall=(helper(218),var(35)!=16)||p2statetype!=A
triggerall=(p2stateno!=11156)||p2movetype!=H
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2||p2statetype=A||helper(218),var(35)!=9
;triggerall=p2bodydist x<=20||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||helper(218),var(35)!=16
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>70,5,4)=[-40,20])
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*4<=70
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-6||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;;&& (p2stateno>=1000||p2bodydist x<=40)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
trigger2=helper(218),var(35)=15||var(56)-((ceil(var(56)/100000)-ifelse(var(56)-(ceil(var(56)/100000)*100000)<0,1,0))*100000)=[10000,19999]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x>30,210,520)
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
;triggerall=(helper(218),var(35)!=16)||p2statetype!=A
;triggerall=(helper(218),var(35)!=12)||p2statetype=A||p2movetype!=H
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2||p2statetype=A||helper(218),var(35)!=9
;triggerall=p2bodydist x<=20||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||helper(218),var(35)!=16
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>70,5,4)=[-40,20])
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*4<=70
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1=helper(218),var(35)=8
trigger1=enemynear(helper(218),Var(36)),animtime=-7||facing*enemynear(helper(218),Var(36)),facing>0
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;;&& (p2stateno>=1000||p2bodydist x<=40)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x>90,220,ifelse(p2bodydist x<=60&&(p2statetype!=A),400,ifelse(p2bodydist x<=70,200,410)))
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
;triggerall=(helper(218),var(35)!=16)||p2statetype!=A
triggerall=(p2stateno!=11156)||p2movetype!=H
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2||p2statetype=A||helper(218),var(35)!=9
;triggerall=p2bodydist x<=20||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||helper(218),var(35)!=16
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>70,5,4)=[-40,20])
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*4<=ifelse(p2statetype=A,110,90)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=60,3,ifelse(p2bodydist x<=70,4,5))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;;&& (p2stateno>=1000||p2bodydist x<=40)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
trigger2=(helper(218),var(35)=12 && stateno!=[20,29])||(helper(218),var(35)=15)||p2statetype=A||var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<30
trigger3=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
trigger3=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger3=p2movetype=H&&p2stateno>200
trigger3=partner,life>0||var(56)-((ceil(var(56)/100000)-ifelse(var(56)-(ceil(var(56)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger3=p2bodydist x<=ifelse(p2statetype=A,90,70)
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x>90,220,ifelse(p2bodydist x<=60&&(p2statetype!=A),400,ifelse(p2bodydist x<=70,200,410)))
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
;triggerall=(helper(218),var(35)!=16)||p2statetype!=A
;triggerall=(helper(218),var(35)!=12)||p2statetype=A||p2movetype!=H
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2||p2statetype=A||helper(218),var(35)!=9
;triggerall=p2bodydist x<=20||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||helper(218),var(35)!=16
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>70,5,4)=[-40,20])
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*4<=ifelse(p2statetype=A,110,90)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1=helper(218),var(35)=8
trigger1=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=60,4,ifelse(p2bodydist x<=70,5,6))||facing*enemynear(helper(218),Var(36)),facing>0
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;;&& (p2stateno>=1000||p2bodydist x<=40)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]







































[State -1, Stand]
type = ChangeState
value =3100
triggerall = !IsHelper
triggerall = var(56)>0 
triggerall = partner,life<=0||(partner,stateno=[5000,5159])||(partner,movetype!=H)||partner,stateno<200
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = Power>=1000
;triggerall=var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2bodydist X <=30
;triggerall=var(50)<2000000
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000;;&&(helper(218),var(46)=[0,999999])&&(helper(218),var(46)!=p2stateno)&&(helper(218),var(47)=[0,999999])&&(helper(218),var(47)!=p2stateno)
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=enemynear(helper(218),Var(36)),animtime<-4
[State -1, Stand]
type = ChangeState
value =42
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype =C
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2bodydist X <=90 && enemynear(helper(218),Var(36)),animtime<-30
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),fvar(39)<=999||helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),fvar(38)<=999||helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),fvar(37)<=999||helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),fvar(36)<=999||helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),fvar(35)<=999||helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),fvar(34)<=999||helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=var(3)<=999||(var(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(11)<=999||(var(11)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(14)<=999||(var(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(31)<=999||(var(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(47)<=999||(var(47)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(50)<=999||(var(50)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(25)-((ceil(helper(218),fvar(25)/1000)-ifelse(helper(218),fvar(25)-(ceil(helper(218),fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(24)-((ceil(helper(218),fvar(24)/1000)-ifelse(helper(218),fvar(24)-(ceil(helper(218),fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(23)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(23)-((ceil(helper(218),fvar(23)/1000)-ifelse(helper(218),fvar(23)-(ceil(helper(218),fvar(23)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(22)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(22)-((ceil(helper(218),fvar(22)/1000)-ifelse(helper(218),fvar(22)-(ceil(helper(218),fvar(22)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(21)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(21)-((ceil(helper(218),fvar(21)/1000)-ifelse(helper(218),fvar(21)-(ceil(helper(218),fvar(21)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(20)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(20)-((ceil(helper(218),fvar(20)/1000)-ifelse(helper(218),fvar(20)-(ceil(helper(218),fvar(20)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(3)<=999||(fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(4)<=999||(fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
;triggerall=var(50)<2000000
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=var(3)>999&&var(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=var(3)>999&&var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger2=var(11)>999&&var(11)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=var(11)>999&&var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger3=var(14)>999&&var(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=var(14)>999&&var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger4=var(31)>999&&var(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=var(31)>999&&var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger5=var(47)>999&&var(47)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=var(47)>999&&var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger6=var(50)>999&&var(50)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=var(50)>999&&var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger7=helper(218),fvar(26)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger8=fvar(3)>999&&fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(3)>999&&fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger9=fvar(4)>999&&fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(4)>999&&fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger10=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger11=helper(218),fvar(25)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(25)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger12=helper(218),fvar(24)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(24)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger13=helper(218),fvar(23)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(23)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger14=helper(218),fvar(22)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(22)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger15=helper(218),fvar(21)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(21)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger16=helper(218),fvar(20)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(20)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger17=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger18=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger19=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger20=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger21=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger22=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
[State -1, Stand]
type = ChangeState
value =900
triggerall = !IsHelper
triggerall = var(56)>0 && partner,life<=0
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
triggerall = random<=500||(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20&&enemynear(helper(218),Var(36)),animtime<-40)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall = p2bodydist X <=60
triggerall=(helper(218),var(46)!=p2stateno) && (helper(218),var(47)!=p2stateno) && (helper(218),var(46)=[0,999999]) && (helper(218),var(47)=[0,999999])
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000;;&&(helper(218),var(46)=[0,999999])&&(helper(218),var(46)!=p2stateno)&&(helper(218),var(47)=[0,999999])&&(helper(218),var(47)!=p2stateno)
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=enemynear(helper(218),Var(36)),animtime<-37
trigger1=var(3)>999&&var(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=var(3)>999&&var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=var(11)>999&&var(11)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=var(11)>999&&var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=var(14)>999&&var(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=var(14)>999&&var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=var(31)>999&&var(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=var(31)>999&&var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=var(47)>999&&var(47)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=var(47)>999&&var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=var(50)>999&&var(50)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=var(50)>999&&var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=helper(218),fvar(26)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(3)>999&&fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(3)>999&&fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(4)>999&&fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(4)>999&&fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=helper(218),fvar(25)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(25)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger12=helper(218),fvar(24)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(24)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger13=helper(218),fvar(23)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(23)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger14=helper(218),fvar(22)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(22)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger15=helper(218),fvar(21)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(21)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger16=helper(218),fvar(20)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(20)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger17=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger18=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger19=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger20=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger21=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger22=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x<=30,520,210)
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2bodydist X <=70
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(14)<=2||helper(218),fvar(39)<=999||helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(38)<=999||helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(37)<=999||helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(36)<=999||helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(35)<=999||helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(34)<=999||helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=var(3)<=999||(var(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=var(11)<=999||(var(11)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=var(14)<=999||(var(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=var(31)<=999||(var(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=var(47)<=999||(var(47)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=var(50)<=999||(var(50)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(25)-((ceil(helper(218),fvar(25)/1000)-ifelse(helper(218),fvar(25)-(ceil(helper(218),fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(24)-((ceil(helper(218),fvar(24)/1000)-ifelse(helper(218),fvar(24)-(ceil(helper(218),fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(23)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(23)-((ceil(helper(218),fvar(23)/1000)-ifelse(helper(218),fvar(23)-(ceil(helper(218),fvar(23)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(22)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(22)-((ceil(helper(218),fvar(22)/1000)-ifelse(helper(218),fvar(22)-(ceil(helper(218),fvar(22)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(21)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(21)-((ceil(helper(218),fvar(21)/1000)-ifelse(helper(218),fvar(21)-(ceil(helper(218),fvar(21)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(20)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(20)-((ceil(helper(218),fvar(20)/1000)-ifelse(helper(218),fvar(20)-(ceil(helper(218),fvar(20)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(3)<=999||(fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(4)<=999||(fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
;triggerall=var(50)<2000000
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=var(3)>999&&var(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=var(3)>999&&var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger2=var(11)>999&&var(11)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=var(11)>999&&var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger3=var(14)>999&&var(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=var(14)>999&&var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger4=var(31)>999&&var(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=var(31)>999&&var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger5=var(47)>999&&var(47)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=var(47)>999&&var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger6=var(50)>999&&var(50)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=var(50)>999&&var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger7=helper(218),fvar(26)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger8=fvar(3)>999&&fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(3)>999&&fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger9=fvar(4)>999&&fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(4)>999&&fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger10=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger11=helper(218),fvar(25)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(25)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger12=helper(218),fvar(24)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(24)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger13=helper(218),fvar(23)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(23)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger14=helper(218),fvar(22)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(22)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger15=helper(218),fvar(21)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(21)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger16=helper(218),fvar(20)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(20)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger17=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger18=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger19=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger20=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger21=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger22=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
[State -1, Stand]
type = ChangeState
value =400
triggerall = !IsHelper
triggerall = var(56)>0
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2bodydist X <=60
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(14)<=2||helper(218),fvar(39)<=999||helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(38)<=999||helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(37)<=999||helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(36)<=999||helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(35)<=999||helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(34)<=999||helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=var(3)<=999||(var(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=var(11)<=999||(var(11)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=var(14)<=999||(var(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=var(31)<=999||(var(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=var(47)<=999||(var(47)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=var(50)<=999||(var(50)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(25)-((ceil(helper(218),fvar(25)/1000)-ifelse(helper(218),fvar(25)-(ceil(helper(218),fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(24)-((ceil(helper(218),fvar(24)/1000)-ifelse(helper(218),fvar(24)-(ceil(helper(218),fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(23)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(23)-((ceil(helper(218),fvar(23)/1000)-ifelse(helper(218),fvar(23)-(ceil(helper(218),fvar(23)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(22)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(22)-((ceil(helper(218),fvar(22)/1000)-ifelse(helper(218),fvar(22)-(ceil(helper(218),fvar(22)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(21)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(21)-((ceil(helper(218),fvar(21)/1000)-ifelse(helper(218),fvar(21)-(ceil(helper(218),fvar(21)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(20)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(20)-((ceil(helper(218),fvar(20)/1000)-ifelse(helper(218),fvar(20)-(ceil(helper(218),fvar(20)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(3)<=999||(fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(4)<=999||(fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
;triggerall=var(50)<2000000
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=var(3)>999&&var(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=var(3)>999&&var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger2=var(11)>999&&var(11)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=var(11)>999&&var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger3=var(14)>999&&var(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=var(14)>999&&var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger4=var(31)>999&&var(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=var(31)>999&&var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger5=var(47)>999&&var(47)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=var(47)>999&&var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger6=var(50)>999&&var(50)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=var(50)>999&&var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger7=helper(218),fvar(26)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger8=fvar(3)>999&&fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(3)>999&&fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger9=fvar(4)>999&&fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(4)>999&&fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger10=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger11=helper(218),fvar(25)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(25)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger12=helper(218),fvar(24)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(24)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger13=helper(218),fvar(23)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(23)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger14=helper(218),fvar(22)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(22)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger15=helper(218),fvar(21)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(21)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger16=helper(218),fvar(20)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(20)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger17=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger18=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger19=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger20=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger21=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger22=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
[State -1, Stand]
type = ChangeState
value =200
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2bodydist X <=70
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(14)<=2||helper(218),fvar(39)<=999||helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(38)<=999||helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(37)<=999||helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(36)<=999||helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(35)<=999||helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(34)<=999||helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=var(3)<=999||(var(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=var(11)<=999||(var(11)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=var(14)<=999||(var(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=var(31)<=999||(var(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=var(47)<=999||(var(47)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=var(50)<=999||(var(50)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(25)-((ceil(helper(218),fvar(25)/1000)-ifelse(helper(218),fvar(25)-(ceil(helper(218),fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(24)-((ceil(helper(218),fvar(24)/1000)-ifelse(helper(218),fvar(24)-(ceil(helper(218),fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(23)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(23)-((ceil(helper(218),fvar(23)/1000)-ifelse(helper(218),fvar(23)-(ceil(helper(218),fvar(23)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(22)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(22)-((ceil(helper(218),fvar(22)/1000)-ifelse(helper(218),fvar(22)-(ceil(helper(218),fvar(22)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(21)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(21)-((ceil(helper(218),fvar(21)/1000)-ifelse(helper(218),fvar(21)-(ceil(helper(218),fvar(21)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=(helper(218),fvar(20)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(20)-((ceil(helper(218),fvar(20)/1000)-ifelse(helper(218),fvar(20)-(ceil(helper(218),fvar(20)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(3)<=999||(fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(4)<=999||(fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
;triggerall=var(50)<2000000
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=var(3)>999&&var(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=var(3)>999&&var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger2=var(11)>999&&var(11)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=var(11)>999&&var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger3=var(14)>999&&var(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=var(14)>999&&var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger4=var(31)>999&&var(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=var(31)>999&&var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger5=var(47)>999&&var(47)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=var(47)>999&&var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger6=var(50)>999&&var(50)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=var(50)>999&&var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger7=helper(218),fvar(26)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger8=fvar(3)>999&&fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(3)>999&&fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger9=fvar(4)>999&&fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(4)>999&&fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger10=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger11=helper(218),fvar(25)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(25)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger12=helper(218),fvar(24)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(24)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger13=helper(218),fvar(23)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(23)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger14=helper(218),fvar(22)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(22)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger15=helper(218),fvar(21)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(21)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger16=helper(218),fvar(20)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(20)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger17=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger18=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger19=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger20=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger21=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger22=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
[State -1, Stand]
type = ChangeState
value =410
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2bodydist X <=90
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(14)<=2||helper(218),fvar(39)<=999||helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(38)<=999||helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(37)<=999||helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(36)<=999||helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(35)<=999||helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=helper(218),var(14)<=2||helper(218),fvar(34)<=999||helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]
triggerall=var(3)<=999||(var(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(11)<=999||(var(11)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(14)<=999||(var(14)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(31)<=999||(var(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(47)<=999||(var(47)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=var(50)<=999||(var(50)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(25)-((ceil(helper(218),fvar(25)/1000)-ifelse(helper(218),fvar(25)-(ceil(helper(218),fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(24)-((ceil(helper(218),fvar(24)/1000)-ifelse(helper(218),fvar(24)-(ceil(helper(218),fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(23)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(23)-((ceil(helper(218),fvar(23)/1000)-ifelse(helper(218),fvar(23)-(ceil(helper(218),fvar(23)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(22)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(22)-((ceil(helper(218),fvar(22)/1000)-ifelse(helper(218),fvar(22)-(ceil(helper(218),fvar(22)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(21)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(21)-((ceil(helper(218),fvar(21)/1000)-ifelse(helper(218),fvar(21)-(ceil(helper(218),fvar(21)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(20)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),fvar(20)-((ceil(helper(218),fvar(20)/1000)-ifelse(helper(218),fvar(20)-(ceil(helper(218),fvar(20)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(3)<=999||(fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(4)<=999||(fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(16)<=999||(fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
;triggerall=var(50)<2000000
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=var(3)>999&&var(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=var(3)>999&&var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger2=var(11)>999&&var(11)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=var(11)>999&&var(11)-((ceil(var(11)/1000)-ifelse(var(11)-(ceil(var(11)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger3=var(14)>999&&var(14)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=var(14)>999&&var(14)-((ceil(var(14)/1000)-ifelse(var(14)-(ceil(var(14)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger4=var(31)>999&&var(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=var(31)>999&&var(31)-((ceil(var(31)/1000)-ifelse(var(31)-(ceil(var(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger5=var(47)>999&&var(47)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=var(47)>999&&var(47)-((ceil(var(47)/1000)-ifelse(var(47)-(ceil(var(47)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger6=var(50)>999&&var(50)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=var(50)>999&&var(50)-((ceil(var(50)/1000)-ifelse(var(50)-(ceil(var(50)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger7=helper(218),fvar(26)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=helper(218),fvar(26)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger8=fvar(3)>999&&fvar(3)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(3)>999&&fvar(3)-((ceil(fvar(3)/1000)-ifelse(fvar(3)-(ceil(fvar(3)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger9=fvar(4)>999&&fvar(4)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(4)>999&&fvar(4)-((ceil(fvar(4)/1000)-ifelse(fvar(4)-(ceil(fvar(4)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger10=fvar(16)>999&&fvar(16)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(16)>999&&fvar(16)-((ceil(fvar(16)/1000)-ifelse(fvar(16)-(ceil(fvar(16)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger11=helper(218),fvar(25)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(25)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger12=helper(218),fvar(24)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(24)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger13=helper(218),fvar(23)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(23)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger14=helper(218),fvar(22)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(22)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger15=helper(218),fvar(21)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(21)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger16=helper(218),fvar(20)>999&&helper(218),fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(20)-((ceil(helper(218),fvar(26)/1000)-ifelse(helper(218),fvar(26)-(ceil(helper(218),fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger17=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger18=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger19=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger20=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger21=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger22=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x>120,108,47)
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2movetype=A
;triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
trigger1=helper(218),fvar(39)>999&&helper(218),fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=helper(218),fvar(39)-((ceil(helper(218),fvar(39)/1000)-ifelse(helper(218),fvar(39)-(ceil(helper(218),fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger2=helper(218),fvar(38)>999&&helper(218),fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=helper(218),fvar(38)-((ceil(helper(218),fvar(38)/1000)-ifelse(helper(218),fvar(38)-(ceil(helper(218),fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger3=helper(218),fvar(37)>999&&helper(218),fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=helper(218),fvar(37)-((ceil(helper(218),fvar(37)/1000)-ifelse(helper(218),fvar(37)-(ceil(helper(218),fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger4=helper(218),fvar(36)>999&&helper(218),fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=helper(218),fvar(36)-((ceil(helper(218),fvar(36)/1000)-ifelse(helper(218),fvar(36)-(ceil(helper(218),fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger5=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger6=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
[State -1, Stand]
type = ChangeState
value =43;;ifelse(p2bodydist x<=50,47,43)
triggerall = !IsHelper
triggerall = var(56)>0 ;&& random<=500
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
triggerall = stateno != 105
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && statetype !=A
;triggerall=p2bodydist x>-30
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<=0;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall =Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(helper(218),var(46)>=2000000||helper(218),var(47)>=2000000)
trigger1=(helper(218),var(41)-((ceil(helper(218),var(41)/100000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
trigger1=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger2=0;(var(12)=[1,8])||(var(13)=[1,7])
[State -1, Stand]
type = ChangeState
value =900
triggerall = !IsHelper
triggerall = var(56)>0 && partner,life<=0
triggerall=var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=8)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)>=50000
triggerall = helper(218),var(41)-((ceil(helper(218),var(41)/1000)-ifelse(helper(218),var(41)-(ceil(helper(218),var(41)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && statetype !=A
triggerall=(enemynear(helper(218),Var(36)),facing*facing<0&&p2bodydist x>-30)||(enemynear(helper(218),Var(36)),facing*facing>0&&p2bodydist x<=-30)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (stateno=[200,799])&&time<4
triggerall = p2movetype=A
;triggerall=p2statetype !=A
;triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall = p2bodydist X <=60
triggerall=(helper(218),var(46)!=p2stateno) && (helper(218),var(47)!=p2stateno) && (helper(218),var(46)=[0,999999]) && (helper(218),var(47)=[0,999999])
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000;;&&(helper(218),var(46)=[0,999999])&&(helper(218),var(46)!=p2stateno)&&(helper(218),var(47)=[0,999999])&&(helper(218),var(47)!=p2stateno)
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=enemynear(helper(218),Var(36)),animtime<-37
trigger1=1






















[State -1, 氷螺]
type = ChangeState
value = ifelse(stateno=620,ifelse(power>=1000,3050,1200),ifelse((stateno=[600,610]),stateno+10,600))
triggerall = !ishelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=16)||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
;triggerall = helper(218),var(35)!=10
;triggerall = var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||(stateno!=430)||helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive 
triggerall = (statetype=A) 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=0;(p2stateno>=200&&p2movetype=H&&p2statetype=A)
trigger1 = (stateno = [600,ifelse((frontedgebodydist<70||helper(218),var(35)=[16,17])||(helper(218),var(35)=19),620,610)]) && movecontact && !(var(52)>1&&movecontact)
trigger2 = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[110,115])&&AnimElemTime(2)>=0)||(stateno=2000&&time>=2)
trigger2 = (p2bodydist x<=40||frontedgebodydist<70) && p2bodydist y=[ifelse(vel y<0,-60,0),20]
[State -1, 氷螺]
type = ChangeState
value = ifelse(stateno=400,ifelse(prevstateno=400&&stateno=400,525,400),ifelse(prevstateno=200&&stateno=200,320,200))
triggerall = !ishelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=13)
;triggerall=(helper(218),var(35)!=16)||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
;triggerall = helper(218),var(35)!=10
;triggerall = var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||(stateno!=430)||helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive 
triggerall = (statetype!=A) 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2statetype!=A;;(p2stateno>=200&&p2movetype=H&&p2statetype=A)
trigger1 = ((stateno=200 && animelemtime(3)>=3 && p2bodydist x<50)||(stateno=400 && animelemtime(3)>=3 && (movehit=0||p2bodydist x>20||p2movetype!=H)&&p2bodydist x<50)) 
trigger1 =  (!movecontact||var(10)<=0) && !var(12);連打キャンセル
[State -1, 氷螺]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(56)>0 && !numhelper(11100)
triggerall=(var(56)-((ceil(var(56)/100000)-ifelse(var(56)-(ceil(var(56)/100000)*100000)<0,1,0))*100000)<10000)
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<200)||var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<30||random<=500||p2statetype=A
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<400)||random<=500||p2statetype=A
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<600)||random<=500||p2statetype=A
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<800)||random<=500||p2statetype=A
triggerall=(helper(218),var(35)!=13)
;triggerall=(helper(218),var(35)!=16)||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
;triggerall = helper(218),var(35)!=10
;triggerall = var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||(stateno!=430)||helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive && random<=500
triggerall = (statetype!=A) 
triggerall=p2bodydist x>ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,80,-30)||p2statetype=A
triggerall=(P2dist X=[0,100+var(58)*25]);;p2bodydist x<100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=movecontact&&(p2stateno<200||p2movetype!=H)&&p2statetype!=A
triggerall=(stateno!=400)||p2bodydist x>=50
trigger1 = (stateno=200||stateno=210||stateno=220||stateno=310||stateno=315||stateno=320||stateno=400||stateno=410||stateno=420||stateno=520||stateno=525) && !(movecontact && var(10)>1);Cancelation
[State -1, 氷螺]
type = ChangeState
value = ifelse(statetype=A,1920,ifelse((p2statetype=A||p2bodydist x<40)&&(stateno!=420),ifelse(var(58)>=8&&numhelper(11200)=0&&p2statetype=A,ifelse(frontedgebodydist>100&&random<=500,1100,1200),1900),1910))
triggerall = !ishelper
triggerall = var(56)>0 && (var(58)<=8||p2statetype=A)
triggerall=(var(56)-((ceil(var(56)/100000)-ifelse(var(56)-(ceil(var(56)/100000)*100000)<0,1,0))*100000)<10000)
triggerall=(helper(218),var(35)!=13)
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<200)||var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<30||random<=500||p2statetype=A
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<400)||random<=500||p2statetype=A
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<600)||random<=500||p2statetype=A
triggerall=(var(56)-((ceil(var(56)/1000)-ifelse(var(56)-(ceil(var(56)/1000)*1000)<0,1,0))*1000)<800)||random<=500||p2statetype=A
;triggerall=(helper(218),var(35)!=16)||var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
;triggerall = helper(218),var(35)!=10
;triggerall = var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<3||(stateno!=430)||helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive 
;triggerall = (statetype!=A) 
triggerall=p2bodydist x>ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,80,-30)||p2statetype=A
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=movecontact;(p2stateno>=200&&p2movetype=H&&p2statetype=A)
triggerall=(stateno!=400)||p2bodydist x>=50
trigger1 = (stateno=200||stateno=210||stateno=220||stateno=310||stateno=315||stateno=320||stateno=400||stateno=410||stateno=420||stateno=520||stateno=525) && !(movecontact && var(10)>1);Cancelation
trigger2 = (stateno=600||stateno=610||stateno=620) && p2statetype=A && !(movecontact && var(10)>1);Cancelation





























[State -1]
type = ChangeState
value=900
triggerall = !IsHelper
triggerall = var(56)>0 
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && partner,life>0 && enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>0 && p2bodydist x<80
triggerall=frontedgebodydist-p2bodydist x>50
;triggerall = (p2statetype != A)||(p2bodydist y>=-60)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
;triggerall=p2bodydist x>80||(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(56)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno<200||helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
trigger1 =facing>0 && partner,pos x<enemynear(helper(218),Var(36)),pos x
trigger2 =facing<0 && partner,pos x>enemynear(helper(218),Var(36)),pos x


[State -1]
type = ChangeState
value=800
triggerall = !ishelper
triggerall = var(56)>0
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=helper(218),var(12)-((ceil(helper(218),var(12)/10000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/10000)*10000)<0,1,0))*10000)!=[1000,1999]
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = (statetype != A)&&(p2statetype!=A)
triggerall=p2bodydist x>=-30
triggerall = P2bodydist X<=ceil(36*const(size.xscale))&&P2movetype!=H&&P2statetype!=A&&!(P2statetype=L&&enemynear,alive)
triggerall = !var(31)
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=p2movetype=A
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1]
type = ChangeState
value=800
triggerall = !ishelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=helper(218),var(12)-((ceil(helper(218),var(12)/10000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/10000)*10000)<0,1,0))*10000)!=[1000,1999]
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = (statetype != A)&&(p2statetype!=A)
triggerall=p2bodydist x>=-30
triggerall = P2bodydist X<=ceil(36*const(size.xscale))&&P2movetype!=H&&P2statetype!=A&&!(P2statetype=L&&enemynear,alive)
triggerall = !var(31)
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30,-200,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =stateno=109
trigger3 =(teamside=2||p2stateno=[50,59])&&var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20
[State -1]
type = ChangeState
value=109
triggerall = !ishelper
triggerall = var(56)>0
triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
;triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = (((stateno!=132) && (stateno!=[154,155]) && statetype != A)&&(p2statetype!=A));||(((stateno=132||(stateno=[154,155])||statetype=A))&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-20
triggerall = P2BodyDist X <60
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30,-25,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||p2movetype=H,315,520)
triggerall = !ishelper
triggerall = var(56)>0
;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
;triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>0
triggerall=p2bodydist x<=30
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30,-25,0)||(p2movetype=H&&p2statetype=C&&random<=333);;||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger2 =stateno=100||(p2bodydist x<=30&&enemynear(helper(218),Var(36)),vel x>0)
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>60,200,400)
triggerall = !ishelper
triggerall = var(56)>0
;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
;triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-20
triggerall=p2bodydist x<=70
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30,-50,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger2 =stateno=100||(p2bodydist x<=30&&enemynear(helper(218),Var(36)),vel x>0)
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>80,410,210)
triggerall = !ishelper
triggerall = var(56)>0
;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
;triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-20
triggerall=p2bodydist x<=90
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30,-50,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger2 =stateno=100||(p2bodydist x<=30&&enemynear(helper(218),Var(36)),vel x>0)
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=60,420,220)
triggerall = !ishelper
triggerall = var(56)>0
;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
;triggerall=helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall =p2bodydist x<=60||var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<30
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>40
triggerall=p2bodydist x<=ifelse(random<=500,60,110)
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=30,-25,0);;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger2 =stateno=100||(p2bodydist x<=30&&enemynear(helper(218),Var(36)),vel x>0)
[State -1]
type = ChangeState
value=1900
triggerall = !ishelper
triggerall = var(56)>0
;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
triggerall=p2bodydist x>100
;triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=120
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =(helper(218),fvar(30)>0 && helper(218),fvar(30)=p2stateno)||(helper(218),fvar(31)>0 && helper(218),fvar(31)=p2stateno)||(helper(218),fvar(32)>0 && helper(218),fvar(32)=p2stateno)
[State -1]
type = ChangeState
value=310
triggerall = !ishelper
triggerall = var(56)>0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
triggerall=p2bodydist x>=ifelse(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)<2000,150,200)
triggerall=(p2bodydist x-enemynear(helper(218),Var(36)),vel x*30=[ifelse(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)<2000,150,200),300])
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1100
triggerall = !ishelper
triggerall = var(56)>0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive && partner,life>0
triggerall = !numhelper(11100)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
triggerall=p2bodydist x>0 && (P2dist X=[0,100+var(58)*25])
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=facing*enemynear(helper(218),Var(36)),facing>0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1200
triggerall = !ishelper
triggerall = var(56)>0
triggerall = !numhelper(11200)
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
triggerall=helper(218),var(35)!=18
triggerall = statetype != A
triggerall=p2bodydist x=[50,200]
;triggerall = (p2statetype != A)||enemynear(helper(218),Var(36)),vel x<=0
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>200))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>200))
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = partner,life>0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =1;random<=50;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(power>=2000&&(p2bodydist x>200||partner,life>0)&&(partner,life<=0||partner,movetype!=H),3000,ifelse(statetype=A||random<=500,1000,310))+(statetype=A)*50
triggerall = !ishelper
triggerall = var(56)>0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
triggerall=helper(218),var(35)!=18
triggerall = pos y>-60||statetype != A
triggerall=p2bodydist x>100
triggerall = (p2statetype != A)||enemynear(helper(218),Var(36)),vel x<=0
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>200))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype=H && numhelper(11200) && p2stateno=[120,159])||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>200))
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||partner,life>0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =1;random<=50;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1000+(statetype=A)*50
triggerall = !ishelper
triggerall = var(56)>0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = pos y>-60||statetype != A
triggerall=p2bodydist x>=ifelse(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)<2000,150,200)
triggerall=(p2bodydist x-enemynear(helper(218),Var(36)),vel x*30=[ifelse(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)<2000,150,200),300])
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1200
triggerall = !ishelper
triggerall = var(56)>0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall = !numhelper(11200)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
triggerall=p2bodydist x>ifelse(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)<2000,150,200)
triggerall=(p2bodydist x-enemynear(helper(218),Var(36)),vel x*30=[ifelse(var(56)-((ceil(var(56)/10000)-ifelse(var(56)-(ceil(var(56)/10000)*10000)<0,1,0))*10000)<2000,150,200),300])
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1900+ifelse(statetype=A,20,ifelse(random<=500,10,0))
triggerall = !ishelper
triggerall = var(56)>0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = pos y>=-50||statetype != A
triggerall=p2bodydist x>100
triggerall=(p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>100)
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =0;random<=50;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||(partner,life>0),ifelse(random<=500,42,42),ifelse(random<=500,43,43))
triggerall = !ishelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=ifelse(life>p2life&&life>400,30,20)
triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/1000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000)*1000)<0,1,0))*1000)>=200
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
triggerall=p2bodydist x>=-20
triggerall=(p2bodydist x>0 && enemynear(helper(218),Var(36)),vel x=0)||(p2bodydist x>20 && enemynear(helper(218),Var(36)),vel x>=0)||(p2statetype!=A)||frontedgebodydist<70
triggerall=(p2bodydist x-enemynear(helper(218),Var(36)),vel x*2=[60,250])
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(enemynear(helper(218),Var(36)),vel x>0||random<=500)&&((p2movetype!=H)||p2stateno=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-10,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||(partner,life>0),ifelse(random<=500,42,47),ifelse(random<=500,43,48))
triggerall = !ishelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<ifelse(life>p2life&&life>400,30,20)
triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)>=1000
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/1000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000)*1000)<0,1,0))*1000)>=200
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A
triggerall=p2bodydist x>=-20
triggerall=(p2bodydist x>0 && enemynear(helper(218),Var(36)),vel x=0)||(p2bodydist x>20 && enemynear(helper(218),Var(36)),vel x>=0)||(p2statetype!=A)||frontedgebodydist<70
triggerall=(p2bodydist x-enemynear(helper(218),Var(36)),vel x*2=[60,250])
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(enemynear(helper(218),Var(36)),vel x>0||random<=500)&&((p2movetype!=H)||p2stateno=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;+ifelse(var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20,-10,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1100
triggerall = !ishelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=ifelse(random<=500,30,20)
;;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall = RoundState = 2 && Alive
triggerall = statetype = A && pos y>-50 && vel y>0
triggerall=(p2bodydist x>100)
triggerall=(P2dist X=[0,100+var(58)*25])
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<10000
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno=[5100,5110]
trigger2 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[ifelse(p2bodydist x>170,10000,30000),60000]
trigger3=p2bodydist x>0 && frontedgebodydist>100
trigger3=0;helper(218),var(35)=10 && var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
[State -1]
type = ChangeState
value=ifelse(random<=500,1050,1920)
triggerall = !ishelper
triggerall = var(56)>0 
;;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall = RoundState = 2 && Alive
triggerall = statetype = A && pos y>-50 && vel y>0
triggerall=(p2bodydist x>100)
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<10000
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno=[5100,5110]
trigger2 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[ifelse(p2bodydist x>170,10000,30000),60000]
trigger3=p2bodydist x>0 && frontedgebodydist>100
trigger3=0;helper(218),var(35)=10 && var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
[State -1]
type = ChangeState
value=ifelse(random<=333&&numhelper(11200)=0,1200,ifelse(p2bodydist x<150&&random<=666,1910,1000))
triggerall = !ishelper
triggerall = var(56)>0 
;;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall = RoundState = 2 && Alive
triggerall = statetype != A 
triggerall=(p2bodydist x>100)
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<10000
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||((stateno=[100,105])&&time>=2)||(stateno=109)
trigger1 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno=[5100,5110]
trigger2 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[ifelse(p2bodydist x>170,10000,30000),60000]
trigger3=helper(218),var(35)=19 ;;;&& var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)<2
trigger3 = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
[State -1]
type = ChangeState
value=ifelse(frontedgebodydist>150&&(enemynear(helper(218),Var(36)),vel x>=2)&&p2bodydist x<=100,108,ifelse(backedgebodydist>60,105,108))
triggerall = !ishelper
triggerall = var(56)>0 
triggerall=(frontedgebodydist>150&&(enemynear(helper(218),Var(36)),vel x>=2)&&p2bodydist x<=100)||helper(218),var(35)!=22
;triggerall=(helper(218),var(35)!=13)||p2stateno!=11400
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
;triggerall=backedgebodydist>60||(p2bodydist x<=60 && enemynear(helper(218),Var(36)),vel x>=3 && p2stateno!=[5100,5110])
triggerall=p2bodydist x>=-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(p2stateno =[5100,5150]);||(helper(218),var(35)=8)
triggerall =(p2stateno=[5100,5110])||(p2statetype!=A);||(helper(218),var(35)=8)
trigger1 =backedgebodydist<=50 && p2bodydist x<=60 && (enemynear(helper(218),Var(36)),vel x>=0||p2stateno=[5100,5110])
trigger2 =p2bodydist x<=100 && enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]
trigger3 = p2bodydist x<=30



















[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)||(StateNo = 900 && animtime=0)
triggerall = StateNo != [130, 139]
triggerall = time>=5||StateNo != 29
triggerall=numenemy=1
;triggerall=(stateno!=132) && (stateno!=[154,155]) && statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=helper(218),var(41)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)=[1,9]
value      = ifelse((stateno=132||(stateno=[154,155])||statetype=A),132,130)
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)||(StateNo = 900 && animtime=0)
triggerall = StateNo != [130, 139]
triggerall = time>=5||StateNo != 29
triggerall=numenemy=1
;triggerall=(stateno!=132) && (stateno!=[154,155]) && statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=helper(218),var(41)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)>=1
value      = ifelse((stateno=132||(stateno=[154,155])||statetype=A),132,ifelse((enemynear(helper(218),Var(36)),stateType = A),130,131))
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
;triggerall = p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)||(StateNo = 900 && animtime=0)
triggerall = StateNo != [130, 139]
triggerall = time>=5||StateNo != 29
triggerall=(stateno!=132) && (stateno!=[154,155]) && statetype !=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=helper(218),var(41)<100000
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger1=enemynear(helper(218),Var(36)),statetype=A
trigger2=enemynear(helper(218),Var(36)),MoveType = A
trigger2=(fvar(17)>0 && fvar(17)=p2stateno)||(fvar(19)>0 && fvar(19)=p2stateno)
value      = 130
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
;triggerall = helper(218),var(52)<2000000 && helper(218),var(53)<2000000||p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)||(StateNo = 900 && animtime=0)
triggerall = StateNo != [130, 139]
triggerall = time>=5||StateNo != 29
triggerall=(stateno!=132) && (stateno!=[154,155]) && statetype!=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=helper(218),var(41)<100000
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(fvar(17)<=0||fvar(17) !=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(fvar(19)<=0||fvar(19) !=p2stateno)
trigger1=enemynear(helper(218),Var(36)),statetype !=A
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger2=enemynear(helper(218),Var(36)),movetype !=A
value      = 131
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=[100,130]
triggerall = RoundState = 2 && Alive
triggerall = StateNo != [120, 159]
triggerall = time>=5||StateNo != 29
triggerall=inguarddist||helper(218),inguarddist
triggerall=helper(218),var(41)<100000
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])||(StateNo = 109)||(StateNo = 900 && animtime=0)
triggerall=(stateno=132||(stateno=[154,155])||statetype=A)
trigger1=1
value      = 132









[State -1, Stand1]
type = ChangeState
value =100;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(56)>0 
triggerall = RoundState = 2 && Alive && stateno!=100
triggerall=statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])
triggerall=p2bodydist x>20&&frontedgebodydist>60
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250 && random<=10
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=0;p2bodydist x>100 && random<=50
trigger3=p2bodydist x>20&&frontedgebodydist>60
trigger3=(p2movetype=H&&p2stateno>200)&&(p2bodydist x>80||p2bodydist y>=-100||(var(56)-((ceil(var(56)/10)-ifelse(var(56)-(ceil(var(56)/10)*10)<0,1,0))*10)>1&&helper(218),var(35)=10&&p2bodydist y<0)||p2statetype!=A)
trigger3=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20
triggerall = RoundState = 2 && Alive
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,29]))||(time>=20 && stateno=28 && random<=200)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,50))
trigger1=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
trigger2=p2bodydist x>=180;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,50))
trigger2=(helper(218),var(35)=11)||(helper(218),var(35)=14)
[State -1, Stand1]
type = ChangeState
value =28
triggerall = !IsHelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)>=20
triggerall = RoundState = 2 && Alive
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,29]))||(time>=20 && stateno=27 && random<=200)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,50))
trigger1=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
trigger2=p2bodydist x<180;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,50))
trigger2=(helper(218),var(35)=11)||(helper(218),var(35)=14)
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<20
triggerall = RoundState = 2 && Alive
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,29]))||(time>=20 && stateno=28 && random<=200)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger1=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
trigger2=p2bodydist x>=180;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger2=(helper(218),var(35)=11)||(helper(218),var(35)=14)
[State -1, Stand1]
type = ChangeState
value =28
triggerall = !IsHelper
triggerall = var(56)>0 && var(56)-((ceil(var(56)/100)-ifelse(var(56)-(ceil(var(56)/100)*100)<0,1,0))*100)<20
triggerall = RoundState = 2 && Alive
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,29]))||(time>=20 && stateno=27 && random<=200)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||helper(218),var(41)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(var(20)<=0 && StateNo =[120,149])
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger1=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)
trigger2=p2bodydist x<180;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,110,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger2=(helper(218),var(35)=11)||(helper(218),var(35)=14)
[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(56) !=0)||stateno=[27,28]
;triggerall = RoundState = 2 && Alive && time
triggerall = time>=10 && (stateno!=132) && (stateno!=[154,155]) && statetype != A
trigger1=(time>=10 && stateno=[27,28]);||(time>=3 && stateno=[100,101])
trigger1 = RoundState != 2
trigger2=(stateno=[27,28]);||(stateno=[100,101])||(StateNo = 5120 && AnimTime = 0)
trigger2 = p2bodydist x<-20;||(p2bodydist x<0 && facing*enemynear(helper(218),Var(36)),facing>0)
ctrl=1
[State -1, Stand]
type = ChangeState
value = 101
triggerall = !IsHelper
triggerall = (var(56) !=0)
;triggerall = RoundState = 2 && Alive && time
triggerall =0;stateno=100 &&time>=5
trigger1 = RoundState != 2
trigger2 = (p2stateno!=15300)||p2bodydist x<=0
trigger2 = (helper(218),var(35)!=13)||p2bodydist x<=0
trigger2 = (helper(218),var(35)!=[17,18])||p2bodydist x<=0
trigger2 = p2movetype=A||inguarddist||(p2bodydist x<250&&time>=30)||time>=180
;trigger3 = helper(218),var(35)=14&&p2bodydist x<50















[State -2]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
triggerall=time=0
triggerall = RoundState = 2 && Alive
trigger1=stateno=[5200,5210]
trigger1=numpartner=0
value      =5050
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)>0
triggerall = RoundState = 2 && Alive
trigger1=stateno=20
trigger2=stateno=40
trigger3=0;stateno=45
trigger4=stateno=10
value      = ifelse(stateno=45,ifelse(vel y >=0,51,50),ifelse(p2movetype=A,28,27))
ctrl=1
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(56)!=0
triggerall=stateno=[20,23]
trigger1=roundstate !=2
trigger2=p2bodydist x<-10
value      =0
ctrl=1



















































[State -1]
type = ChangeState
value =950;ifelse(random<=333,3000,ifelse(random<=666,3001,3002))+ifelse(statetype=A,100,0);ifelse(random<=250,720,ifelse(random<=500,730,ifelse(random<=750,750,740)));ifelse(random<=500,197,198);ifelse(statetype=A,ifelse(random<=350,2150,ifelse(random<=700,2125,2100)),ifelse(random<=350,1500,ifelse(random<=700,2400,2400)));ifelse(random<=350,6000,ifelse(random<=700,4000,4100));ifelse(random<=350,ifelse(numhelper(6061) = 1,6051,6050),ifelse(random<=700,6000,ifelse((var(29)=1),4100,4000)));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(56)=0
trigger1 = Command = "a"
trigger1 = statetype! = A
trigger1 =0;ctrl||stateno=[20,29]
trigger2 =0; ((stateno=[200,220])||stateno=310||(stateno=[400,420]))&&(movecontact||(var(19)&&var(53)))&&!(var(52)>1&&movecontact)


















































































[state -1]
type = null;CtrlSet
trigger1 = (Stateno=[200,499]) && AnimTime=0
value = 1

;===プレイヤー用(Player)===

;~~~スーパーコンボ(Super moves)~~~~

;アイアンクラッシュ(Iron Clash)
[State -1, death]
type = ChangeState
value = 3100
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = Power>=1000
triggerall = Statetype!=A
triggerall = (command = "iron"&&!(command="hold_b"&&command!="b")&&!(command="b"&&((command="hold_x"&&command="hold_y")||(command="hold_y"&&command="hold_z")||(command="hold_x"&&command="hold_z"))))||var(9)=3100
trigger1 = (ctrl||stateno=40||(stateno=[100,105])||stateno=195||stateno=5201)
trigger2 = (stateno=[200,720]) && !(movecontact && var(10)>1) && (!numhelper(10000)||var(9)=3100);Cancelation

;何想像してんのさ(Nanisouzoushitennosa)
[State -1, giga]
type = ChangeState
value = 3000+(statetype=A)*50
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = Power>=1000
triggerall = (command = "nanisouzou"&&!(command="hold_b"&&command!="b")&&!(command="b"&&((command="hold_x"&&command="hold_y")||(command="hold_y"&&command="hold_z")||(command="hold_x"&&command="hold_z"))))||var(9)=3000
trigger1 = (ctrl||stateno=40||(stateno=[100,105])||stateno=195||stateno=5201)
trigger2 = (stateno=[200,720]) && !(movecontact && var(10)>1) && (!numhelper(10000)||var(9)=3000);Cancelation

;~~~必殺技(Special moves)~~~~

;感電黒コゲ(Electric Shock)
[State -1, lance]
type = ChangeState
value = 1200
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = !numhelper(11200)
triggerall = Statetype!=A
triggerall = (command = "kurokoge"&&!(command="hold_b"&&command!="b"))||(var(9)=[1200,1220])
trigger1 = (ctrl||stateno=40||(stateno=[100,105])||stateno=195||stateno=5201)
trigger2 = (stateno=[200,720]) && !(movecontact && var(10)>1) && (!numhelper(10000)||(var(9)=[1100,1120]));Cancelation

;グンバツの脚(Gunbatsu Leg)
[State -1, lance]
type = ChangeState
value = 1100
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = !numhelper(11100)
triggerall = Statetype!=A
triggerall = (command = "gunbatsu"&&!(command="hold_b"&&command!="b"))||(var(9)=[1100,1120])
trigger1 = (ctrl||stateno=40||(stateno=[100,105])||stateno=195||stateno=5201)
trigger2 = (stateno=[200,720]) && !(movecontact && var(10)>1) && (!numhelper(10000)||(var(9)=[1100,1120]));Cancelation

;コレクション(Collection)
[State -1, bullet]
type = ChangeState
value = 1000+(statetype=A)*50
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = ((command = "collection"||command = "nanisouzou")&&!(command="hold_b"&&command!="b"))||(var(9)=[1000,1020])
trigger1 = (ctrl||stateno=40||(stateno=[100,105])||stateno=195||stateno=5201)
trigger2 = (stateno=[200,720]) && !(movecontact && var(10)>1) && (!numhelper(10000)||(var(9)=[1000,1020]));Cancelation

;~~システム系(System)~~~
;ガードキャンセル(Guard Cancel)
[State -1, lance]
type = ChangeState
value = 950
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = command = "guard_cancel"
trigger1 = (stateno=150||stateno=152)

;回り込み(Rolling)
[state -1,rolling]
type = ChangeState
value = 900-ifelse(command="holddown",500,700)*(numexplod(901))
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command="xy"&&command="z"&&command!="hold_b")||(command!="hold_x"&&command!="hold_y"&&command!="hold_z"&&command="b")
trigger1 = ctrl||((stateno=[100,105])&&time>=2)
trigger2 = (stateno=[200,799])&&time<4

;~~~~
;挑発(Taunt)
[State -1, taunt]
type = ChangeState
value = 195
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = command="s"||command="c"
triggerall = statetype=S;==立ち状態のみ
trigger1 = ctrl||((stateno=[100,105])&&time>=2)

;~~~~ダッシュ(Dash)~~~~

;ダッシュ(Dash)
[State -1, dash]
type = ChangeState
value = 100
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (fvar(13)=17&&P2dist X>=0)||(fvar(13)=-17&&P2dist X<0);command = "FF"
trigger1 = ctrl

;バックダッシュ(BackDash)
[State -1, backdash]
type = ChangeState
value = 105
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (fvar(13)=-17&&P2dist X>=0)||(fvar(13)=17&&P2dist X<0);command = "BB"
trigger1 = ctrl

;===スタンド技(Stand moves)

;S
[State -1, S]
type = ChangeState
value = 1900+ifelse(statetype=A,20,ifelse(command="holddown"||var(9)=1910,10,0))
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = command = "a"||(var(9)=[1900,1910])
trigger1 = (ctrl||stateno=40||(stateno=[100,105])||stateno=5201)
trigger2 = (stateno=200||stateno=210||stateno=220||stateno=310||stateno=315||stateno=320||stateno=400||stateno=410||stateno=420||stateno=520||stateno=525) && !(movecontact && var(10)>1);Cancelation
trigger3 = (stateno=600||stateno=610||stateno=620) && !(movecontact && var(10)>1);Cancelation

;~~~通常技(Basic moves)~~~~

;------
;投げ(Throw)
[State -1, throw]
type = ChangeState
value = 800
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = P2bodydist X<=ceil(36*const(size.xscale))&&P2movetype!=H&&P2statetype!=A&&!(P2statetype=L&&enemynear,alive)
triggerall = !var(31)
triggerall = command = "z"&&command!="hold_b"&&(command="holdback"||command="holdfwd")&&command!="holddown"&&command!="holdup"
trigger1 = ctrl

;立ち・しゃがみ弱(Stand/Crouch Light Attack)
[State -1, slp]
type = ChangeState
value = ifelse((command="holddown"&&stateno!=200),ifelse(prevstateno=400&&stateno=400,525,400),ifelse(prevstateno=200&&stateno=200,320,200))
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command = "x"&&command!="hold_b")&&!(command!="holddown"&&stateno=400)
trigger1 = ctrl||((stateno=[100,105])&&time>=2)
trigger2 = ((stateno=200 && animelemtime(3)>=3)||(stateno=400 && animelemtime(3)>=3)) && (!movecontact||var(10)<=0) && !var(12);連打キャンセル

;特殊技(4+中)
[State -1, blast]
type = ChangeState
value = 310
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command = "y" && command = "holdback" && command!="holddown"&&command!="hold_b")||var(9)=8
trigger1 = ctrl

;特殊技(6+中)
[State -1, blast]
type = ChangeState
value = 315
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command = "y" && command = "holdfwd" && command!="holddown"&&command!="hold_b")||var(9)=9
trigger1 = ctrl

;立ち・しゃがみ中(Stand/Crouch Medium)
[State -1, smp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=12,410,210)
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command = "y"&&command!="hold_b")||var(9)=2||var(9)=12
trigger1 = ctrl||((stateno=[100,105])&&time>=2)

;特殊技(3+強)
[State -1, shp]
type = ChangeState
value = 520
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command = "z"&&command="holddown"&&command="holdfwd"&&command!="hold_b")||var(9)=9
trigger1 = ctrl

;立ち・しゃがみ強(Stand/Crouch High Attack)
[State -1, shp]
type = ChangeState
value = ifelse(command="holddown"||var(9)=13,420,220)
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype!=A
triggerall = (command = "z"&&command!="hold_b")||var(9)=3||var(9)=13
trigger1 = ctrl||((stateno=[100,105])&&time>=2)

;ジャンプ弱(Jump Light Attack)
[State -1, jlp]
type = ChangeState
value = 600
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype=A
triggerall = (command = "x"&&command!="hold_b")
trigger1 = ctrl

;ジャンプ中(Jump Medium Attack)
[State -1, slp]
type = ChangeState
value = 610
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype=A
triggerall = (command = "y"&&command!="hold_b")||var(9)=2
trigger1 = ctrl

;ジャンプ強(Jump High Attack)
[State -1, slp]
type = ChangeState
value = 620
triggerall = var(56)=0 && !IsHelper && roundstate=2
triggerall = statetype=A
triggerall = (command = "z"&&command!="hold_b")||var(9)=3
trigger1 = ctrl

;空中ガード用(斜め上でも空中ガード可能に)(Air Guard)
[state -1,guard_air]
type = ChangeState
value = 120
triggerall = var(56)=0 && !(var(22)&&numhelper(10000)) && roundstate=2
triggerall = statetype=A&&inguarddist
triggerall = command="holdback"
trigger1 = ctrl && ((command="holdback"&&P2dist X>=0&&statetype=A&&P2dist X>=0)||(command="holdfwd"&&statetype=A&&P2dist X<0))


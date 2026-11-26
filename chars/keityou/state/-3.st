[statedef -3]
;-----------------------------------
; 飛び道具検知用ヘルパー
[State -3,]
type=helper
trigger1=!NumHelper(40005)
trigger1=roundstate=2
trigger1=alive
helpertype=normal
name="AI"
stateno=40005
ID=40005
pos=9999,9999
keyctrl=0
pausemovetime=0
supermovetime=0
persistent = 0

[State -3, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(40005)
trigger1= stateno!=40005
value=40005
;-----------------------------------
[State -3, AI起動用ヘルパー]
type=helper
trigger1=!NumHelper(50000)
trigger1=roundstate=2
trigger1=alive
;trigger1=var(59) = 0
;Trigger1=(PrevStateNo=[190,194])||PrevStateNo=5900||(PrevStateNo=[25195,25199])
Trigger1=ctrl&&stateno=0
helpertype=normal
name="AI"
stateno=50000
ID=50000
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

[State -3, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(50000)
trigger1= stateno!=50000
value=50000
;---------------------------------------------------------------------------
;-AIフラグ-
[State -3, AIフラグセット]
type = VarSet
triggerall = !var(58) 
triggerall = RoundState = [1,2]
trigger1 = Command = "AI_58"
trigger2 = Command = "AI_01"
trigger3 = Command = "AI_02"
trigger4 = Command = "AI_03"
trigger5 = Command = "AI_04"
trigger6 = Command = "AI_05"
trigger7 = Command = "AI_06"
trigger8 = Command = "AI_07"
trigger9 = Command = "AI_08"
trigger10 = Command = "AI_09"
trigger11 = Command = "AI_10"
trigger12 = Command = "AI_11"
trigger13 = Command = "AI_12"
trigger14 = Command = "AI_13"
trigger15 = Command = "AI_14"
trigger16 = Command = "AI_15"
trigger17 = Command = "AI_16"
trigger18 = Command = "AI_17"
trigger19 = Command = "AI_18"
trigger20 = Command = "AI_19"
trigger21 = Command = "AI_20"
trigger22 = Command = "AI_21"
trigger23 = Command = "AI_22"
trigger24 = Command = "AI_23"
trigger25 = Command = "AI_24"
trigger26 = Command = "AI_25"
trigger27 = Command = "AI_26"
trigger28 = Command = "AI_27"
trigger29 = Command = "AI_28"
trigger30 = Command = "AI_29"
trigger31 = Command = "AI_30"
trigger32 = Command = "AI_31"
trigger33 = Command = "AI_32"
trigger34 = Command = "AI_33"
trigger35 = Command = "AI_34"
trigger36 = Command = "AI_35"
trigger37 = Command = "AI_36"
trigger38 = Command = "AI_37"
trigger39 = Command = "AI_38"
trigger40 = Command = "AI_39"
trigger41 = Command = "AI_40"
trigger42 = Command = "AI_41"
trigger43 = Command = "AI_42"
trigger44 = Command = "AI_43"
trigger45 = Command = "AI_44"
trigger46 = Command = "AI_45"
trigger47 = Command = "AI_46"
trigger48 = Command = "AI_47"
trigger49 = Command = "AI_48"
trigger50 = Command = "AI_49"
trigger51 = Command = "AI_50"
trigger52 = Command = "AI_51"
trigger53 = Command = "AI_52"
trigger54 = Command = "AI_53"
trigger55 = Command = "AI_54"
trigger56 = Command = "AI_55"
trigger57 = Command = "AI_56"
trigger58 = Command = "AI_57"
Trigger59 = NumHelper(20000) > 0
Trigger59 = Helper(20000),var(59)
;trigger60 = RoundState = 2  ;常時AI起動トリガー　
var(59) = 1

[state -3, AIレベル]
type = VarSet
trigger1 = var(59) = 1
trigger1 = roundstate = 2
v = 58
Value = 8 ;1～12の値で変更
;===========================================================================
;commonに移動したら何もなくなっちまったよ

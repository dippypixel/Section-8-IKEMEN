[Statedef -2]
;---------------------------------------------------------------
;          攻撃補正
;---------------------------------------------------------------
[State -2];補正
type = AttackMulSet
trigger1 = 1
value = 1*fvar(1)
ignorehitpause = 1

[State -2];補正
type = Varset
trigger1 = fvar(1) < 0
fv = 1
value = 0
ignorehitpause = 1

[State -2];補正
type = Varset
trigger1 = enemy,movetype != H
trigger2 = enemy,stateno = [120,155]
fv = 1
value = 1
ignorehitpause = 1

[State -2];7500_補正
type = Varset
trigger1 = NumHelper(7500) > 0
trigger1 = helper(7500),movehit
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0

[State -2];7650_補正
type = Varset
trigger1 = NumHelper(7650) > 0
trigger1 = helper(7650),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0

[State -2];11100_補正
type = Varset
trigger1 = NumHelper(11100) > 0
trigger1 = helper(11100),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.99
ignorehitpause = 1 
persistent = 0

[State -2];4450_補正
type = Varset
trigger1 = NumHelper(4450) > 0
trigger1 = helper(4450),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0

[State -2];7800_補正
type = Varset
trigger1 = NumHelper(7800) > 0
trigger1 = helper(7800),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0

[State -2];6000_補正
type = Varset
trigger1 = NumHelper(6000) > 0
trigger1 = helper(6000),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0

[State -2];6131_補正
type = Varset
trigger1 = NumHelper(6131) > 0
trigger1 = helper(6131),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0

[State -2];13300_補正
type = Varset
trigger1 = NumHelper(13300) > 0
trigger1 = helper(13300),movehit
trigger1 = fvar(1) < 0
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 
persistent = 0
;---------------------------------------------------------------
;          hit数計測
;---------------------------------------------------------------
[State -2];ヒット数計測
type = Varadd
trigger1=movehit=1
v = 15
value = 1
ignorehitpause = 1
persistent= 0

[State -2];補正
type = Varset
trigger1 = var(15) < 4
v = 15
value = 0
ignorehitpause = 1

[State -2]
type = Varset
trigger1 = NumHelper(7500) > 0
trigger1 = helper(7500),movehit
fv = 1
value = fVar(1)*0.93
ignorehitpause = 1 

;---------------------------------------------------------------
くらいボイス
;---------------------------------------------------------------
[State -1, VarRandom]
Type = VarRandom
TriggerAll = Time = 0
Trigger1 = StateNo = 5000
Trigger2 = StateNo = 5010
Trigger3 = StateNo = 5020
Trigger4 = StateNo = 5070
V = 11
Range = 3,8
IgnoreHitPause = 1

[State -2, 喰らい]
Type = PlaySnd
TriggerAll = Time = 1
TriggerAll = alive = 1
Trigger1 = StateNo = 5000
Trigger2 = StateNo = 5010
Trigger3 = StateNo = 5020
Trigger4 = StateNo = 5070
Value = s11,var(11)
volume = 255


;---------------------------------------------------------------
;          起き上がり
;---------------------------------------------------------------
[State -2,起き上がり]
type = PlaySnd
Trigger1 = StateNo = 5120
Trigger1 =time =1
Value = s11,1
Channel = 0
Volume=255

;---------------------------------------------------------------
;          その他
;---------------------------------------------------------------
[State -2, StopSnd]
type = StopSnd
trigger1 = command != "hold_x"
trigger2 = Power >= 5000
channel = 2

[State -2, StopSnd]
type = RemoveExplod
trigger1 = command != "hold_x"
trigger2 = Power >= 5000
ID = 130
;---------------------------------------------------------------
;          根性値
;---------------------------------------------------------------
[State -2, 根性値]
type = DefenceMulSet
trigger1 = Life < 300
value = 0.7

[State -2, 根性値]
type = DefenceMulSet
trigger1 = Life < 100
value = 0.4
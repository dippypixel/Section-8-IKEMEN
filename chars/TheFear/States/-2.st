;--- STATEDEF -2 ---
;Think of StateDef -2 as, "passive" states.
;They are always active. The trigger conditions are checked every single tick the engine renders.
;One immediate exception to this, is if the character is within an enemy's custom state. (e.g. being thrown.)

[Statedef -2]

[State -2, Super Finish Background]
type = Helper
triggerall = !NumHelper(909090)
triggerall = WinKO
trigger1 = StateNo = 3000 || StateNo = 3100 || StateNo = 3202
helpertype = Normal
name = "FINISH"
stateno = 909090
ID = 909090
pos = 0,0
postype = left
facing = 1
ownpal = 1
ignorehitpause = 1

[State -2, Get full HP when proceed in the next round (mostly for Survival and Turns modes)]
type = LifeSet
trigger1 = RoundState < 2
value = LifeMax

;---------------------------------------------------------------------------
; Damage Dampener
[State -2, Reset Var when the opponent recovers]
type = VarSet
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype != H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
fvar(10) = 1

[State -2, Final Dampen]
type = Null
trigger1 = (fvar(11) := cond(fvar(10)>0.1,fvar(10),0.1)) || 1
ignorehitpause = 1

[State -2, Dampener itself]
type = AttackMulSet
trigger1 = 1
value = fvar(11)
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Groundbounce]
type = Explod
triggerall = numenemy
triggerall = enemynear,movetype = H
triggerall = (enemynear,time = 1)
trigger1 = (enemynear,stateno = 3214)
anim = 6008
pos = 0,0
postype = p2
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State -2, Groundbounce]
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,movetype = H
triggerall = (enemynear,time = 1)
trigger1 = (enemynear,stateno = 3214)
value = s5100,1
ignorehitpause = 1
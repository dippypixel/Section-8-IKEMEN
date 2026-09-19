;--- STATEDEF -3 ---
;Think of StateDef -3 as, "conditional" states.
;These states act whenever the conditions of the trigger are met.
;One example of this would be to heal your character for 50 HP every time they land from a jump.

[Statedef -3]

[State -3, Invincible before and after the match]
type = NotHitBy
trigger1 = RoundState != 2
trigger1 = 0 && Var(5):=(Var(5)|2)-2
trigger2 = RoundState = 2 && Ctrl
trigger2 = 0 && Var(5):=(Var(5)|2)
trigger3 = !(Var(5)&2)
value2 = SCA
time = 2
ignorehitpause = 1

[State -3, GetHit Snd]
type = PlaySnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < 250
value = s5000,0+random%2
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = PlaySnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear,hitdefattr = SCA,SA,HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000,5199])
value = s5000,0+random%2
channel = 0
ignorehitpause = 1

[State -3, StopSnd for Run]
type = StopSnd
trigger1 = StateNo != 100
channel = 2
ignorehitpause = 1

[State -3, AfterImageTime]
type = AfterImageTime
trigger1 = (stateno != [700,709])
trigger1 = (stateno != [3000,3209])
time = 0
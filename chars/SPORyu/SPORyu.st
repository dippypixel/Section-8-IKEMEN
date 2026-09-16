;Var(1): Burn Effect
;Var(2): Opponent Recognition
;Var(3): Random Shinkuu Hadoken, Tatsumakisenpuukyaku
;Var(4): Tatsumakisenpuukyaku air spins
;Var(5): Random Shinkuu Hadoken, Tatsumakisenpuukyaku
;Var(6): Random Tatsumakisenpuukyaku speed
;Var(7): VERY PISSED OFF MODE
;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

[Statedef 170]
type = S
anim = 170

[State 170, ]
type = Null
trigger1 = 1 

[Statedef 180]
type = S

[State 180,st ]
type = ChangeState
trigger1 = time = 0
value = 181+random%3

[Statedef 181]
type = S
anim = 180

[State 1801,asp ]
type = AssertSpecial
trigger1 = time < 240
flag = roundnotover

[State 170, ]
type = Null
trigger1 = 1 

[Statedef 182]
type = S
anim = 181

[State 182,Sn ]
type = PlaySnd
trigger1 = time = 0
value = 182,0
channel = 0

[State 182,Sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 182,1
freqmul = 1.2

[State 182,Sn ]
type = PlaySnd
trigger1 = animelem = 12
value = 5000,3


[State 1801,asp ]
type = AssertSpecial
trigger1 = time < 200
flag = roundnotover

[State 170, ]
type = Null
trigger1 = 1 


[Statedef 183]
type = S
anim = 183

[State 1801,asp ]
type = AssertSpecial
trigger1 = time < 260
flag = roundnotover

[State 182,Sn ]
type = PlaySnd
trigger1 = animelem = 14
value = 5000,4

[State 170, ]
type = Null
trigger1 = 1 





[Statedef 1800]
type = S
anim = 8888

[State 1800,st ]
type = ChangeState
trigger1 = time = 180
value = 1801

[Statedef 1801]
type = S
anim = 8888

[State 1801,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1800,0

[State 1801,ev ]
type = EnvColor
trigger1 = time = 0
trigger2 = time = 50
time = 3

[State 1801,asp ]
type = AssertSpecial
trigger1 = time < 720
flag = roundnotover
flag2 = noFG

[State 1801,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = nomusic
flag2 = nobardisplay

[State 1801,va ]
type = VarAdd
trigger1 = time >= 0 && var(1) < 250
v =  1
value = 15

[State 1800, ]
type = Pause
trigger1 = time >= 0
time = 3
movetime = 3

[State 1800,bigass portrait ]
type = Explod
trigger1 = time = 0
anim = 9998
ID = 1801
pos = -30,-200
postype = left
bindtime = 1
vel = 0,4
removetime = 50
pausemovetime = 99999
sprpriority = 8
ontop = 0
ownpal = 1

[State 1800,bigass portrait ]
type = Explod
trigger1 = time = 53
anim = 9998
ID = 1801
pos = -30,0
postype = left
bindtime = 1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 7
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53
anim = 9997
ID = 1801
pos = 0,0
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 8
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53 && parent, var(2) = 0
anim = 10001+random%5
ID = 1801
pos = 160,185
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 9
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53 && parent, var(2) = 1
anim = 10097
ID = 1801
pos = 160,185
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 9
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53 && parent, var(2) = 2
anim = 10096
ID = 1801
pos = 160,185
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 9
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53 && parent, var(2) = 3
anim = 10094
ID = 1801
pos = 160,185
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 9
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53 && parent, var(2) = 4
anim = 10098
ID = 1801
pos = 160,185
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 9
ontop = 0
ownpal = 1

[State 1800,bigass text box ]
type = Explod
trigger1 = time = 53 && parent, var(2) = [5,6]
anim = 10095
ID = 1801
pos = 160,185
postype = left
bindtime = -1
vel = 0,0
removetime = -1
pausemovetime = 99999
sprpriority = 9
ontop = 0
ownpal = 1

[State 1800,pf ]
type = BGPalFX
trigger1 = time = [0,50]
time = 2
color = 256-var(1)

[State 1800,pf ]
type = BGPalFX
trigger1 = time > 50
time = 2
color = 1

[Statedef 190]
anim = 190
ctrl = 0

[State 190,st ]
type = ChangeState
trigger1 = time = 0 && (enemy, name = "Sakura")
trigger2 = time = 0 && (enemy, name = "Sakura Kasugano")
trigger3 = time = 0 && (enemy, name = "cvssakura")
value = 193
ctrl = 0

[State 190,st ]
type = ChangeState
trigger1 = time = 0 && (enemy, name = "Gouki")
trigger2 = time = 0 && (enemy, name = "Akuma")
trigger3 = time = 0 && (enemy, name = "Shin Gouki")
trigger4 = time = 0 && (enemy, name = "Shin Akuma")
trigger5 = time = 0 && (enemy, name = "cvsgouki")
trigger6 = time = 0 && (enemy, name = "Rare Akuma")
value = 196
ctrl = 0


[State 190,st ]
type = ChangeState
trigger1 = time = 0
value = 191+random%2
ctrl = 0



[Statedef 191]
anim = 190
ctrl = 0

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro

[State 190,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0


[Statedef 192]
anim = 191
ctrl = 0

[State 192,ev ]
type = EnvColor
trigger1 = time = 180
time = 3

[State 3001,ex ]
type = Explod
trigger1 = timemod = 2,0 && time = [20,180]
anim = 7010
pos = -10,-40
facing = 1
bindtime = 1
scale = .7, .7
random = 60,70
vel = 0,-3
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = timemod = 4,0 && time = [20,180]
anim = 1002
pos = 32,-53
facing = -1
ID = 3000
bindtime = 1
scale = .3, .3
random = 20,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = timemod = 4,0 && time = [20,180]
anim = 1002
pos = -39,-46
facing = 1
ID = 3000
bindtime = 1
scale = .3, .3
random = 20,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = timemod = 3,0 && time = [20,180]
anim = 1002
pos = 20,-46
facing = -1
ID = 3000
bindtime = 1
scale = .4, .4
random = 30,70
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = timemod = 7,0 && time = [20,180]
anim = 3105
pos = -10,0
facing = 1
ID = 3000
bindtime = 1
random = 0,0
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 192,re ]
type = RemoveExplod
trigger1 = time = 180

[State 3001,ex ]
type = Explod
trigger1 = time = 181
anim = 1002
pos = 50,-10
facing = -1
ID = 3000
bindtime = 1
random = 0,0
sprpriority = 3
scale = 1,.3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = time = 181
anim = 7002
pos = 0,-40
facing = 1
ID = 3000
bindtime = 1
random = 0,0
sprpriority = 3
scale = 1.2,1.2
ownpal = 1
removeongethit = 1


[State 192,sn ]
type = PlaySnd
trigger1 = animelem = 2 && anim = 191
value = 800,0
channel = 0

[State 192,sn ]
type = PlaySnd
trigger1 = anim = 1912 && animelem = 2
value = 191,2

[State 192,sn ]
type = PlaySnd
trigger1 = anim = 191 && (time = [20,180]) && (timemod = 8,0) && (random < 400)
value = 192,0


[State 0, ]
type = EnvShake
trigger1 = (time = [20,180]) && (timemod = 10,0)
time = 10
ampl = -2

[State 192,sn ]
type = PlaySnd
trigger1 = animelem = 3 && anim = 191
value = 191,0

[State 192,sn ]
type = PlaySnd
trigger1 = time = 180
value = 191,1

[State 192,sn ]
type = PlaySnd
trigger1 = time = 180
value = 5000,2

[State 192,an ]
type = ChangeAnim
trigger1 = time = 180
value = 1912

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro

[State 190,st ]
type = ChangeState
trigger1 = anim = 1912 && animtime = 0
value = 0
ctrl = 0


[Statedef 193]
anim = 193
ctrl = 0


[State 1931,bgm ]
type = PlaySnd
trigger1 = time = 0
value = 1933,0
channel = 1
loop = 1

[State 193,hp ]
type = Helper
trigger1 = time = 0
name = "IntroVsSakura"
stateno = 1931
ID = 1931
ownpal = 1


[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro

[State 190,st ]
type = ChangeState
trigger1 = animtime = 0
value = 194
ctrl = 0

[Statedef 194]
anim = 0
ctrl = 0

[State 190,st ]
type = ChangeState
trigger1 = numhelper = 0
value = 0
ctrl = 0

[Statedef 1931]
anim = 8888
ctrl = 0



[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noFG


[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12002
removetime = -1
ID = 12002
postype = left
pos = 160,240
ontop = 1
sprpriority = 3

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120021
removetime = -1
ID = 12002
postype = left
pos = 160,9
ontop = 1
sprpriority = 3


[State 190,st ]
type = ChangeState
trigger1 = parent, stateno != 193
value = 1932

[Statedef 1932]
anim = 8888
ctrl = 0

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noFG


[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12000
removetime = -1
ID = 12000
postype = back
pos = 80,230
ontop = 1

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12001
removetime = -1
ID = 12001
postype = back
pos = 240,230
ontop = 1
sprpriority = 2

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 99972
removetime = -1
ID = 99972
postype = left
pos = -160,-180
ontop = 1
sprpriority = 2

[State 1931,me ]
type = ModifyExplod
trigger1 = time <= 10
ID = 99972
scale = 1,.1*time

[State 1931,ex ]
type = Explod
trigger1 = time = 10
anim = 12010
removetime = -2
ID = 12010
postype = left
pos = 160,180
ontop = 1
sprpriority = 2

[State 190,st ]
type = ChangeState
trigger1 = numexplod(12010) = 0 && time > 11
value = 1933

[Statedef 1933]
anim = 8888
ctrl = 0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 99972
removetime = 20
ID = 99972
postype = left
pos = -160,-180
ontop = 1
sprpriority = 2

[State 1931,me ]
type = ModifyExplod
trigger1 = time <= 10
ID = 99972
scale = 1,.1-(.1*time)

[State 1933,ex ]
type = RemoveExplod
trigger1 = time = 0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12002
removetime = 20
ID = 12002
postype = left
pos = 160,0
ontop = 1
sprpriority = 3

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120001
removetime = 30
ID = 12000
postype = back
pos = 80,230
ontop = 1
vel = -10,0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120011
removetime = 30
ID = 12001
postype = back
pos = 240,230
ontop = 1
sprpriority = 2
vel = 10,0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120021
removetime = -1
ID = 12002
postype = left
pos = 160,249
ontop = 1
sprpriority = 3

[State 0, ]
type = DestroySelf
trigger1 = time = 10

[Statedef 196]
anim = 196
ctrl = 0

[State 1931,bgm ]
type = PlaySnd
trigger1 = time = 0
value = 1933,0
channel = 1
loop = 1

[State 193,hp ]
type = Helper
trigger1 = time = 0
name = "IntroVsGouki"
ID = 1961
stateno = 1961
ownpal = 1

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro

[State 190,st ]
type = ChangeState
trigger1 = animtime = 0
value = 194
ctrl = 0

[Statedef 1961]
anim = 8888
ctrl = 0

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noFG

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12002
removetime = -1
ID = 12002
postype = left
pos = 160,240
ontop = 1
sprpriority = 3

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120021
removetime = -1
ID = 12002
postype = left
pos = 160,9
ontop = 1
sprpriority = 3


[State 190,st ]
type = ChangeState
trigger1 = parent, stateno != 196
value = 1962

[Statedef 1962]
anim = 8888
ctrl = 0

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 190,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noFG


[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12021
removetime = -1
ID = 12000
postype = back
pos = 80,230
ontop = 1

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12022
removetime = -1
ID = 12001
postype = back
pos = 240,230
ontop = 1
sprpriority = 2

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 99972
removetime = -1
ID = 99972
postype = left
pos = -160,-180
ontop = 1
sprpriority = 2

[State 1931,me ]
type = ModifyExplod
trigger1 = time <= 10
ID = 99972
scale = 1,.1*time

[State 1931,ex ]
type = Explod
trigger1 = time = 10
anim = 12020
removetime = -2
ID = 12020
postype = left
pos = 160,180
ontop = 1
sprpriority = 2

[State 190,st ]
type = ChangeState
trigger1 = numexplod(12020) = 0 && time > 11
value = 1963

[Statedef 1963]
anim = 8888
ctrl = 0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 99972
removetime = -1
ID = 99972
postype = left
pos = -160,-180
ontop = 1
sprpriority = 2

[State 1931,me ]
type = ModifyExplod
trigger1 = time <= 10
ID = 99972
scale = 1,.1-(.1*time)

[State 1933,ex ]
type = RemoveExplod
trigger1 = time = 0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 12002
removetime = 20
ID = 12002
postype = left
pos = 160,0
ontop = 1
sprpriority = 3

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120001
removetime = 30
ID = 12000
postype = back
pos = 80,230
ontop = 1
vel = -10,0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120022
removetime = 30
ID = 12001
postype = back
pos = 240,230
ontop = 1
sprpriority = 2
vel = 10,0

[State 1931,ex ]
type = Explod
trigger1 = time = 0
anim = 120021
removetime = 20
ID = 12002
postype = left
pos = 160,249
ontop = 1
sprpriority = 3

[State 0, ]
type = DestroySelf
trigger1 = time = 10






[Statedef 195]
type    = S
Movetype = I
physics = S
ctrl = 0
anim = 195
sprpriority = 1
velset = 0,0

[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2 && var(7) = 0
value = 5000,random%5
channel = 0

[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2 && var(7) = 1
value = 3201,random%6
channel = 0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;-------
;STANDING ATTACKS;
;-----
[Statedef 200]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 200
sprpriority = 1
poweradd = 10
velset = 0,0
juggle = 3

[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 10,8
sparkno = S7000
sparkxy = 0,-86
hitsound = S200,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -5,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 205]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 205
sprpriority = 1
poweradd = 10
velset = 0,0
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
damage = 32,0
pausetime = 10,8
sparkno = S7000
sparkxy = -10,-86
hitsound = S200,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -4,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 210]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 210
sprpriority = 1
poweradd = 15
velset = 0,0
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-80
hitsound = S200,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 215]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 215
sprpriority = 1
poweradd = 15
velset = 0,0
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 55,0
pausetime = 12,10
sparkno = S7001
sparkxy = -20,-80
hitsound = S200,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 220]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 220
sprpriority = 1
poweradd = 30
velset = 0,0
juggle = 7



[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 220,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 5


[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = 0,-75
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 225]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 225
sprpriority = 1
poweradd = 30
velset = 0,0
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 75,0
pausetime = 12,12
sparkno = S7002
sparkxy = 0,-80
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 230]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 230
sprpriority = 1
poweradd = 10
velset = 0,0
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 1,2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
damage = 28,0
pausetime = 10,8
sparkno = S7000
sparkxy = 0,-36
hitsound = S200,0
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -5,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 240]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 240
sprpriority = 1
poweradd = 15
velset = 0,0
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 48,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-90
hitsound = S200,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 245]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 245
sprpriority = 1
poweradd = 15
velset = 0,0
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0 && prevstateno != 760
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = -20,-60
hitsound = S200,1
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,-2
getpower = 15,7
givepower = 7,15

[State 200,hd ]
type = HitDef
trigger1 = time = 0 && prevstateno = 760
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = -20,-60
hitsound = S200,1
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,-4
air.velocity = -5,-2
getpower = 15,7
givepower = 7,15
fall = 1
fall.recover = 0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 250]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 250
sprpriority = 1
poweradd = 30
velset = 0,0
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 68,0
pausetime = 12,12
sparkno = S7002
sparkxy = 0,-90
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime =18
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 255]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 255
sprpriority = 1
poweradd = 30
velset = 0,0
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 38,0
pausetime = 12,12
sparkno = S7002
sparkxy = 0,-90
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = -3,0
air.velocity = -2,-2
getpower = 7,7
givepower = 7,7

[State 200,hd ]
type = HitDef
trigger1 = animelem = 6
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 38,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,2
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 18
ground.hittime =18
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 7,7
givepower = 7,7

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;COMMAND ATTACKS
[Statedef 300]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 300
sprpriority = 1
poweradd = 30
juggle = 4
velset = 2,-6

[State 1201,nhb ]
type = NotHitBy
trigger1 = time = [5,23]
value = SCA,AP

[State 300,g ]
type = Gravity
trigger1 = 1

[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 201,3

[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
ground.velocity = -3,-6
air.velocity = -4,-6
getpower = 15,7
givepower = 7,15
fall = 1
fall.recover = 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 20
trigger1 = vel Y > 0
value = 5110



[Statedef 310]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 310
sprpriority = 1
poweradd = 100
velset = 0,0
juggle = 3

[State 310,sn ]
type = PlaySnd
trigger1 = time = 0
value = 800,0
channel = 0

[State 310,sn ]
type = PlaySnd
trigger1 = animelem = 21
value = 201,3
channel = 0

[State 310,sn ]
type = PlaySnd
trigger1 = animelem = 22
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag =
animtype = hard
damage = 250,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-50
hitsound = S191,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
ground.velocity = -9,-5
air.velocity = -9,-5
getpower = 150,70
givepower = 7,15
fall = 1
fall.recover = 0
envshake.time = 16
envshake.ampl = -20
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
palfx.time = 70
palfx.add = 80,-70,-200  
palfx.invertall = 1
palfx.sinadd = 0,30,0,9
palfx.color = 1

[State 310,ex ]
type = Explod
trigger1 = movehit
anim = 3106
pos = 0,-30
postype = p2
bindtime = 1
sprpriority = 4
ownpal = 1
ignorehitpause = 1
persistent = 0



[State 1000,vs ]
type = VarSet
trigger1 = movehit
v =  1 ;Burn Effect
value = 1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;CROUCHING ATTACKS

[Statedef 400]
type    = C
Movetype = A
physics = C
ctrl = 0
anim = 400
sprpriority = 1
poweradd = 10
velset = 0,0
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 10,8
sparkno = S7000
sparkxy = 0,-50
hitsound = S200,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -5,0
ground.cornerpush.veloff = -7
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[Statedef 410]
type    = C
Movetype = A
physics = C
ctrl = 0
anim = 410
sprpriority = 1
poweradd = 20
velset = 0,0
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-50
hitsound = S200,1
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,-2
getpower = 15,7
givepower = 7,15

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[Statedef 420]
type    = C
Movetype = A
physics = C
ctrl = 0
anim = 420
sprpriority = 1
poweradd = 30
velset = 0,0
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-86
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[Statedef 430]
type    = C
Movetype = A
physics = C
ctrl = 0
anim = 430
sprpriority = 1
poweradd = 10
velset = 0,0
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MFD
guardflag = L
damage = 30,0
pausetime = 10,8
sparkno = S7000
sparkxy = 0,-10
hitsound = S200,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -4,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[Statedef 440]
type    = C
Movetype = A
physics = C
ctrl = 0
anim = 440
sprpriority = 1
poweradd = 20
velset = 0,0
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MFD
guardflag = L
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-10
hitsound = S200,1
guardsound = 6,0
ground.type = low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,-2
getpower = 15,7
givepower = 7,15


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[Statedef 450]
type    = C
Movetype = A
physics = C
ctrl = 0
anim = 450
sprpriority = 1
poweradd = 30
velset = 0,0
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MFD
guardflag = L
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-10
hitsound = S200,2
guardsound = 6,0
ground.type = trip
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = -3,-2
getpower = 15,7
givepower = 7,15
fall = 1
fall.recover = 0


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;AIR ATTACKS

[Statedef 600]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 600
sprpriority = 1
poweradd = 10
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 10,8
sparkno = S7000
sparkxy = -10,-56
hitsound = S200,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -4,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10 


[Statedef 610]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 610
sprpriority = 1
poweradd = 15
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-80
hitsound = S200,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 15
ground.velocity = -5,0
air.velocity = -3,12
air.fall = 1
fall.recover = 0
getpower = 15,7
givepower = 7,15
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4


[Statedef 620]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 620
sprpriority = 1
poweradd = 30
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-50
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15
 

[Statedef 630]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 630
sprpriority = 1
poweradd = 10
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 10,8
sparkno = S7000
sparkxy = 0,-60
hitsound = S200,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -4,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10 

[Statedef 635]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 635
sprpriority = 1
poweradd = 10
juggle = 3


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,4

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
damage = 30,0
pausetime = 10,8
sparkno = S7000
sparkxy = 0,-36
hitsound = S200,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 14
air.hittime = 10
ground.velocity = -4,0
air.velocity = -2,-2
getpower = 10,5
givepower = 5,10 


[Statedef 640]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 640
sprpriority = 1
poweradd = 15
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-60
hitsound = S200,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 15
ground.velocity = -5,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15

[Statedef 645]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 645
sprpriority = 1
poweradd = 15
juggle = 5


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,5

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = medium
damage = 50,0
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-60
hitsound = S200,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 15
ground.velocity = -5,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15

[Statedef 650]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 650
sprpriority = 1
poweradd = 30
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 3
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15

[Statedef 655]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 655
sprpriority = 1
poweradd = 30
juggle = 7


[State 200, sn]
type = PlaySnd
trigger1 = animelem = 2
value = 200,6

[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-50
hitsound = S200,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 15,7
givepower = 7,15


;-------------------
;THROWS
[Statedef 700]
type = S
movetype = A
physics = S
velset = 0,0
anim = 720
ctrl = 0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NT
hitflag = MF
priority = 4, miss
guardflag = 
sparkno = -1
hitsound = S700,1
p1stateno = 701
p2stateno = 702
p1facing = ifelse(command="holdfwd",-1,1)
p2facing = 1
fall = 1
getpower = 0,0
givepower = 0,0

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 701]
type = S
movetype = A
physics = S
velset = 0,0
anim = 700
ctrl = 0

[State 701,w ]
type = Width
trigger1 = time >= 0
edge = 60,60


[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 1, >= 0) && (animelem = 2, < 0)
pos = 40,0

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 2, >= 0) && (animelem = 3, < 0)
pos = 26,-73

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 3, >= 0) && (animelem = 4, < 0)
pos = 0,-94

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 4, >= 0) && (animelem = 5, < 0)
pos = -35,-85

[State 701,tb ]
type = TargetBind
trigger1 = animelem = 5
pos = -35,-35

[State 701,tla ]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -80

[State 701,ts ]
type = TargetState
trigger1 = animelem = 5
value = 703

[State 701,turn ]
type = Turn
trigger1 = animtime = 0

[State 701,pa ]
type = PosAdd
trigger1 = animelem = 8
x = 7

[State 701,pa ]
type = PosAdd
trigger1 = animelem = 9
x = 10

[State 701,ev ]
type = EnvShake
trigger1 = animelem = 6
time = 10

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 702]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 702,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 701

[State 702,sb ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 703]
type = S
movetype = H
physics = N
velset = 4,14
ctrl = 0

[State 702,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 702

[State 702,sb ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 703,ss ]
type = SelfState
trigger1 = pos Y >= -10
value = 5100

[Statedef 710]
type = S
movetype = A
physics = S
velset = 0,0
anim = 720
ctrl = 0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NT
hitflag = MF
priority = 4, miss
guardflag = 
sparkno = -1
hitsound = S700,1
p1stateno = 711
p2stateno = 712
p1facing = ifelse(command="holdfwd",-1,1)
p2facing = 1
fall = 1
getpower = 0,0
givepower = 0,0

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 711]
type = S
movetype = A
physics = S
velset = 0,0
anim = 710
ctrl = 0

[State 701,w ]
type = Width
trigger1 = time >= 0
edge = 70,70


[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 1, >= 0) && (animelem = 2, < 0)
pos = 40,0

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 2, >= 0) && (animelem = 3, < 0)
pos = 14,-76

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 3, >= 0) && (animelem = 4, < 0)
pos = 17,-61

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 4, >= 0) && (animelem = 5, < 0)
pos = 0,-60

[State 701,tb ]
type = TargetBind
trigger1 = animelem = 5,0
pos = -101,-60

[State 701,tla ]
type = TargetLifeAdd
trigger1 = animelem = 5,1
value = -80

[State 701,ts ]
type = TargetState
trigger1 = animelem = 5
value = 713

[State 701,turn ]
type = Turn
trigger1 = animtime = 0

[State 711,pa ]
type = PosAdd
trigger1 = animelem = 3
x = -30

[State 711,pa ]
type = PosAdd
trigger1 = animelem = 4
x = -10


[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 712]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 702,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 711


[Statedef 713]
type = S
movetype = H
physics = N
velset = 4,-4
ctrl = 0

[State 702,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 712

[State 713,g ]
type = Gravity
trigger1 = time >= 0

[State 703,ss ]
type = SelfState
trigger1 = pos Y >= -10
value = 5100









[Statedef 750]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 750
sprpriority = -2
velset = 0,0

[State 750,sn ]
type = PlaySnd
trigger1 = time = 0
value = 201,random%2
channel = 0

[State 750,vel ]
type = VelSet
trigger1 = AnimElem = 3
x = 6.5

[State 750,velB ]
type = VelAdd
trigger1 = time > 12
x = -.1 

[State 750, ]
type = HitBy
trigger1 = time >= 0
value = SCA,AT

[State 1140,ex ]
type = AfterImage
trigger1 = time = 3
time = 20
length = 12
palbright = 30,30,30
palcontrast = 120,120,120
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.75,.75
trans = add1

[State 750,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 750, no push]
type = PlayerPush
trigger1 = Time > 0
value = 0


[Statedef 760]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 760
sprpriority = -2
velset = 0,0

[State 750,sn ]
type = PlaySnd
trigger1 = time = 0
value = 191,2
channel = 0

[State 750, ]
type = HitBy
trigger1 = time >= 0
value = SCA,AT

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 30
length = 12
palbright = 30,30,30
palcontrast = 120,120,120
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.75,.75
trans = add1

[State 750,end ]
type = ChangeState
triggerall = time > 4
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
value = 245
ctrl = 0

[State 750,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 750, no push]
type = PlayerPush
trigger1 = Time > 0
value = 0




[Statedef 800]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 800
velset = 0
sprpriority = 2

[State 3001,ex ]
type = Explod
trigger1 = timemod = 2,0
anim = 7010
pos = -10,-40
facing = 1
bindtime = 1
scale = .7, .7
random = 60,70
vel = 0,-3
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = timemod = 3,0
anim = 1002
pos = 20,-40
facing = -1
ID = 3000
bindtime = 1
scale = .4, .4
random = 50,40
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 800,vo ]
type = PlaySnd
trigger1 = time = 5
value = 800,1
channel = 12

[State 800,vo ]
type = PlaySnd
trigger1 = time = 5
value = 800,0
channel = 0

[State 800,ex ]
type = Explod
trigger1 = animelem = 3,1
pos = -12,0
anim = 3105
ID = 800
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 800,ex ]
type = Explod
trigger1 = animelem = 3,1
pos = -5,0
anim =802
ID = 800
scale = .8,.8
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 800,ex ]
type = Explod
trigger1 = animelem = 4,1
pos = -5,0
scale = .8,.3
anim =802
ID = 800
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 800, p]
type = PowerAdd
trigger1 = AnimElem = 3,1
value = 70

[State 800,c ]
type = ChangeState
trigger1 = command !="holdpowerup"
trigger2 = power = 3000
value = 801

[Statedef 801]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 801


[State 800,vo ]
type = PlaySnd
trigger1 = time = 0
trigger1 = power = 3000
value = 190,0
channel = 0

[State 800,ex ]
type = Explod
trigger1 = time = 0
trigger1 = power = 3000
pos = -5,0
anim =803
ID = 800
sprpriority = 3
ownpal = 1
removeongethit = 1


[State 801,p ]
type = PalFX
trigger1 = time = 0
trigger1 = power = 3000
time = 3
add = 255,255,255
sinadd = 0,0,0,10

[State 801,c ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1








;------------------
;YOU FAIL AT HADOKEN
[Statedef 1000]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1000
sprpriority = 1
poweradd = 150
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 1000,0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 200,6

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 120,10
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-4
guard.velocity = -7
air.velocity = -3,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 30,10
givepower = 10,30
envshake.time = 16
;envshake.freq = 60
envshake.ampl = -10
;envshake.phase = 
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
;fall.envshake.phase = 

[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0



[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1010]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1000
sprpriority = 1
poweradd = 150
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 1000,1
freqmul = 1.5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 1000,0

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 25

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1010
projanim = 1011
projscale = .5,.5
projremove = 0
projremovetime = 12
velocity = 0,0
offset = 67,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 110,10
pausetime = 0,10
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-4
guard.velocity = -7
air.velocity = -3,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 30,10
givepower = 10,30
envshake.time = 16
;envshake.freq = 60
envshake.ampl = -10
;envshake.phase = 
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
;fall.envshake.phase = 
air.juggle = 10

[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1010) = 1
ignorehitpause = 1
persistent = 0



[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




[Statedef 1020]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1000
sprpriority = 1
poweradd = 150
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 1000,1
freqmul = 1.5


[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 1000,0

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 25

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1010
projanim = 1001
projremove = 0
projremovetime = 12
velocity = 0,0
offset = 67,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 100,10
pausetime = 0,10
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-4
guard.velocity = -7
air.velocity = -3,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 30,10
givepower = 10,30
envshake.time = 16
;envshake.freq = 60
envshake.ampl = -10
;envshake.phase = 
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
;fall.envshake.phase = 
air.juggle = 10

[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1010) = 1
ignorehitpause = 1
persistent = 0



[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1030]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1000
sprpriority = 1
poweradd = -500*(var(7) = 0)
velset = 0,0
juggle = 5

[State 3001,ex ]
type = Explod
trigger1 = (timemod = 2,0) && (animelem = 5,>0) && animelem = 8,<0
anim = 7010
pos = 76,-68
facing = 1
bindtime = 1
scale = .4, .4
random = 40,30
vel = 3,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add

[State 3000,hp ]
type = Helper
trigger1 = animelem = 6 
name = "FX"
ID = 3000
pos = 0,0
stateno = 3005
ownpal = 1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 1000,0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 1000,1
freqmul = 1.5

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 25

[State 1030,ex ]
type = Explod
trigger1 = animelem = 6
anim = 1002
ID = 1030
pos = 68,-70
bindtime = 1
;scale = 1, 1
sprpriority = 2
ownpal = 1
removeongethit = 1


[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1010
projanim = 1003
projremove = 0
projremovetime = 10
projscale = .7,.7
velocity = 0,0
offset = 67,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 65,10
pausetime = 0,10
projhits = 3
projmisstime = 2
sparkno = S7002
sparkxy = ceil(p2dist X)/3,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5,-8
guard.velocity = -7
air.velocity = -6,-8
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 0,0
givepower = 10,30
envshake.time = 16
;envshake.freq = 60
envshake.ampl = -10
;envshake.phase = 
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
air.juggle = 10


[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1010) = 1
ignorehitpause = 1
persistent = 0



[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
;YOU FAIL AT SHORYUKEN
[Statedef 1050]
type    = S
Movetype = I
physics = S
ctrl = 0
anim = 1050
sprpriority = 1
poweradd = 150

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 201,1

[State 1050,pa ]
type = PosAdd
trigger1 = animelem = 2
x = 22

[State 1050,vs ]
type = VelSet
trigger1 = animelem = 2,>0 && animelem = 3,< 2
x = 5

[State 1050,nhb]
type = NotHitBy
trigger1 = animelem = 1,>2 && animelem = 3,< 4
value = SCA,AP,NA

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "x" 
value = 1051

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "y" 
value = 1061

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "z" 
value = 1071

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "a" 
trigger2 = command = "b" 
trigger3 = command = "c" 
value = 1055



[State 1050,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 19

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1051]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1051
sprpriority = 1
juggle = 10


[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MF
guardflag = M 
animtype = Hard
priority = 5
damage = 80,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1100,1

[State -2, Hit 1]
type = PlaySnd
trigger1 = animtime = 0
value = 40,0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1052

[Statedef 1055]
type    = S
Movetype = A
physics = N
ctrl = 0
anim = 1055
sprpriority = 1
juggle = 10

[State 1055,vm ]
type = VelMul
trigger1 = time > 8
x = .9
;y = 
;ignorehitpause = 0
;persistent = 1



[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MAF
guardflag = l 
animtype = Hard
priority = 5
damage = 110,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-30
hitsound = S200,3
guardsound = 6,0
ground.type = Trip
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-3
air.velocity = -3,-3
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5000,1

[State -2, Hit 1]
type = PlaySnd
trigger1 = animtime = 0
value = 40,0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 5110

[Statedef 1052]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1052
sprpriority = 1
juggle =7



[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = FA
guardflag = MA
animtype = Hard
priority = 5
damage = 80,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-90
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
guard.velocity = -9
air.velocity = -3,-5
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1052,vs ]
type = VelSet
trigger1 = time = 0
y = -3

[State 1052,va ]
type = VelAdd
trigger1 = time = 0
x = 1

[State 1052,g]
type = Gravity
trigger1 = time > 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0 && time > 2
value = 1053

[Statedef 1053]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1053
sprpriority = 1
velset = 0,0

[State 1053,ps ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1060]
type    = S
Movetype = I
physics = S
ctrl = 0
anim = 1050
sprpriority = 1
poweradd = 150

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 201,1

[State 1050,pa ]
type = PosAdd
trigger1 = animelem = 2
x = 22

[State 1050,vs ]
type = VelSet
trigger1 = animelem = 2,>0 && animelem = 3,< 2
x = 7

[State 1050,nhb]
type = NotHitBy
trigger1 = animelem = 1,>2 && animelem = 3,< 4
value = SCA,AP,NA


[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "x" 
value = 1051

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "y" 
value = 1061

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "z" 
value = 1071

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "a" 
trigger2 = command = "b" 
trigger3 = command = "c" 
value = 1055


[State 1050,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 19

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1061]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1051
sprpriority = 1
juggle = 10

[State -2, Hit 1]
type = PlaySnd
trigger1 = animtime = 0
value = 40,0

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MF
guardflag = M 
animtype = Hard
priority = 5
damage = 90,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1100,1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1062

[Statedef 1062]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1062
sprpriority = 1
juggle = 7

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = FA
guardflag = MA
animtype = Hard
priority = 5
damage = 90,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-100
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4,-7
guard.velocity = -9
air.velocity = -4,-5
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1052,vs ]
type = VelSet
trigger1 = time = 0
y = -6

[State 1052,va ]
type = VelAdd
trigger1 = time = 0
x = 2

[State 1052,g]
type = Gravity
trigger1 = time > 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0 && time > 2
value = 1053


[Statedef 1070]
type    = S
Movetype = I
physics = S
ctrl = 0
anim = 1050
sprpriority = 1
poweradd = 150

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 201,1

[State 1050,pa ]
type = PosAdd
trigger1 = animelem = 2
x = 22

[State 1050,vs ]
type = VelSet
trigger1 = animelem = 2,>0 && animelem = 3,< 2
x = 12

[State 1050,nhb]
type = NotHitBy
trigger1 = animelem = 1,>2 && animelem = 3,< 4
value = SCA,AP,NA


[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "x" 
value = 1051

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "y" 
value = 1061

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "z" 
value = 1071

[State 1051,cs ]
type = ChangeState
triggerall = time > 4 
trigger1 = command = "a" 
trigger2 = command = "b" 
trigger3 = command = "c" 
value = 1055


[State 1050,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 19

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1071]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1051
sprpriority = 1
juggle = 7

[State -2, Hit 1]
type = PlaySnd
trigger1 = animtime = 0
value = 40,0

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1100,1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1072

[Statedef 1072]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1072
sprpriority = 1
juggle = 5

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = FA
guardflag = MA
animtype = Hard
priority = 5
damage = 35,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-100
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-8
guard.velocity = -9
air.velocity = -1,-8
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
air.juggle = 0

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 10, >= 0 && pos Y <= -5
attr = A,SA
hitflag = MAFD
guardflag = 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 12,10
sparkno = S7001
sparkxy = -20,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4,8
guard.velocity = -9
air.velocity = -4,8
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
air.juggle = 0
persistent = 0

[State 1072,fall ]
type = PlaySnd
trigger1 = animelem = 10
value = 1050,0
freqmul = 0.7

[State 1052,vs ]
type = VelSet
trigger1 = time = 0
y = -12

[State 1052,va ]
type = VelAdd
trigger1 = time = 0
x = 2

[State 1052,g]
type = Gravity
trigger1 = time > 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0 && time > 2
value = 5110

[Statedef 1080]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1080
sprpriority = 1
juggle = 10
poweradd = -500*(var(7) = 0)

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0

[State 1080,va ]
type = Velset
trigger1 = prevstateno = [200,450]
x = 5

[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add
ignorehitpause = 1



[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5
damage = 45,5
pausetime = 10,8
sparkno = S7002
sparkxy = -20,-50
hitsound = S200,2
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,0
guard.velocity = -9
air.velocity = -3,2
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
getpower = 0,0
givepower = 10,30
envshake.time = 3
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3
attr = S,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 45,5
pausetime = 10,8
sparkno = S7002
sparkxy = -20,-70
hitsound = S200,2
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-7
guard.velocity = -9
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall = 1
fall.recovertime = 10
getpower = 0,0
givepower = 10,30
envshake.time = 3
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1100,0


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1081

[Statedef 1081]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1081
sprpriority = 1
velset= 0,0



[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1081,vm ]
type = VelMul
trigger1 = time >= 0
x = .95

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5
damage = 45,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-100
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4,-9
guard.velocity = -9
air.velocity = -4,-9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 0,0
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1052,vs ]
type = VelSet
trigger1 = time = 0
y = -9

[State 1052,va ]
type = VelAdd
trigger1 = time = 0
x = 3

[State 1052,g]
type = Gravity
trigger1 = time > 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0 && time > 2
value = 1053


;------------------
;YOU FAIL AT SHAKUNETSU HADOKEN
[Statedef 1100]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1100
sprpriority = 1
poweradd = 150
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 201,2

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 1100,2
volume = -255

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 30

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1100
projanim = 1101
projremove = 0
projremovetime = 24
velocity = 0,0
offset = 62,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 100,10
pausetime = 0,8
sparkno = S7002
sparkxy = ceil(p2dist X)-30,0
hitsound = S1100,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-6
guard.velocity = -15
air.velocity = -3,-6
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
palfx.time = 50
palfx.add = 80,-70,-200  
palfx.invertall = 1
palfx.sinadd = 0,30,0,9
palfx.color = 1
afterimage.time = 24
afterimage.length = 2
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,120,120
afterimage.palpostbright = 15,-20,-20
afterimage.paladd = 15,0,0
afterimage.palmul = .75,.35,.35
afterimage.framegap = 1
afterimage.trans = add
air.juggle = 10

[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1100) = 1
ignorehitpause = 1
persistent = 0

[State 1000,vs ]
type = VarSet
trigger1 = projhit(1100) = 1
v =  1 ;Burn Effect
value = 1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1110]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1110
sprpriority = 1
poweradd = 150
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 1100,2
volume = -255


[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 201,2

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 30

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1100
projanim = 1111
projremove = 0
projremovetime = 24
projscale = 1.2
velocity = 0,0
offset = 62,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 80,8
pausetime = 0,8
sparkno = S7002
sparkxy = ceil(p2dist X)-30,0
hitsound = S1100,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-6
guard.velocity = -15
air.velocity = -3,-6
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
palfx.time = 50
palfx.add = 80,-70,-200  
palfx.invertall = 1
palfx.sinadd = 0,30,0,9
palfx.color = 1
afterimage.time = 24
afterimage.length = 2
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,120,120
afterimage.palpostbright = 15,-20,-20
afterimage.paladd = 15,0,0
afterimage.palmul = .75,.35,.35
afterimage.framegap = 1
afterimage.trans = add
air.juggle = 10



[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1100) = 1
ignorehitpause = 1
persistent = 0

[State 1000,vs ]
type = VarSet
trigger1 = projhit(1100) = 1
v =  1 ;Burn Effect
value = 1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1120]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1120
sprpriority = 1
poweradd = 150
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 1100,2
volume = -255


[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 201,2

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 30

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1100
projanim = 1121
projremove = 0
projremovetime = 24
projscale = 1.5
velocity = 0,0
offset = 62,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 70,8
pausetime = 0,8
sparkno = S7002
sparkxy = ceil(p2dist X)/2,0
hitsound = S1100,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-6
guard.velocity = -15
air.velocity = -3,-6
fall = 1
fall.recover = 0
fall.damage = 5
kill = 1
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
palfx.time = 50
palfx.add = 80,-70,-200  
palfx.invertall = 1
palfx.sinadd = 0,30,0,9
palfx.color = 1
afterimage.time = 24
afterimage.length = 2
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,120,120
afterimage.palpostbright = 15,-20,-20
afterimage.paladd = 15,0,0
afterimage.palmul = .75,.35,.35
afterimage.framegap = 1
afterimage.trans = add
air.juggle = 10



[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1100) = 1
ignorehitpause = 1
persistent = 0

[State 1000,vs ]
type = VarSet
trigger1 = projhit(1100) = 1
v =  1 ;Burn Effect
value = 1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1140]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 1140
sprpriority = 1
poweradd = -500*(var(7) = 0)
velset = 0,0
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 1100,2
volume = -255


[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 201,2

[State 1010,wd ]
type = Width
trigger1 = animelem = 6
value = 30

[State 1140,ex ]
type = Explod
trigger1 = animelem = 6
anim = 1101
ID = 1140
pos = 62,-70
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 6
ProjID = 1100
projanim = 1141
projremove = 1
projhitanim = 1142
projremanim = 1142
projcancelanim = 1142
projremovetime = 30
velocity = 9,0
offset = 70,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 130,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S1100,3
guardsound = 6,0
ground.type = Low
air.type = Low
fall = 1
ground.slidetime = 31
ground.hittime = 27
ground.velocity = -4,-6
guard.velocity = -15
air.velocity = -6,-6
getpower = 0,0
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
palfx.time = 50
palfx.add = 80,-70,-200  
palfx.invertall = 1
palfx.sinadd = 0,30,0,9
palfx.color = 1
projscale = 1.1,1.1
afterimage.time = 31
afterimage.length = 3
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,120,120
afterimage.palpostbright = -100,-255,-255
afterimage.paladd = 15,0,0
afterimage.palmul = .75,.35,.35
afterimage.framegap = 1
afterimage.trans = add


[State 1000,ec ]
type = EnvColor
trigger1 = projhit(1100) = 1
ignorehitpause = 1
persistent = 0

[State 1000,vs ]
type = VarSet
trigger1 = projhit(1100) = 1
v =  1 ;Burn Effect
value = 1


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;YOU FAIL AT TATSUMAKISENPUUKYAKU
[Statedef 1200]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1200
sprpriority = 1
poweradd = 150
velset = -1,-2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1201

[Statedef 1201]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1201
sprpriority = 1
velset = -2,0
juggle = 5

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 150,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
air.hittime = 20
air.velocity = -3,-7
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 1
value = 1202

[Statedef 1202]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1202
sprpriority = 1

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1202,va ]
type = VelAdd
trigger1 = time >= 0
y = .2

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52

[Statedef 1210]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1200
sprpriority = 1
poweradd = 150
velset = -1,-2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1211

[Statedef 1211]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1201
sprpriority = 1
velset = -1,0
juggle = 5

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3 && var(4) < 1
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 60,5
pausetime = 10,8
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 3,-4
air.hittime = 20
air.velocity = 3,-4
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 6
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3 && var(4) = 1
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 60,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
air.hittime = 20
air.velocity = -7,-5
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 2
value = 1202

[Statedef 1220]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1200
sprpriority = 1
poweradd = 150
velset = 0,-2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8


[State 1220,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1221

[Statedef 1221]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1201
sprpriority = 1
velset = 0,0
juggle = 5

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3 && var(4) < 2
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 60,5
pausetime = 10,8
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0,-4
air.hittime = 20
air.velocity = 0,-4
guard.velocity = -9
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 6
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3 && var(4) = 2
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 40,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
air.hittime = 20
air.velocity = -7,-5
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 3
value = 1202




[Statedef 1230]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1200
sprpriority = 1
poweradd = -500*(var(7) = 0)
velset = 3,-4

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0

[State 1230,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1231

[Statedef 1231]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1201
sprpriority = 1
velset = 3,0
juggle = 5

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 40,5
pausetime = 10,8
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-6.2
air.hittime = 20
air.velocity = -3,-3
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 0,0
givepower = 10,30
envshake.time = 5
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SA,NP,SP,HP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 4
value = 1232

[Statedef 1232]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1202
sprpriority = 1

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1202,va ]
type = VelAdd
trigger1 = time >= 0
y = .2

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52

;THE ELITE BUTT THROW
;-----------------
[Statedef 1250]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1250
poweradd = 150
ctrl = 0

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 5
value = 5000,5

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0

[State 1250,nh ]
type = NotHitBy
trigger1 = time < 5
value = SCA, NA, SA

[State 12650, ]
type = VelSet
trigger1 = animelem = 2
x = 6

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,ST
hitflag = MF
priority = 5, miss
guardflag = 
sparkno = -1
hitsound = S700,1
p1stateno = 1251
p2stateno = 1252
p1facing = 1
p2facing = 1
fall = 1
getpower = 0,0
givepower = 0,0


[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 3
x = 10

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 6

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 5
x = 21

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1251]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1251
ctrl = 0
sprpriority = 1

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 3
value = 201,2


[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 1, >= 0) && (animelem = 2, < 0)
pos = -20,0

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 2, >= 0) && (animelem = 3, < 0)
pos = 4,-76

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 3, >= 0) && (animelem = 4, < 0)
pos = 7,-61

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 4, >= 0) && (animelem = 5, < 0)
pos = 60,-60

[State 701,tb ]
type = TargetBind
trigger1 = animelem = 5,0
pos = 101,-60

[State 701,tla ]
type = TargetLifeAdd
trigger1 = animelem = 5,1
value = -150

[State 701,ts ]
type = TargetState
trigger1 = animelem = 5
value = 1253

[State 711,pa ]
type = PosAdd
trigger1 = time = 0 && frontedgedist < 50
x = -80


[State 711,pa ]
type = PosAdd
trigger1 = animelem = 3
x = 30

[State 711,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 10


[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1252]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 702,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 1252


[Statedef 1253]
type = S
movetype = H
physics = N
velset = -7,-8
ctrl = 0

[State 702,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 712

[State 713,g ]
type = Gravity
trigger1 = time >= 0

[State 703,ss ]
type = SelfState
trigger1 = pos Y >= -10
value = 5110


[Statedef 1260]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1250
poweradd = 150
ctrl = 0

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 5
value = 5000,5

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0


[State 1250,nh ]
type = NotHitBy
trigger1 = time < 5
value = SCA, NA, SA

[State 12650, ]
type = VelSet
trigger1 = animelem = 2
x = 12

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,ST
hitflag = MF
priority = 5, miss
guardflag = 
sparkno = -1
hitsound = S700,1
p1stateno = 1251
p2stateno = 1252
p1facing = 1
p2facing = 1
fall = 1
getpower = 0,0
givepower = 0,0


[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 3
x = 10

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 6

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 5
x = 21

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 1270]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1250
poweradd = 150
ctrl = 0

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 5
value = 5000,5

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0


[State 1250,nh ]
type = NotHitBy
trigger1 = time < 5
value = SCA, NA, SA

[State 12650, ]
type = VelSet
trigger1 = animelem = 2
x = 18

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,ST
hitflag = MF
priority = 5, miss
guardflag = 
sparkno = -1
hitsound = S700,1
p1stateno = 1251
p2stateno = 1252
p1facing = 1
p2facing = 1
fall = 1
getpower = 0,0
givepower = 0,0


[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 3
x = 10

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 6

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 5
x = 21

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1280]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1250
poweradd = -500*(var(7) = 0)
ctrl = 0

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 5
value = 5000,5

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0


[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 1250,nh ]
type = NotHitBy
trigger1 = time < 15
value = SCA, NA, SA

[State 12650, ]
type = VelSet
trigger1 = animelem = 2
x = 12

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,ST
hitflag = MF
priority = 5, miss
guardflag = 
sparkno = -1
hitsound = S700,1
p1stateno = 1281
p2stateno = 1252
p1facing = 1
p2facing = 1
fall = 1
getpower = 0,0
givepower = 0,0


[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 3
x = 10

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 6

[State 1250,pa ]
type = PosAdd
trigger1 = animelem = 5
x = 21

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1281]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1251
ctrl = 0
sprpriority = 1

[State 1250,snfail ]
type = PlaySnd
trigger1 = animelem = 3
value = 201,2

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 1, >= 0) && (animelem = 2, < 0)
pos = -20,0

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 2, >= 0) && (animelem = 3, < 0)
pos = 4,-76

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 3, >= 0) && (animelem = 4, < 0)
pos = 7,-61

[State 701,tb ]
type = TargetBind
trigger1 = (animelem = 4, >= 0) && (animelem = 5, < 0)
pos = 60,-60

[State 701,tb ]
type = TargetBind
trigger1 = animelem = 5,0
pos = 101,-60

[State 701,tla ]
type = TargetLifeAdd
trigger1 = animelem = 5,1
value = -190

[State 701,ts ]
type = TargetState
trigger1 = animelem = 5
value = 1253

[State 711,pa ]
type = PosAdd
trigger1 = time = 0 && frontedgedist < 50
x = -80


[State 711,pa ]
type = PosAdd
trigger1 = animelem = 3
x = 30

[State 711,pa ]
type = PosAdd
trigger1 = animelem = 4
x = 10


[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1





[Statedef 1300]
type    = S
physics = N 
ctrl = 0
anim = 1300
sprpriority = 1
poweradd = 150
velset = 0,0

[State 105, 1]
type = VelSet
trigger1 = animelem = 8
x = -10


[State 0, ]
type = PlaySnd
trigger1 = animelem = 9,1
trigger2 = animelem = 12,1
value = 100,0

[State 105, 3]
type = ChangeState
trigger1 = backedgedist <= 5 && time > 17
value = 1301

[Statedef 1301]
type    = S
movetype = A
physics = S 
ctrl = 0
anim = 1301
sprpriority = 1
velset = 0,0

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 200,6

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 201,4
channel = 0

[State 1301,hp ]
type = Helper
trigger1 = animelem = 6
name = "Bag"
pos = 0,-96
stateno = 1302
ownpal = 1

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1302]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1302
sprpriority = 2
velset = 4,-3

[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT

[State 1302,hd ]
type = HitDef
trigger1 = time = 0
attr = A,SP
hitflag = MAFD
guardflag = MAFD
animtype = Hard
priority = 5
damage = 80,5
sparkno = 2
sparkxy = 0,0
pausetime = 0,9
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.velocity = -3,-5
air.type = High
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
envshake.time = 10

[State 1302,as ]
type = AngleSet
trigger1 = parent, animelem = 6,>0 && parent, animelem = 8,<0
value = 220

[State 1302,as ]
type = AngleAdd
trigger1 = time > 11
value = -5

[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 6,>0 && parent, animelem = 7,<0
pos = -18,-96


[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 7,>0 && parent, animelem = 8,<0
pos = 18,-96

[State 1302,ad ]
type = AngleDraw
trigger1 = 1


[State 1302,va ]
type = VelAdd
trigger1 = time > 11
y = .5

[State 105, 3]
type = ChangeState
trigger1 = pos Y >= 0
value = 1303

[State 105, 3]
type = ChangeState
trigger1 = movecontact
value = 1304

[Statedef 1303]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1304
sprpriority = 2
velset = 5,-5

[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT,AP

[State 1302,as ]
type = AngleAdd
trigger1 = time > 0
value = -9

[State 1302,ad ]
type = AngleDraw
trigger1 = 1

[State 1302,vad ]
type = Varset
trigger1 = time = 0
var = 1
value = 1

[State 1302,vad ]
type = Varadd
trigger1 = pos Y >= 0
var = 1
value = 1

[State 1302,vad ]
type = Posset
trigger1 = pos Y >= 0
y = -1

[State 1302,va ]
type = VelSet
trigger1 = pos Y >= 0
x = 5
y = -5/var(1)

[State 1302,va ]
type = VelAdd
trigger1 = time > 0
y = .5

[State 1303,ds ]
type = DestroySelf
trigger1 = frontedgedist < -20

[Statedef 1304]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1303
sprpriority = 2
velset = -1,-1

[State 1301,hp ]
type = Helper
trigger1 = Time = 0
name = "BIBIT"
pos = 0,0
stateno = 1305
ownpal = 1

[State 1301,hp ]
type = Helper
trigger1 = Time = 0
name = "BURGER"
pos = 0,0
stateno = 13051
ownpal = 1

[State 1301,hp ]
type = Helper
trigger1 = Time = 0
name = "BATATE"
pos = 0,0
stateno = 13052
ownpal = 1

[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT,AP


[State 1302,va ]
type = VelAdd
trigger1 = time > 0
y = .1

[State 1303,ds ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1305]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1305
sprpriority = 2
velset = -random%3,-3-(random%3)

[State 1302,va ]
type = VelAdd
trigger1 = time > 0
y = .4

[State 1303,ds ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 13051]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 13051
sprpriority = 2
velset = random%3,-3-(random%6)

[State 1302,as ]
type = AngleAdd
trigger1 = time > 0
value = 9

[State 1302,ad ]
type = AngleDraw
trigger1 = 1

[State 1302,va ]
type = VelAdd
trigger1 = time > 0
y = .4

[State 1303,ds ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 13052]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 13052
sprpriority = 2
velset = random%5,-2-(random%6)

[State 1302,as ]
type = AngleAdd
trigger1 = time > 0
value = 9

[State 1302,ad ]
type = AngleDraw
trigger1 = 1

[State 1302,va ]
type = VelAdd
trigger1 = time > 0
y = .4

[State 1303,ds ]
type = DestroySelf
trigger1 = animtime = 0



[Statedef 1310]
type    = S
physics = N 
ctrl = 0
anim = 1300
sprpriority = 1
poweradd = 150
velset = 0,0

[State 105, 1]
type = VelSet
trigger1 = animelem = 8
x = -10


[State 0, ]
type = PlaySnd
trigger1 = animelem = 9,1
trigger2 = animelem = 12,1
value = 100,0

[State 105, 3]
type = ChangeState
trigger1 = backedgedist <= 5 && time > 17
value = 1311

[Statedef 1311]
type    = S
movetype = A
physics = S 
ctrl = 0
anim = 1301
sprpriority = 1
velset = 0,0

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 200,6

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 201,4
channel = 0

[State 1301,hp ]
type = Helper
trigger1 = animelem = 6
name = "Bag"
pos = 0,-96
stateno = 1312
ownpal = 1

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1312]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1302
sprpriority = 2
velset = 6,-4

[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT

[State 1302,hd ]
type = HitDef
trigger1 = time = 0
attr = A,SP
hitflag = MAFD
guardflag = MAFD
animtype = Hard
priority = 5
damage = 90,5
sparkno = 2
sparkxy = 0,0
pausetime = 0,9
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.velocity = -3,-5
air.type = High
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
envshake.time = 10

[State 1302,as ]
type = AngleSet
trigger1 = parent, animelem = 6,>0 && parent, animelem = 8,<0
value = 220

[State 1302,as ]
type = AngleAdd
trigger1 = time > 11
value = -5

[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 6,>0 && parent, animelem = 7,<0
pos = -18,-96


[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 7,>0 && parent, animelem = 8,<0
pos = 18,-96

[State 1302,ad ]
type = AngleDraw
trigger1 = 1


[State 1302,va ]
type = VelAdd
trigger1 = time > 11
y = .5

[State 105, 3]
type = ChangeState
trigger1 = pos Y >= 0
value = 1303

[State 105, 3]
type = ChangeState
trigger1 = movecontact
value = 1304


[Statedef 1320]
type    = S
physics = N 
ctrl = 0
anim = 1300
sprpriority = 1
poweradd = 150
velset = 0,0

[State 105, 1]
type = VelSet
trigger1 = animelem = 8
x = -10


[State 0, ]
type = PlaySnd
trigger1 = animelem = 9,1
trigger2 = animelem = 12,1
value = 100,0

[State 105, 3]
type = ChangeState
trigger1 = backedgedist <= 5 && time > 17
value = 1321

[Statedef 1321]
type    = S
movetype = A
physics = S 
ctrl = 0
anim = 1301
sprpriority = 1
velset = 0,0

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 200,6

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 201,4
channel = 0

[State 1301,hp ]
type = Helper
trigger1 = animelem = 6
name = "Bag"
pos = 0,-96
stateno = 1322
ownpal = 1

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1322]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1302
sprpriority = 2
velset = 9,-5

[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT

[State 1302,hd ]
type = HitDef
trigger1 = time = 0
attr = A,SP
hitflag = MAFD
guardflag = MAFD
animtype = Hard
priority = 5
damage = 100,5
sparkno = 2
sparkxy = 0,0
pausetime = 0,9
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.velocity = -3,-5
air.type = High
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
envshake.time = 10

[State 1302,as ]
type = AngleSet
trigger1 = parent, animelem = 6,>0 && parent, animelem = 8,<0
value = 220

[State 1302,as ]
type = AngleAdd
trigger1 = time > 11
value = -5

[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 6,>0 && parent, animelem = 7,<0
pos = -18,-96


[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 7,>0 && parent, animelem = 8,<0
pos = 18,-96

[State 1302,ad ]
type = AngleDraw
trigger1 = 1


[State 1302,va ]
type = VelAdd
trigger1 = time > 11
y = .5

[State 105, 3]
type = ChangeState
trigger1 = pos Y >= 0
value = 1303

[State 105, 3]
type = ChangeState
trigger1 = movecontact
value = 1304







[Statedef 1330]
type    = S
physics = N 
ctrl = 0
anim = 1300
sprpriority = 1
poweradd = -500*(var(7) = 0)
velset = 0,0

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0


[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 105, 1]
type = VelSet
trigger1 = animelem = 8
x = -10


[State 0, ]
type = PlaySnd
trigger1 = animelem = 9,1
trigger2 = animelem = 12,1
value = 100,0

[State 105, 3]
type = ChangeState
trigger1 = backedgedist <= 5 && time > 17
value = 1331

[Statedef 1331]
type    = S
movetype = A
physics = S 
ctrl = 0
anim = 1301
sprpriority = 1
velset = 0,0

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 200,6

[State 1301,sn ]
type = PlaySnd
trigger1 = animelem = 5
value = 201,4
channel = 0

[State 1301,hp ]
type = Helper
trigger1 = animelem = 5
name = "Bison"
pos = 0,-96
stateno = 1332
ownpal = 1

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1332]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1332
sprpriority = 2
velset = 4+((p2bodydist X)/25),-5

[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT

[State 1302,hd ]
type = HitDef
trigger1 = time = 0
attr = A,SP
hitflag = MAFD
guardflag = MAFD
animtype = Hard
priority = 5
damage = 100,9
sparkno = 2
sparkxy = 0,-40
pausetime = 0,9
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.velocity = -3,-5
air.type = High
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
envshake.time = 10

[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 5,>=0 && parent, animelem = 7,<0
pos = -18,-2

[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 6,>=0 && parent, animelem = 7,<0
pos = -18,-3


[State 1302,BP ]
type = BindToParent
trigger1 = parent, animelem = 7,>=0 && parent, animelem = 8,<0
pos = 18,-9

[State 1302,va ]
type = VelAdd
trigger1 = time > 11
y = .5

[State 105, 3]
type = ChangeState
trigger1 = pos Y >= 30
value = 1333

[Statedef 1333]
type    = S
movetype = A
physics = N 
ctrl = 0
anim = 1333
sprpriority = 2
velset = 7,-5

[State 1333,ex ]
type = Explod
trigger1 = pos Y >= 0
anim = F61
pos = 0,0
ontop = 1
ownpal = 1



[State 1302,nhb ]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT,AP

[State 1302,vad ]
type = Varset
trigger1 = time = 0
var = 1
value = 1


[State 1302,vad ]
type = Posset
trigger1 = pos Y >= 0
y = -3

[State 1302,vad ]
type = Varadd
trigger1 = pos Y >= 0
var = 1
value = 1


[State 1302,va ]
type = VelSet
trigger1 = pos Y >= 0
x = 7
y = -6/var(1)

[State 1302,va ]
type = VelAdd
trigger1 = time > 0
y = .5

[State 1303,ds ]
type = DestroySelf
trigger1 = frontedgedist < -70







[Statedef 1350]
type    = A
Movetype = A
physics = A
ctrl = 0
anim = 1200
sprpriority = 1
poweradd = 150

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1201,va ]
type = VelAdd
trigger1 = time = 0
y = -2

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1351

[Statedef 1351]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1201
sprpriority = 1
juggle = 5

[State 1351,g ]
type = Gravity
trigger1 = 1


[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 150,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-7
air.hittime = 20
air.velocity = -3,-7
guard.velocity = -9
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 30,10
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1201,va ]
type = VelAdd
trigger1 = time = 0
y = -2

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 2
value = 1352

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 1353

[Statedef 1352]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1352
sprpriority = 1

[State 1351,g ]
type = Gravity
trigger1 = 1


[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1202,va ]
type = VelAdd
trigger1 = time >= 0
y = .2

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 1353

[Statedef 1353]
type    = S
Movetype = I
physics = N
ctrl = 0
anim = 5170
sprpriority = 1
velset = 0,0

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1353,ps ]
type = PosSet
trigger1 = time = 0
y = 0


[State 1000,st ]
type = ChangeState
trigger1 = time= 0 
value = 5110


[Statedef 1380]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1200
sprpriority = 1
poweradd = -500*(var(7) = 0)

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1080,0

[State 1140,ex ]
type = PalFX
trigger1 = time < 10
time = 1
add = 255-(time*30),205-(time*30),105-(time*30)

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = 20,0,-50
paladd = 25,10,0
palmul = .75,.65,.55
trans = add

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1201,va ]
type = VelAdd
trigger1 = time = 0
y = -2

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,va ]
type = VelMul
trigger1 = time = 0
x = .2
y = .2


[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1381

[Statedef 1381]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
juggle = 5

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 2,0
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 20,5
pausetime = 4,2
sparkno = S7001
sparkxy = -20,-60
hitsound = S200,2
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 15,-2
air.hittime = 20
air.velocity = 15,-2
guard.velocity = -9
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
snap = 51,0
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0
attr = A,SA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 20,5
pausetime = 4,2
sparkno = S7001
sparkxy = -20,-60
hitsound = S200,2
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -15,-3
air.hittime = 20
air.velocity = -15,-2
guard.velocity = -9
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 10,30
p2facing = 1
snap = -51,0
sprpriority = 4

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 2,0
v =  4
value = 1


[State 1380,pp ]
type = PlayerPush
trigger1 = 1
value = 0


[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 6
value = 1382

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 1382

[Statedef 1382]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1202
sprpriority = 1

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 1351,g ]
type = Gravity
trigger1 = 1


[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52

;SUPERS
;-------------------------------------------
;YOU FAIL AT SHINKUU HADOKEN LV1
[Statedef 3000]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3000
sprpriority = 1
velset = 0,0
juggle = 5

[State 3002, ]
type = Explod
trigger1 = animelem = 7
anim = 3007
scale = 1, 1
sprpriority = 5
bindtime = -1
removeongethit = 1
ownpal = 1



[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = -50,-25,-5
paladd = 0,10,25
palmul = .65,.65,.75
trans = add1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3000,sp ]
type = SuperPause
trigger1 = animelem = 4
time = 40
pos = -18,-80
poweradd = -1000
anim = S8000
sound = S8000,0
movetime = 3

[State 3001,ex ]
type = Explod
trigger1 = animelem = 4
anim = 3005
pos = -18,-80
facing = -1
ID = 3000
bindtime = 1
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 40
removetime = 45

[State 3001,ex ]
type = Explod
trigger1 = animelem = 6
anim = 3005
pos = -5,-71
facing = -1
ID = 3000
bindtime = 1
sprpriority = 3
ownpal = 1
removeongethit = 1
removetime = 3

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3000,0
channel = 0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,0

[State 3000,w ]
type = Width
trigger1 = animelem = 7, >0 && animelem = 9, <0
value = 35

[State 3000,vs ]
type = Varrandom
trigger1 = time = 0
v =  3
range = 0,99

[State 3000,vs ]
type = null
triggerall = time = 3
trigger1 = var(3) = [0,50]
trigger1 = (Var(5) := 0)
trigger2 = var(3) = [51,70]
trigger2 = (Var(5) := 2)
trigger3 = var(3) > 70
trigger3 = (Var(5) := 1)

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,1
freqmul = 1.3


[State 3000,hp ]
type = Helper
trigger1 = animelem = 7 && var(5) < 2
name = "Shinkuu"
ID = 3000
pos = 67,-70
stateno = 3001+var(5)
ownpal = 1

[State 3000,hp ]
type = Helper
trigger1 = animelem = 7
name = "FX"
ID = 3000
pos = 0,0
stateno = 3005
ownpal = 1

[State 3001,ex ]
type = Explod
trigger1 = animelem = 7
anim = 1002
pos = 67,-70
facing = -1
ID = 3000
bindtime = 1
scale = .7, .3
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 7 && var(5) = 2
ProjID = 3000
projanim = 3002
projremove = 1
projhitanim = 3003
projremanim = 3003
projcancelanim = 3003
projremovetime = 30
velocity = 12,0
offset = 70,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = -30,30
projhits = 4
projmisstime = 2
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 31
ground.hittime = 27
ground.velocity = -10,0
guard.velocity = -15
air.velocity = -3,-6
getpower = 0,0
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
afterimage.time = 31
afterimage.length = 12
afterimage.color = 256
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,220,220
afterimage.palpostbright = -100,-100,0
afterimage.paladd = 0,0,0
afterimage.palmul = .8,.8,.8
afterimage.framegap = 1
afterimage.timegap = 1
afterimage.trans = add

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3001]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3001
sprpriority = 3
velset = 0,0
juggle = 5

[State 3001,ex ]
type = Explod
trigger1 = timemod = 2,0
anim = 7010
pos = 50,0
facing = 1
bindtime = 1
scale = .4, .4
random = 60,60
vel = 3,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0

[State 3002,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow


[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,HP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 300,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -7
air.velocity = -3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5

[State 3001,hv ]
type = HitOverride
trigger1 = time >= 0
slot = 0
attr = SCA,NP,SP,HP

[State 3001,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AA
value2 = SCA, AT

[State 1000,st ]
type = changestate
trigger1 = animtime = 0
trigger2 = parent, movetype = H
value = 30011

[Statedef 30011]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 8888
sprpriority = 3
velset = 0,0
juggle = 5


[State 30011,ds ]
type = DestroySelf
trigger1 = time = 1


[Statedef 3002]
type    = S
Movetype = A
physics = N
ctrl = 0
anim = 3002
sprpriority = 3
velset = 10,0


[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0


[State 3002,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[state 3002, aft]
type = afterimage
trigger1 = time = 0
time = 2
length = 12
color = 256
palbright = 0,0,0
palcontrast = 220,220,220
palpostbright = -100,-100,0
paladd = 0,0,0
palmul = .8,.8,.8
framegap = 1
timegap = 1
trans = add

[State 3002,aft ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3001,ex ]
type = Explod
trigger1 = timemod = 3,0
anim = 1002
pos = 0,0
facing = -1
ID = 3000
bindtime = 1
scale = .4, .4
random = 30,30
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3001,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 7010
pos = 0,0
facing = -1
ID = 3000
bindtime = 1
scale = 2, 2
random = 30,30
vel = -.3,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000, hd ]
type = HitDef
trigger1 = time < 20
attr = S,HP
affectteam = E
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 200,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -7
air.velocity = -3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5

[State 1000, hd ]
type = HitDef
trigger1 = time > 20
attr = S,HP
affectteam = B
kill = 0
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 200,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 3,-8
guard.velocity = -7
air.velocity = 3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5
persistent = 0



[State 3002,va ]
type = Veladd
trigger1 = time >= 10
x = -1


[State 3001,hv ]
type = HitOverride
trigger1 = time >= 0
slot = 0
attr = SCA,NP,SP,HP

[State 3001,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AA
value2 = SCA, AT

[State 1000,st ]
type = changestate
trigger1 = movecontact
value = 3003


[Statedef 3003]
type    = S
Movetype = I
physics = N
ctrl = 0
anim = 3003
sprpriority = 3
velset = 0,0

[State 3002,ds ]
type = DestroySelf
trigger1 = animtime = 0


[Statedef 3005]
type    = S
Movetype = I
ctrl = 0
anim = 8888
sprpriority = 7
velset = 0,0

[State 3005,bt ]
type = BindToParent
trigger1 = time >= 0
time = 1

[State 3005,pf ]
type = PalFX
trigger1 = time >= 0
time = 2
add = -time*(25),-time*(25),-time*(25)

[State 3005,ex ]
type = Explod
trigger1 = time = 0
anim = 3004
ID = 3000
pos = 0,0
bindtime = -1
sprpriority = 8
ownpal = 0
removeongethit = 0

[State 1000,st ]
type = changestate
trigger1 = time  = 10
trigger2 = parent, movetype = H
value = 30011




;YOU FAIL AT SHINKUU HADOKEN LV2
[Statedef 3010]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3000
sprpriority = 1
velset = 0,0
juggle = 5

[State 3002, ]
type = Explod
trigger1 = animelem = 7
anim = 3007
scale = 1, 1
sprpriority = 5
bindtime = -1
removeongethit = 1
ownpal = 1



[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
;palcolor = 256
;palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = -50,-25,-5
paladd = 0,10,25
palmul = .65,.65,.75
trans = add1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3000,sp ]
type = SuperPause
trigger1 = animelem = 4
time = 40
pos = -18,-80
poweradd = -2000
anim = S8001
sound = S8000,1
movetime = 3

[State 3001,ex ]
type = Explod
trigger1 = animelem = 4
anim = 3005
pos = -18,-80
facing = -1
ID = 3000
bindtime = 1
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 40
removetime = 45

[State 3001,ex ]
type = Explod
trigger1 = animelem = 6
anim = 3005
pos = -5,-71
facing = -1
ID = 3000
bindtime = 1
sprpriority = 3
ownpal = 1
removeongethit = 1
removetime = 3

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3000,0
channel = 0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,0


[State 3000,w ]
type = Width
trigger1 = animelem = 7, >0 && animelem = 9, <0
value = 35

[State 3000,vs ]
type = Varrandom
trigger1 = time = 0
v =  3
range = 0,99

[State 3000,vs ]
type = null
triggerall = time = 3
trigger1 = var(3) = [0,60]
trigger1 = (Var(5) := 0)
trigger2 = var(3) = [61,80]
trigger2 = (Var(5) := 2)
trigger3 = var(3) > 80
trigger3 = (Var(5) := 1)

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,1
freqmul = 1.3


[State 3000,hp ]
type = Helper
trigger1 = animelem = 7 && var(5) < 2
name = "Shinkuu"
ID = 3000
pos = 67,-70
stateno = 3011+var(5)
ownpal = 1

[State 3000,hp ]
type = Helper
trigger1 = animelem = 7
name = "FX"
ID = 3000
pos = 0,0
stateno = 3005
ownpal = 1

[State 3001,ex ]
type = Explod
trigger1 = animelem = 7
anim = 1002
pos = 67,-70
facing = -1
ID = 3000
bindtime = 1
scale = .7, .3
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 7 && var(5) = 2
ProjID = 3000
projanim = 3002
projremove = 1
projhitanim = 3003
projremanim = 3003
projcancelanim = 3003
projremovetime = 30
velocity = 12,0
offset = 70,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = -60,60
projhits = 4
projmisstime = 2
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 31
ground.hittime = 27
ground.velocity = -10,0
guard.velocity = -15
air.velocity = -3,-6
getpower = 0,0
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
afterimage.time = 31
afterimage.length = 12
afterimage.color = 256
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,220,220
afterimage.palpostbright = -100,-100,0
afterimage.paladd = 0,0,0
afterimage.palmul = .8,.8,.8
afterimage.framegap = 1
afterimage.timegap = 1
afterimage.trans = add

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3011]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3001
sprpriority = 3
velset = 0,0
juggle = 5

[State 3001,ex ]
type = Explod
trigger1 = timemod = 2,0
anim = 7010
pos = 50,0
facing = 1
bindtime = 1
scale = .4, .4
random = 60,60
vel = 3,0
sprpriority = 3
ownpal = 1
removeongethit = 1


[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0

[state 3002, aft]
type = null;afterimage
trigger1 = time = 0
time = 2
length = 5
color = 256
palbright = 0,0,0
palcontrast = 220,220,220
palpostbright = -100,-100,0
paladd = 0,0,0
palmul = .8,.8,.8
framegap = 1
timegap = 1
trans = add

[State 3002,aft ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3002,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 3002, ]
type = Explod
trigger1 = time = 0
anim = 1002
scale = 1, 1.4
ownpal = 1

[State 3002, ]
type = Explod
trigger1 = time = 0
anim =3006
sprpriority = 6
ownpal = 1



[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,HP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 450,7
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -7
air.velocity = -3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5

[State 3001,hv ]
type = HitOverride
trigger1 = time >= 0
slot = 0
attr = SCA,NP,SP,HP

[State 3001,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AA
value2 = SCA, AT

[State 1000,st ]
type = changestate
trigger1 = animtime = 0
trigger2 = parent, movetype = H
value = 30011


[Statedef 3012]
type    = S
Movetype = A
physics = N
ctrl = 0
anim = 3002
sprpriority = 3
velset = 10,0


[State 3001,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 7010
pos = 0,0
facing = -1
ID = 3000
bindtime = 1
scale = 2, 2
random = 30,30
vel = -.3,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0


[State 3002,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[state 3002, aft]
type = afterimage
trigger1 = time = 0
time = 2
length = 12
color = 256
palbright = 0,0,0
palcontrast = 220,220,220
palpostbright = -100,-100,0
paladd = 0,0,0
palmul = .8,.8,.8
framegap = 1
timegap = 1
trans = add

[State 3002,aft ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3001,ex ]
type = Explod
trigger1 = timemod = 3,0
anim = 1002
pos = 0,0
facing = -1
ID = 3000
bindtime = 1
scale = .4, .4
random = 30,30
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000, hd ]
type = HitDef
trigger1 = time < 20
attr = S,HP
affectteam = E
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 300,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -7
air.velocity = -3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5

[State 1000, hd ]
type = HitDef
trigger1 = time > 20
attr = S,HP
affectteam = B
kill = 0
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 300,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 3,-8
guard.velocity = -7
air.velocity = 3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5
persistent = 0



[State 3002,va ]
type = Veladd
trigger1 = time >= 10
x = -1


[State 3001,hv ]
type = HitOverride
trigger1 = time >= 0
slot = 0
attr = SCA,NP,SP,HP

[State 3001,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AA
value2 = SCA, AT

[State 1000,st ]
type = changestate
trigger1 = movecontact
value = 3003


[Statedef 3003]
type    = S
Movetype = I
physics = N
ctrl = 0
anim = 3003
sprpriority = 3
velset = 0,0

[State 3002,ds ]
type = DestroySelf
trigger1 = animtime = 0


[Statedef 3005]
type    = S
Movetype = I
ctrl = 0
anim = 8888
sprpriority = 7
velset = 0,0

[State 3005,bt ]
type = BindToParent
trigger1 = time >= 0
time = 1

[State 3005,pf ]
type = PalFX
trigger1 = time >= 0
time = 2
add = -time*(25),-time*(25),-time*(25)

[State 3005,ex ]
type = Explod
trigger1 = time = 0
anim = 3004
ID = 3000
pos = 0,0
bindtime = -1
sprpriority = 8
ownpal = 0
removeongethit = 0

[State 1000,st ]
type = changestate
trigger1 = time  = 10
trigger2 = parent, movetype = H
value = 30011


;YOU FAIL AT SHINKUU HADOKEN LV3
[Statedef 3020]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3000
sprpriority = 1
velset = 0,0
juggle = 5

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
;palcolor = 256
;palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = -50,-25,-5
paladd = 0,10,25
palmul = .65,.65,.75
trans = add1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3000,sp ]
type = SuperPause
trigger1 = animelem = 4
time = 40
pos = -18,-80
poweradd = -3000
anim = S8002
sound = S8000,2
movetime = 3

[State 3001,ex ]
type = Explod
trigger1 = animelem = 4
anim = 3005
pos = -18,-80
facing = -1
ID = 3000
bindtime = 1
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 40
removetime = 45

[State 3001,ex ]
type = Explod
trigger1 = animelem = 6
anim = 3005
pos = -5,-71
facing = -1
ID = 3000
bindtime = 1
sprpriority = 3
ownpal = 1
removeongethit = 1
removetime = 3

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3000,0
channel = 0

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,0

[State 3000,w ]
type = Width
trigger1 = animelem = 7, >0 && animelem = 9, <0
value = 35

[State 3000,vs ]
type = Varrandom
trigger1 = time = 0
v =  3
range = 0,99

[State 3000,vs ]
type = null
triggerall = time = 3
trigger1 = var(3) = [0,70]
trigger1 = (Var(5) := 0)
trigger2 = var(3) = [71,90]
trigger2 = (Var(5) := 2)
trigger3 = var(3) > 90
trigger3 = (Var(5) := 1)

[State 1000,sn ]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,1
freqmul = 1.3


[State 3000,hp ]
type = Helper
trigger1 = animelem = 7 && var(5) < 2
name = "Shinkuu"
ID = 3000
pos = 67,-70
stateno = 3021+var(5)
ownpal = 1

[State 3000,hp ]
type = Helper
trigger1 = animelem = 7 
name = "FX"
ID = 3000
pos = 0,0
stateno = 3005
ownpal = 1

[State 3002, ]
type = Explod
trigger1 = animelem = 7
anim = 3007
scale = 1, 1
sprpriority = 5
bindtime = -1
removeongethit = 1
ownpal = 1


[State 3001,ex ]
type = Explod
trigger1 = animelem = 7
anim = 1002
pos = 67,-70
facing = -1
ID = 3000
bindtime = 1
scale = .7, .3
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1010,pg ]
type = Projectile
trigger1 = animelem = 7 && var(5) = 2
ProjID = 3000
projanim = 3002
projremove = 1
projhitanim = 3003
projremanim = 3003
projcancelanim = 3003
projremovetime = 30
velocity = 12,0
offset = 70,-70
attr = S,SP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = -90,90
projhits = 4
projmisstime = 2
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 31
ground.hittime = 27
ground.velocity = -10,0
guard.velocity = -15
air.velocity = -3,-6
getpower = 0,0
givepower = 10,30
envshake.time = 16
envshake.ampl = -10
afterimage.time = 31
afterimage.length = 12
afterimage.color = 256
afterimage.palbright = 0,0,0
afterimage.palcontrast = 220,220,220
afterimage.palpostbright = -100,-100,0
afterimage.paladd = 0,0,0
afterimage.palmul = .8,.8,.8
afterimage.framegap = 1
afterimage.timegap = 1
afterimage.trans = add

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3021]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3001
sprpriority = 3
velset = 0,0
juggle = 5

[State 3001,ex ]
type = Explod
trigger1 = timemod = 2,0
anim = 7010
pos = 50,0
facing = 1
bindtime = 1
scale = .4, .4
random = 60,60
vel = 3,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0

[state 3002, aft]
type = null;afterimage
trigger1 = time = 0
time = 2
length = 5
color = 256
palbright = 0,0,0
palcontrast = 220,220,220
palpostbright = -100,-100,0
paladd = 0,0,0
palmul = .8,.8,.8
framegap = 1
timegap = 1
trans = add

[State 3002, ev]
type = EnvShake
trigger1 = time = 0
time = 20

[State 3002, ]
type = Explod
trigger1 = time = 0
anim = 1002
scale = 1, 1.4
ownpal = 1

[State 3002, ]
type = Explod
trigger1 = time = 0
anim = 1003
scale = 1, 1.4
ownpal = 1

[State 3002, ]
type = Explod
trigger1 = time = 0
trigger2 = time = 4
anim =3006
sprpriority = 6
ownpal = 1



[State 3002,aft ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3002,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow


[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,HP
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 600,7
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -7
air.velocity = -3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5

[State 3001,hv ]
type = HitOverride
trigger1 = time >= 0
slot = 0
attr = SCA,NP,SP,HP

[State 3001,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AA
value2 = SCA, AT

[State 1000,st ]
type = changestate
trigger1 = animtime = 0
trigger2 = parent, movetype = H
value = 30011

[Statedef 3022]
type    = S
Movetype = A
physics = N
ctrl = 0
anim = 3002
sprpriority = 3
velset = 10,0


[State 3001,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 7010
pos = 0,0
facing = -1
ID = 3000
bindtime = 1
scale = 2, 2
random = 30,30
vel = -.3,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000,ec ]
type = EnvColor
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0


[State 3002,asp ]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[state 3002, aft]
type = afterimage
trigger1 = time = 0
time = 2
length = 12
color = 256
palbright = 0,0,0
palcontrast = 220,220,220
palpostbright = -100,-100,0
paladd = 0,0,0
palmul = .8,.8,.8
framegap = 1
timegap = 1
trans = add

[State 3002,aft ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3001,ex ]
type = Explod
trigger1 = timemod = 3,0
anim = 1002
pos = 0,0
facing = -1
ID = 3000
bindtime = 1
scale = .4, .4
random = 30,30
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000, hd ]
type = HitDef
trigger1 = time < 20
attr = S,HP
affectteam = E
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 300,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-8
guard.velocity = -7
air.velocity = -3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5

[State 1000, hd ]
type = HitDef
trigger1 = time > 20
attr = S,HP
affectteam = B
kill = 0
hitflag = MAFP
guardflag = MA 
animtype = Hard
priority = 5
damage = 500,10
pausetime = 0,8
sparkno = S7002
sparkxy = 0,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 3,-8
guard.velocity = -7
air.velocity = 3,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 5
persistent = 0



[State 3002,va ]
type = Veladd
trigger1 = time >= 10
x = -1


[State 3001,hv ]
type = HitOverride
trigger1 = time >= 0
slot = 0
attr = SCA,NP,SP,HP

[State 3001,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AA
value2 = SCA, AT

[State 1000,st ]
type = changestate
trigger1 = movecontact
value = 3003


[Statedef 3003]
type    = S
Movetype = I
physics = N
ctrl = 0
anim = 3003
sprpriority = 3
velset = 0,0

[State 3002,ds ]
type = DestroySelf
trigger1 = animtime = 0


[Statedef 3005]
type    = S
Movetype = I
ctrl = 0
anim = 8888
sprpriority = 7
velset = 0,0


[State 3005,bt ]
type = BindToParent
trigger1 = time >= 0
time = 1

[State 3005,pf ]
type = PalFX
trigger1 = time >= 0
time = 2
add = -time*(25),-time*(25),-time*(25)

[State 3005,ex ]
type = Explod
trigger1 = time = 0
anim = 3004
ID = 3000
pos = 0,0
bindtime = -1
sprpriority = 8
ownpal = 0
removeongethit = 0

[State 1000,st ]
type = changestate
trigger1 = time  = 10
trigger2 = parent, movetype = H
value = 30011

[Statedef 7000]
type = S
velset = 0,0
anim = 8888
ctrl = 0
sprpriority = 5

[State 7000,ex ]
type = Explod
trigger1 = timemod = 4,0 && (enemy, anim != [5100,5200])
anim = 1102
postype = p2
pos = -20,-40
random = 10,15
bindtime = 1
sprpriority = 7
vel = 2,-.6-(random%3)
scale = 1,.6

[State 7000,ex ]
type = Explod
trigger1 = (timemod = 6,0) && (enemy, anim != [5100,5200])
anim = 1102
postype = p2
pos = -20,-40
random = 20,15
bindtime = 1
sprpriority = 7
vel = random%2,-.2-(random%2)
scale = 1,1

[State 7000,ex ]
type = Explod
trigger1 = timemod = 6,0 && (enemy, anim != [5100,5200])
anim = 1102
postype = p2
pos = -20,-40
random = 30,50
bindtime = 1
sprpriority = 7
scale = 1.2,1.2
vel = random%5,-.4-(random%3)

[State 7000,ex ]
type = Explod
trigger1 = timemod = 7,0 && (enemy, anim != [5100,5200])
anim = 1102
postype = p2
pos = -20,-40
random = 40,40
bindtime = 1
sprpriority = 7
scale = .4,.7
vel = random%2,-.6-(random%3)

[State 7000,ex ]
type = Explod
trigger1 = timemod = 7,0 && (enemy, anim != [5100,5200])
anim = 1102
postype = p2
pos = -20,-30
random = 30,12
bindtime = 1
sprpriority = 7
vel = random%2,-.9-(random%3)
scale = 1,1

[State 7000,ex ]
type = Explod
trigger1 = timemod = 7,0 && (enemy, anim != [5100,5200])
anim = 1102
postype = p2
pos = -20,-50
random = 30,30
bindtime = 1
sprpriority = 7
scale = 1.2,1.2
vel = random%2,-.4-(random%3)

[State 7000,ex ]
type = Explod
trigger1 = (timemod = 8,0) && (enemy, anim = [5100,5162])
anim = 1102
postype = p2
pos = 0,-10
random = 90,5
bindtime = 1
sprpriority = 7
vel = (random%2)/2,-1.5-(random%3)
scale = 1,1


[State 7000,ds ]
type = DestroySelf
trigger1 = (enemy, stateno != [5000,5099]) 
trigger2 = time = 60













;YOU FAIL AT SHINKU TATSUMAKISENPUUKYAKU LV1
[Statedef 3100]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3100
sprpriority = 1
velset = 0,0


[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = -50,-25,-5
paladd = 0,10,25
palmul = .65,.65,.75
trans = add1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3000,sp ]
type = SuperPause
trigger1 = animelem = 2
time = 40
pos = -26,-6
poweradd = -1000
anim = S8000
sound = S8000,0
movetime = 10

[State 3100,vr ]
type = VarRandom
trigger1 = time = 0
v = 3
range = 0,100

[State 3000,vs ]
type = null
triggerall = time = 0
trigger1 = var(3) = [0,50]
trigger1 = (Var(4) := 0)
trigger2 = var(3) = [51,70]
trigger2 = (Var(4) := 5)
trigger3 = var(3) > 70
trigger3 = (Var(4) := 4)

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3101+var(4)

[Statedef 3101]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3102

[Statedef 3102]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time = 0
y = -0.08
;ignorehitpause = 0
;persistent = 1


[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) < 4
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
air.velocity = 11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 53,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) = 4
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,2
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0 && var(4) < 4 && movehit
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
snap = -49,0
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 4

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0


[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 5
value = 3103

[Statedef 3103]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1202
sprpriority = 1


[State 3102,ex ]
type = Explod
trigger1 = time = 7
anim = 3109
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1202,va ]
type = VelAdd
trigger1 = time >= 0
y = .2

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 3104

[Statedef 3104]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3104
sprpriority = 1
velset = 0,0

[State 3104,snd ]
type = PlaySnd
trigger1 = time = 0
value = 5000,0

[State 3103,ps ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3105]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 31051

[Statedef 31051]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time > 0
y = -(var(6)*var(6))/2

[State 31051,vr ]
type = VarRandom
trigger1 = time >= 0
v = 6
range = -3,3

[State 3102,vs ]
type = Veladd
trigger1 = time > 0
x = var(6)

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) < 4
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
air.velocity = 11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 53,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) = 4
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,2
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0 && var(4) < 4 && movehit
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
snap = -49,0
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 4

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 5
value = 31052

[Statedef 31052]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 5050
sprpriority = 1

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1202,va ]
type = gravity
trigger1 = time >= 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 20
value = 5110


[Statedef 3106]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-2

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 31061

[Statedef 31061]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31061
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time = 0
y = -0.08

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,2
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3106
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 5,0
pausetime = 5,5
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8,-6
air.hittime = 20
air.velocity = -8,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 43,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1000,st ]
type = ChangeState
trigger1 = time = 50
value = 31062


[Statedef 31062]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31062
sprpriority = 1
velset = 0,0

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5000,3
channel = 0

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 1
value = 3106,1
channel = 8


[State 31062,VA ]
type = VelAdd
trigger1 = time > 0
x = 3

[State 31062,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1000, hd ]
type = HitDef
trigger1 = time= 0
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 45,5
pausetime = 0,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
guard.velocity = -5
air.velocity = 11,-6
p1stateno = 31063
p2stateno = 31065
fall = 1
kill = 0
fall.recover = 0
getpower = 0,0
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 31062,st ]
type = ChangeState
trigger1 = frontedgedist < 40 && time > 5 && !movehit
value = 310642

[Statedef 31063]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31063
sprpriority = 1
velset = 25,0

[State 31063, ]
type = TargetBind
trigger1 = 1
pos = 54,-70

[State 31062,ts ]
type = TargetState
trigger1 = frontedgedist < 40 
trigger2 = time = 180
value = 31066

[State 31062,st ]
type = ChangeState
trigger1 = frontedgedist < 40 
trigger2 = time = 180
value = 31064

[Statedef 31064]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 5050
sprpriority = 1
velset = -7,-7

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = playSnd
trigger1 = time = 0
value = 191,1

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 40
add = 80,-70,-200  
invertall = 1
sinadd = 0,30,0,9
color = 1

[State 31064,tla ]
type = TargetLifeAdd
trigger1 = time = 0
value = -200
kill = 1

[State 31064,la ]
type = LifeAdd
trigger1 = time = 0
value = -50
kill = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3106
ID = 3100
pos = 50,-20
scale = 1.5, 1.5
sprpriority = 5
ownpal = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3107
ID = 3100
pos = 50,-20
scale = 1.5, 1.5
sprpriority = 5
ownpal = 1

[State 31064, g]
type = Gravity
trigger1 = time >= 0

[State 31064,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 5110

[Statedef 310642]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 5050
sprpriority = 1
velset = -7,-4

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = playSnd
trigger1 = time = 0
value = 191,1


[State 0, ]
type = PalFX
trigger1 = time = 0
time = 40
add = 80,-70,-200  
invertall = 1
sinadd = 0,30,0,9
color = 1


[State 31064,la ]
type = LifeAdd
trigger1 = time = 0
value = -50
kill = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3106
ID = 3100
pos = 50,-60
scale = 3, 3
sprpriority = 5
ownpal = 1


[State 31064, g]
type = Gravity
trigger1 = time >= 0

[State 31064,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 5110

[Statedef 31065]
type    = A
Movetype = H
physics = N
ctrl = 0
VELSET = 0,0
sprpriority = 1

[State 31065,sb ]
type = ScreenBound
trigger1 = 1
value = 0


[State 31065, ]
type = ChangeAnim2
trigger1 = time = 0
value = 31065

[Statedef 31066]
type    = A
Movetype = H
physics = N
ctrl = 0
sprpriority = 1
anim = 5050
velset = -2,-5

[State 31066, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 40
add = 80,-70,-200  
invertall = 1
sinadd = 0,30,0,9
color = 1


[State 31064, g]
type = Gravity
trigger1 = time >= 0

[State 31064,st ]
type = selfState
trigger1 = pos Y >= 0
value = 5110


;YOU FAIL AT SHINKU TATSUMAKISENPUUKYAKU LV2
[Statedef 3110]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3100
sprpriority = 1
velset = 0,0


[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = -50,-25,-5
paladd = 0,10,25
palmul = .65,.65,.75
trans = add1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 3000,sp ]
type = SuperPause
trigger1 = animelem = 2
time = 40
pos = -26,-6
poweradd = -2000
anim = S8001
sound = S8000,1
movetime = 10

[State 3100,vr ]
type = VarRandom
trigger1 = time = 0
v = 3
range = 0,100

[State 3000,vs ]
type = null
triggerall = time = 0
trigger1 = var(3) = [0,60]
trigger1 = (Var(4) := 0)
trigger2 = var(3) = [61,80]
trigger2 = (Var(4) := 5)
trigger3 = var(3) > 80
trigger3 = (Var(4) := 4)

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3111+var(4)

[Statedef 3111]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3112

[Statedef 3112]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
velset = 0,-0.8
juggle = 5

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) < 6
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
air.velocity = 11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 53,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) = 6
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 5,2
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0 && var(4) < 6 && movehit
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
snap = -49,0
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 4

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0


[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 6
value = 3103

[Statedef 3115]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 31151

[Statedef 31151]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time > 0
y = -(var(6)*var(6))/2

[State 31051,vr ]
type = VarRandom
trigger1 = time >= 0
v = 6
range = -3,3

[State 3102,vs ]
type = Veladd
trigger1 = time > 0
x = var(6)

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) < 6
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
air.velocity = 11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 53,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) = 6
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,2
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0 && var(4) < 6 && movehit
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
snap = -49,0
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 4

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 7
value = 31052

[Statedef 3116]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-2

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 31161

[Statedef 31161]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31061
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time = 0
y = -0.08

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,2
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3106
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 5,0
pausetime = 5,5
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8,-6
air.hittime = 20
air.velocity = -8,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 43,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1000,st ]
type = ChangeState
trigger1 = time = 50
value = 31162


[Statedef 31162]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31062
sprpriority = 1
velset = 0,0

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5000,3
channel = 0

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 1
value = 3106,1
channel = 8


[State 31062,VA ]
type = VelAdd
trigger1 = time > 0
x = 3

[State 31062,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1000, hd ]
type = HitDef
trigger1 = time= 0
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 45,5
pausetime = 0,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
guard.velocity = -5
air.velocity = 11,-6
p1stateno = 31163
p2stateno = 31065
fall = 1
kill = 0
fall.recover = 0
getpower = 0,0
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 31062,st ]
type = ChangeState
trigger1 = frontedgedist < 40 && time > 5 && !movehit
value = 310642

[Statedef 31163]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31063
sprpriority = 1
velset = 25,0

[State 31063, ]
type = TargetBind
trigger1 = 1
pos = 54,-70

[State 31062,ts ]
type = TargetState
trigger1 = frontedgedist < 40 
trigger2 = time = 180
value = 31066

[State 31062,st ]
type = ChangeState
trigger1 = frontedgedist < 40 
trigger2 = time = 180
value = 31164

[Statedef 31164]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 5050
sprpriority = 1
velset = -7,-7

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = playSnd
trigger1 = time = 0
value = 191,1

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 40
add = 80,-70,-200  
invertall = 1
sinadd = 0,30,0,9
color = 1

[State 31064,tla ]
type = TargetLifeAdd
trigger1 = time = 0
value = -350
kill = 1

[State 31064,la ]
type = LifeAdd
trigger1 = time = 0
value = -100
kill = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3106
ID = 3100
pos = 50,-60
scale = 2, 2
sprpriority = 5
ownpal = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3107
ID = 3100
pos = 50,-60
scale = 2, 2
sprpriority = 5
ownpal = 1

[State 31064, g]
type = Gravity
trigger1 = time >= 0

[State 31064,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 5110


;YOU FAIL AT TTSPK LV3
[Statedef 3120]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3100
sprpriority = 1
velset = 0,0


[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = -50,-25,-5
paladd = 0,10,25
palmul = .65,.65,.75
trans = add1


[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2


[State 3000,sp ]
type = SuperPause
trigger1 = animelem = 2
time = 40
pos = -26,-6
poweradd = -3000
anim = S8002
sound = S8000,2
movetime = 10

[State 3100,vr ]
type = VarRandom
trigger1 = time = 0
v = 3
range = 0,100

[State 3000,vs ]
type = null
triggerall = time = 0
trigger1 = var(3) = [0,70]
trigger1 = (Var(4) := 0)
trigger2 = var(3) = [71,80]
trigger2 = (Var(4) := 5)
trigger3 = var(3) > 80
trigger3 = (Var(4) := 4)

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3121+var(4)

[Statedef 3121]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3122

[Statedef 3122]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
velset = 0,-0.8
juggle = 5

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) < 8
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
air.velocity = 11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 53,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) = 8
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 5,2
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0 && var(4) < 8 && movehit
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 35,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
snap = -49,0
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 4

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0


[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 8
value = 3103

[Statedef 3125]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 31251

[Statedef 31251]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3102
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time > 0
y = -(var(6)*var(6))/2

[State 31051,vr ]
type = VarRandom
trigger1 = time >= 0
v = 6
range = -3,3

[State 3102,vs ]
type = Veladd
trigger1 = time > 0
x = var(6)

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,1
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1200,1
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9


[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) < 8
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
air.velocity = 11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 53,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0 && var(4) = 8
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,2
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 5,0 && var(4) < 8 && movehit
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 30,5
pausetime = 5,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -11,-6
air.hittime = 20
air.velocity = -11,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
snap = -49,0
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = 4

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1201,va ]
type = VarAdd
trigger1 = animelem = 7,0
v =  4
value = 1

[State 1000,st ]
type = ChangeState
trigger1 = var(4) = 7
value = 31052

[Statedef 3126]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3101
sprpriority = 1
velset = 0,-2

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 1201,va ]
type = Varset
trigger1 = time = 0
v =  4
value = 0

[State 1201,vm ]
type = VelMul
trigger1 = time >= 0 
y = .9

[State 1000,st ]
type = ChangeState
trigger1 = animtime = 0
value = 31261

[Statedef 31261]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31061
sprpriority = 1
juggle = 5

[State 3102,vs ]
type = VelSet
trigger1 = time = 0
y = -0.08

[State 3102,ex ]
type = Explod
trigger1 = timemod = 15,0
anim = 3108
pos = 0,-ceil(pos Y)
scale = 2,2
sprpriority = 4
ownpal = 1

[State 3102,ex ]
type = Explod
trigger1 = timemod = 6,0
anim = 3105
pos = 0,-ceil(pos Y)
sprpriority = -1
ownpal = 1

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3106
channel = 8

[State 3102,va ]
type = Velset
trigger1 = backedgedist < 20 && movehit = 1
x = 5

[State 3102,vm ]
type = VelMul
trigger1 = time >= 0
x = .9

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 3,0
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 5,0
pausetime = 5,5
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8,-6
air.hittime = 20
air.velocity = -8,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
snap = 43,0
fall = 1
fall.recover = 0
getpower = 0,10
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 3102,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201,nhb ]
type = NotHitBy
trigger1 = time >= 0
value = SCA,AP

[State 1000,st ]
type = ChangeState
trigger1 = time = 50
value = 31262


[Statedef 31262]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31062
sprpriority = 1
velset = 0,0

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5000,3
channel = 0

[State 1200,sn ]
type = PlaySnd
trigger1 = time = 1
value = 3106,1
channel = 8


[State 31062,VA ]
type = VelAdd
trigger1 = time > 0
x = 3

[State 31062,pp ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1000, hd ]
type = HitDef
trigger1 = time= 0
attr = A,HA
hitflag = MAF
guardflag = M 
animtype = Hard
priority = 5
damage = 45,5
pausetime = 0,0
sparkno = S7002
sparkxy = -20,-60
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 11,-6
air.hittime = 20
guard.velocity = -5
air.velocity = 11,-6
p1stateno = 31263
p2stateno = 31065
fall = 1
kill = 0
fall.recover = 0
getpower = 0,0
givepower = 0,30
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
sprpriority = -2

[State 31062,st ]
type = ChangeState
trigger1 = frontedgedist < 40 && time > 5 && !movehit
value = 310642

[Statedef 31263]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 31063
sprpriority = 1
velset = 25,0

[State 31063, ]
type = TargetBind
trigger1 = 1
pos = 54,-70

[State 31062,ts ]
type = TargetState
trigger1 = frontedgedist < 40 
trigger2 = time = 180
value = 31066

[State 31062,st ]
type = ChangeState
trigger1 = frontedgedist < 40
trigger2 = time = 180 
value = 31264

[Statedef 31264]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 5050
sprpriority = 1
velset = -7,-7

[State 1200,sn ]
type = StopSnd
trigger1 = time = 0
channel = 8

[State 1200,sn ]
type = playSnd
trigger1 = time = 0
value = 191,1

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 40
add = 80,-70,-200  
invertall = 1
sinadd = 0,30,0,9
color = 1

[State 31064,tla ]
type = TargetLifeAdd
trigger1 = time = 0
value = -450
kill = 1

[State 31064,la ]
type = LifeAdd
trigger1 = time = 0
value = -160
kill = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3106
ID = 3100
pos = 50,-60
scale = 2, 2
sprpriority = 5
ownpal = 1

[State 31064,EX ]
type = Explod
trigger1 = time = 0
anim = 3107
ID = 3100
pos = 50,-60
scale = 2, 2
sprpriority = 5
ownpal = 1

[State 31064, g]
type = Gravity
trigger1 = time >= 0

[State 31064,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 5110





;ULTRA PISSED OFF MODE
[Statedef 3200]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3200
sprpriority = 1
velset = 0,0

[State 3200,vs ]
type = VarSet
trigger1 = animelem = 3
v =  7
value = 1


[State 3200,sn ]
type = PlaySnd
trigger1 = animelem = 3
value = 3200,0
volume = 255

[State 3000,sp ]
type = SuperPause
trigger1 = time = 0
movetime = 12
time = 40
pos = -26,-55
poweradd = 0
anim = S8002
sound = S8000,2
movetime = 6

[State 3000,aura ]
type = Explod
trigger1 = animelem = 3
anim = 3202
pos = 0,0
postype = p1
bindtime = -1
supermovetime = 40
sprpriority = 4
ownpal = 1


[State 31064,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3201]
type    = S
Movetype = I
physics = S
ctrl = 0
anim = 3201
sprpriority = 1
velset = 0,0

[State 3000,aura ]
type = Explod
trigger1 = timemod = 2,0 && animelem = 3,<0
anim = 3203
pos = 0,-20
random = 60,20
postype = p1
bindtime = 1
vel = 0,-1
accel = 0,-(.2*(random%4))
supermovetime = 40
sprpriority = 4
ownpal = 1

[State 3200,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3200,3
volume = 255


[State 3201, PalFX] 
type = PalFX
trigger1 = TIME = 0
time = 0
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1


[State 3200,vs ]
type = VarSet
trigger1 = time = 0
v =  7
value = 0

[State 31064,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------
;YOU SUPER FAIL AT SHIN SHORYUKEN
[Statedef 3500]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3500
sprpriority = 1
velset = 0,0
juggle = 5

[State 1201,nhb ]
type = NotHitBy
trigger1 = time <12
value = SCA,AA,AP

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = M
guardflag = MA
animtype = hard
priority = 5
damage = 100,5
pausetime = 60,60
guard.pausetime = 5,5
sparkno = S7002
sparkxy = -10,-77
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 3,-6
guard.velocity = -9
air.velocity = 3,-6
snap = 20,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 16
envshake.ampl = -10
air.juggle = 0
p1stateno = 3505
kill = 0

[State 1140,ex ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
palpostbright = -5,-50,-50
paladd = 25,10,0
palmul = .75,.25,.65
trans = add1

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 3000,sp ]
type = SuperPause
trigger1 = time = 0
time = 40
pos = -26,-55
poweradd = -3000
anim = S8002
sound = S8000,2
movetime = 6

[State -2, Hit 1]
type = PlaySnd
trigger1 = animtime = 0
value = 40,0

[State 106, 4]
type = ChangeState
trigger1 = animtime = 0
value = 3501

[Statedef 3501]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 1072
sprpriority = 1
juggle = 5

[State 1000,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 1140,ex ]
type = AfterImageTime
trigger1 = time >= 0
time = 2

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5
damage = 350,5
pausetime = 12,10
sparkno = S7002
sparkxy = -20,-100
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-8
guard.velocity = -9
air.velocity = -1,-8
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
air.juggle = 0

[State 1000, hd ]
type = HitDef
trigger1 = animelem = 10, >= 0 && pos Y <= -5
attr = A,HA
hitflag = MAFD
guardflag = 
animtype = Hard
priority = 5
damage = 200,5
pausetime = 12,10
sparkno = S7001
sparkxy = -20,0
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4,8
guard.velocity = -9
air.velocity = -4,8
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall = 1
fall.recovertime = 10
getpower = 0,0
givepower = 0,0
envshake.time = 16
envshake.ampl = -10
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = -4
air.juggle = 0
persistent = 0

[State 1072,fall ]
type = PlaySnd
trigger1 = animelem = 10
value = 1050,0
freqmul = 0.7

[State 1052,vs ]
type = VelSet
trigger1 = time = 0
y = -12

[State 1052,va ]
type = VelMul
trigger1 = time > 0
x = .97

[State 1052,va ]
type = VelAdd
trigger1 = time = 0
x = 5

[State 1052,g]
type = Gravity
trigger1 = time > 0

[State 1000,st ]
type = ChangeState
trigger1 = pos Y >= 0 && time > 2
value = 3502

[Statedef 3502]
type    = C
Movetype = A
physics = N
ctrl = 0
anim = 3502
sprpriority = 1
juggle = 5
velset = 0,0

[State 3502,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,3

[State 3502,ev ]
type = EnvShake
trigger1 = time = 0
time = 30
ampl = -20

[State 3502,ex ]
type = Explod
trigger1 = time = 0
anim = F62
sprpriority = 5
ontop = 1
ownpal = 1


[State 200,hd ]
type = HitDef
trigger1 = time = 0
attr = C,HA
affectteam = B
hitflag = MFD
guardflag = L
animtype = hard
damage = 120,0
pausetime = 12,12
sparkno = S7002
sparkxy = 0,-10
hitsound = S200,3
guardsound = 6,0
ground.type = trip
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = 0,-5
getpower = 0,0
givepower = 0,0
fall = 1
fall.recover = 0

[State 3502,ps ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1000,st ]
type = ChangeState
trigger1 = ANIMTIME = 0
value = 5120

[Statedef 3505]
type    = S
Movetype = A
physics = S
ctrl = 0
anim = 3505
sprpriority = 1
velset = 0,0
juggle = 0

[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 5
damage = 100,5
pausetime = 30,60
sparkno = S7002
sparkxy = -35,-77
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 2,-6
guard.velocity = -9
air.velocity = 2,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 16
envshake.ampl = -10
air.juggle = 0
kill = 0

[State 192,ps ]
type = PlaySnd
trigger1 = time = 10
value = 192,0

[State 3505,ex ]
type = Explod
trigger1 = time = 10
anim = F102
pos = 29,-84
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 192,ps ]
type = PlaySnd
trigger1 = time = 0 && anim != 3505
value = 3500,0
ignorehitpause = 1
persistent = 0

[State 192,ps ]
type = PlaySnd
trigger1 = time = 7
value = 1100,0
channel = 0

[State 1000,st ]
type = ChangeState
trigger1 = ANIMTIME = 0
value = 3506

[Statedef 3506]
type    = A
Movetype = A
physics = N
ctrl = 0
anim = 3506
sprpriority = 1
velset = -7,-7
juggle = 0


[State 192,ps ]
type = StopSnd
trigger1 = time = 0
channel = 0


[State 0, ]
type = PalFX
trigger1 = time = 0
time = 40
add = 80,-70,-200  
invertall = 1
sinadd = 0,30,0,9
color = 1

[State 3506,la ]
type = LifeAdd
trigger1 = time = 0
value = -900
kill = 0

[State 192,ps ]
type = PlaySnd
trigger1 = time = 0
value = 191,1

[State 3506,ex ]
type = Explod
trigger1 = time = 0
anim = 3106
pos = 30,-50
scale = 1,1
sprpriority = 5
ownpal = 1

[State 3506,ex ]
type = Explod
trigger1 = time = 0
anim = 3107
pos = 30,-50
scale = 1,1
sprpriority = 5
ownpal = 1


[State 1000, hd ]
type = HitDef
trigger1 = time = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 5
damage = 700,5
pausetime = 5,5
sparkno = S7002
sparkxy = -35,-77
hitsound = S200,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -7,-5
guard.velocity = -9
air.velocity = -7,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
envshake.time = 26
envshake.ampl = -20
air.juggle = 0
palfx.time = 50
palfx.add = 80,-70,-200  
palfx.invertall = 1
palfx.sinadd = 0,30,0,9
palfx.color = 1



[State 1000,vs ]
type = VarSet
trigger1 = movehit 
v =  1 ;Burn Effect
value = 1

[State 3506, ]
type = Gravity
trigger1 = 1

[State 31064,st ]
type = ChangeState
trigger1 = pos Y >= 0 && time > 2
value = 5110

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190


;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = N 
ctrl = 0
anim = 105
sprpriority = 1

[State 105,pa ]
type = PosAdd
trigger1 = animelem = 2
x = -8

[State 105,pa ]
type = PosAdd
trigger1 = animelem = 3
x = -6

[State 105, 1]
type = VelSet
trigger1 = animelem = 3
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105,vm ]
type = VelMul
trigger1 = time > 7
x = .9

[State 105, 3]
type = ChangeState
trigger1 = animtime = 0
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1







;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]


;ULTRA PISSED OFF MODE

[State -2, ]
type = DisplayToClipboard
trigger1 = 1
text = "var %d, var %d"
params = var(7), var(51)

[State -2,PA ]
type = PowerAdd
trigger1 = var(7) = 1 && roundstate = 2
value = -4

[State -2,PA ]
type = PowerAdd
trigger1 = var(7) = 1 && movetype = H
value = 8

[State -2,PA ]
type = VarSet
trigger1 = var(7) = 1 && power = 0
v =  7
value = 2

[State -2,CS ]
type = ChangeState
trigger1 = var(7) = 2 && statetype != A && ctrl
value = 3201
ctrl = 0

[State -2,ANTI CHEAPO ]
type = PowerSet
trigger1 = (var(2) = [5,6]) && roundstate = 2
value = 3000
ignorehitpause = 1

[State -2, ]
type = VarSet
trigger1 = (var(2) = [5,6])
v = 7
value = 1

[State -2, ]
type = VarSet
trigger1 = roundstate = 2
v = 51
value = var(7)

[State 5900, power reset ]
type = PowerSet
trigger1 = var(51) != 0 && roundstate < 2
value = 0

[State -2, ANTI CHEAPO ]
type = AttackMulSet
trigger1 = (var(2) = 5) && (var(7) = 1)
value = 3

[State -2, not ANTI CHEAPO ]
type = AttackMulSet
trigger1 = (var(2) != 5) && (var(7) = 1)
value = 1.5

[State -2, ANTI CHEAPO ]
type = AttackMulSet
trigger1 = (var(2) = 6) && (var(7) = 1)
value = 3

[State -2, ANTI CHEAPO ]
type = NotHitBy
trigger1 = (var(2) = 6) && (var(7) = 1)
value = SCA,AA,AP,AT
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = (var(2) = 6)&& timemod = 8,0
anim =  1002
ID =6
pos = -20,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 20,50
removetime = -2
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = (var(2) = 6)&& timemod = 8,0  && pos Y = 0
anim =  3105
ID =6
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = (var(2) = 6)&& timemod = 8,2
anim =  1002
ID =6
pos = 20,-50
postype = p1
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 20,50
removetime = -2
scale = .5,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1



;END ULTRA PISSED OFF MODE


[State -2,afterimagereset ]
type = AfterImageTime
trigger1 = movetype = H
time = 0

[State -2,runafterimage]
type = AfterImage
trigger1 = time = 0
trigger1 = prevstateno = 100
trigger1 = stateno = 40
time = 30
length = 12
palbright = 30,30,30
palcontrast = 120,120,120
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .75,.75,.75
trans = add1

[State -2,stopsn ]
type = StopSnd
trigger1 = prevstateno = 193 && numhelper(1931) = 0
trigger2 = prevstateno = 196 && numhelper(1961) = 0
trigger3 = prevstateno = 194 && roundstate = 2
channel = 1


[State -2,run ]
type = Playsnd
trigger1 = anim = 100 && animelem = 2
trigger2 = anim = 100 && animelem = 5
value = 100,0


[State 7000,ex ]
type = Explod
triggerall = anim = 5050
trigger1 = timemod = 4,0  && prevstateno = 31064 
trigger2 = timemod = 4,0  && stateno = 31064
trigger3 = timemod = 4,0  && prevstateno = 31164 
trigger4 = timemod = 4,0  && stateno = 31164
trigger5 = timemod = 4,0  && prevstateno = 31264 
trigger6 = timemod = 4,0  && stateno = 31264
anim = 1102
postype = p2
pos = -20,-20
random = 10,15
bindtime = 1
sprpriority = 7
vel = 2,-.6
scale = 1,1
ownpal = 1

[State 7000,ex ]
type = Explod
triggerall = anim = 5050
trigger1 = timemod = 4,0  && prevstateno = 31064 
trigger2 = timemod = 4,0  && stateno = 31064 
trigger3 = timemod = 4,0  && prevstateno = 310642
trigger4 = timemod = 4,0  && stateno = 310642
trigger5 = timemod = 4,0  && prevstateno = 3506
trigger6 = timemod = 4,0  && stateno = 3506
trigger7 = timemod = 4,0  && prevstateno = 31164 
trigger8 = timemod = 4,0  && stateno = 31164 
trigger9 = timemod = 4,0  && prevstateno = 31264
trigger10 = timemod = 4,0  && stateno = 31264
anim = 1102
postype = p1
pos = -20,-20
random = 10,15
bindtime = 1
sprpriority = 7
vel = 2,-.6
scale = 1,1
ownpal = 1

[State 7000,ex ]
type = Explod
triggerall = anim = 5050
trigger1 = timemod = 4,0  && prevstateno = 31064 
trigger2 = timemod = 4,0  && stateno = 31064 
trigger3 = timemod = 4,0  && prevstateno = 31164 
trigger4 = timemod = 4,0  && stateno = 31164
trigger5 = timemod = 4,0  && prevstateno = 31264 
trigger6 = timemod = 4,0  && stateno = 31264
anim = 1102
postype = p2
pos = -20,-20
random = 10,15
bindtime = 1
sprpriority = 7
vel = 2,-.6
scale = 2,2
ownpal = 1

[State 7000,ex ]
type = Explod
triggerall = stateno != [5100,5110]
trigger1 = timemod = 4,0  && prevstateno = 31064 
trigger2 = timemod = 4,0  && stateno = 31064 
trigger3 = timemod = 4,0  && prevstateno = 310642 
trigger4 = timemod = 4,0  && stateno = 310642 
trigger5 = timemod = 4,0  && prevstateno = 3506
trigger6 = timemod = 4,0  && stateno = 3506
trigger7 = timemod = 4,0  && prevstateno = 31164 
trigger8 = timemod = 4,0  && stateno = 31164 
trigger9 = timemod = 4,0  && prevstateno = 31264
trigger10 = timemod = 4,0  && stateno = 31264
anim = 1102
postype = p1
pos = -20,-20
random = 10,15
bindtime = 1
sprpriority = 7
vel = 2,-.6
scale = 2,2
ownpal = 1

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5000
trigger2 = anim = 5001
value = 5000,5

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5002
value = 5000,1

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5010
value = 5000,0

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5011
value = 5000,3

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5012
value = 5000,4

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 5070
trigger1 = time = 1
value = 5000,2

[State -2, Hit 1]
type = PlaySnd
trigger1 = stateno = 40 && time = 0
value = 40,0

[State 1200,sn ]
type = StopSnd
trigger1 = (stateno = [5000,5160]) && (prevstateno = [1200,1232])
channel = 8

[State 1200,sn ]
type = StopSnd
trigger1 = prevstateno = 800 
channel = 12

[State -2,burn effect reset ]
type = VarSet
trigger1 = p2movetype !=H
v =  1
value = 0

[State -2,fire ]
type = Helper
trigger1 = (var(1) = 1) && (numhelper(7000) = 0) && (enemy, stateno = [5000,5101])
helpertype = normal
name = "fire"
ID = 7000
pos = -20,-79
postype = p2
stateno = 7000
ownpal = 1


[State -2,winquotes]
type = Helper
triggerall = Win && numhelper(1800) = 0 && time = 0 && (stateno = 180) && matchover
trigger1 = numpartner
trigger1 = ((partner, alive) ^^ (ID > partner, ID)) || (partner, life = 0)
trigger2 = !numpartner
helpertype = normal
name = "Winquotes"
ID = 1800
pos = 0,0
postype = p1
facing = 1
stateno = 1800
ownpal = 1
ignorehitpause = 1
persistent = 0


[State -2,recognition]
type = Null
triggerall = !var(2)
trigger1 = (p2name = "Gouki")
trigger1 = (Var(2) := 1)
trigger2 = (p2name = "Akuma")
trigger2 = (Var(2) := 1)
trigger3 = (p2name = "Ken")
trigger3 = (Var(2) := 2)
trigger4 = (p2name = "Shin Gouki")
trigger4 = (Var(2) := 1)
trigger5 = (p2name = "Shin Akuma")
trigger5 = (Var(2) := 1)
trigger6 = (p2name = "Ryu")
trigger6 = (Var(2) := 3)
trigger7 = (p2name = "Evil Ryu")
trigger7 = (Var(2) := 4)
trigger8 = enemy, authorname = "Ex-Inferis"
trigger8 = (Var(2) := 5)
trigger9 = enemy, authorname = "100%Ex-Inferis"
trigger9 = (Var(2) := 5)
trigger10 = enemy, authorname = "RyouWin"
trigger10 = (Var(2) := 5)
trigger11 = (p2name = "Evil Ryu Hoshi")
trigger11 = (Var(2) := 5)
trigger12 = (p2name = "Evil Ken")
trigger12 = (Var(2) := 5)
trigger13 = (p2name = "Dragon Claw")
trigger13 = (Var(2) := 5)
trigger14 = enemy, authorname = "Ex-Inferis & On-Off" 
trigger14 = (Var(2) := 5)
trigger15 = (p2name = "Developer Fags You Imbecile")
trigger15 = (Var(2) := 5)
trigger16 = (p2name = "dopefish")
trigger16 = (Var(2) := 5)
trigger17 = (p2name = "D.candy")
trigger17 = (Var(2) := 5)
trigger18 = (p2name = "What The Fuck")
trigger18 = (Var(2) := 5)
trigger18 = (p2name = "LEOPALDON_GGI")
trigger18 = (Var(2) := 5)
trigger19 = (p2name = "Psycho Shredder[S]")
trigger19 = (Var(2) := 5)
trigger20 = (p2name = "Biomenace Skullman")
trigger20 = (Var(2) := 5)
trigger21 = (p2name = "God Orochi")
trigger21 = (Var(2) := 5)
trigger22 = (p2name = "Ogre")
trigger22 = (Var(2) := 5)
trigger23 = (p2name = "Zero_Athena")
trigger23 = (Var(2) := 5)
trigger24 = (p2name = "Ryu Lv2")
trigger24 = (Var(2) := 5)
trigger25 = (p2name = "Gouki Lv2")
trigger25 = (Var(2) := 5)
trigger26 = (p2name = "cvsgouki")
trigger26 = (Var(2) := 1)
trigger27 = (p2name = "Rare Akuma")
trigger27 = (Var(2) := 6)


[State -2, PalFX] 
type = PalFX
trigger1 = var(7) = 1 && MOVEtype != H && (var(2) != 6)
time = 9999
add = 0,-80,-40
mul = 255,255,255
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1


[State -2, PalFX]
type = PalFX
trigger1 = var(7) = 1 && MOVEtype != H && (var(2) = 6) && time = 0
time = 9999
add = -80,-100,-80
mul = 255,255,255
sinadd = 95,95,95,100
invertall = 0
color = 256
ignorehitpause = 1



;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]







;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

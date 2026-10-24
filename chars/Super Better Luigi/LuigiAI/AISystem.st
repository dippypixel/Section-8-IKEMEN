;=======================================================================================
; AI Blocking Helper
[Statedef 15900]
type = A
movetype = I
physics = N
anim = 9741
ctrl = 0

;======================================================================================
; Blocking Memory 

[State 0, Blacklist Lows]
type = Null
triggerall = root,prevstateno = [120,159] 
triggerall = root,stateno != [120,159] 
triggerall = root,statetype != C 
triggerall = root,movetype = H
triggerall = ishelper(15900)
trigger1 = enemynear,stateno != var(0)
trigger1 = enemynear,stateno != var(1)
trigger1 = enemynear,stateno != var(2)
trigger1 = enemynear,stateno != var(3)
trigger1 = enemynear,stateno != var(4)
trigger1 = enemynear,stateno != var(5)
trigger1 = enemynear,stateno != var(6)
trigger1 = enemynear,stateno != var(7)
trigger1 = enemynear,stateno != var(8)
trigger1 = enemynear,stateno != var(9)
trigger1 = var(0):= enemynear,stateno || 1
trigger2 = enemynear,stateno != var(0)
trigger2 = enemynear,stateno != var(1)
trigger2 = enemynear,stateno != var(2)
trigger2 = enemynear,stateno != var(3)
trigger2 = enemynear,stateno != var(4)
trigger2 = enemynear,stateno != var(5)
trigger2 = enemynear,stateno != var(6)
trigger2 = enemynear,stateno != var(7)
trigger2 = enemynear,stateno != var(8)
trigger2 = enemynear,stateno != var(9)
trigger2 = var(1):= enemynear,stateno || 1
trigger3 = enemynear,stateno != var(0)
trigger3 = enemynear,stateno != var(1)
trigger3 = enemynear,stateno != var(2)
trigger3 = enemynear,stateno != var(3)
trigger3 = enemynear,stateno != var(4)
trigger3 = enemynear,stateno != var(5)
trigger3 = enemynear,stateno != var(6)
trigger3 = enemynear,stateno != var(7)
trigger3 = enemynear,stateno != var(8)
trigger3 = enemynear,stateno != var(9)
trigger3 = var(2):= enemynear,stateno || 1
trigger4 = enemynear,stateno != var(0)
trigger4 = enemynear,stateno != var(1)
trigger4 = enemynear,stateno != var(2)
trigger4 = enemynear,stateno != var(3)
trigger4 = enemynear,stateno != var(4)
trigger4 = enemynear,stateno != var(5)
trigger4 = enemynear,stateno != var(6)
trigger4 = enemynear,stateno != var(7)
trigger4 = enemynear,stateno != var(8)
trigger4 = enemynear,stateno != var(9)
trigger4 = var(3):= enemynear,stateno || 1
trigger5 = enemynear,stateno != var(0)
trigger5 = enemynear,stateno != var(1)
trigger5 = enemynear,stateno != var(2)
trigger5 = enemynear,stateno != var(3)
trigger5 = enemynear,stateno != var(4)
trigger5 = enemynear,stateno != var(5)
trigger5 = enemynear,stateno != var(6)
trigger5 = enemynear,stateno != var(7)
trigger5 = enemynear,stateno != var(8)
trigger5 = enemynear,stateno != var(9)
trigger5 = var(4):= enemynear,stateno || 1
trigger6 = enemynear,stateno != var(0)
trigger6 = enemynear,stateno != var(1)
trigger6 = enemynear,stateno != var(2)
trigger6 = enemynear,stateno != var(3)
trigger6 = enemynear,stateno != var(4)
trigger6 = enemynear,stateno != var(5)
trigger6 = enemynear,stateno != var(6)
trigger6 = enemynear,stateno != var(7)
trigger6 = enemynear,stateno != var(8)
trigger6 = enemynear,stateno != var(9)
trigger6 = var(5):= enemynear,stateno || 1
trigger7 = enemynear,stateno != var(0)
trigger7 = enemynear,stateno != var(1)
trigger7 = enemynear,stateno != var(2)
trigger7 = enemynear,stateno != var(3)
trigger7 = enemynear,stateno != var(4)
trigger7 = enemynear,stateno != var(5)
trigger7 = enemynear,stateno != var(6)
trigger7 = enemynear,stateno != var(7)
trigger7 = enemynear,stateno != var(8)
trigger7 = enemynear,stateno != var(9)
trigger7 = var(6):= enemynear,stateno || 1
trigger8 = enemynear,stateno != var(0)
trigger8 = enemynear,stateno != var(1)
trigger8 = enemynear,stateno != var(2)
trigger8 = enemynear,stateno != var(3)
trigger8 = enemynear,stateno != var(4)
trigger8 = enemynear,stateno != var(5)
trigger8 = enemynear,stateno != var(6)
trigger8 = enemynear,stateno != var(7)
trigger8 = enemynear,stateno != var(8)
trigger8 = enemynear,stateno != var(9)
trigger8 = var(7):= enemynear,stateno || 1
trigger9 = enemynear,stateno != var(0)
trigger9 = enemynear,stateno != var(1)
trigger9 = enemynear,stateno != var(2)
trigger9 = enemynear,stateno != var(3)
trigger9 = enemynear,stateno != var(4)
trigger9 = enemynear,stateno != var(5)
trigger9 = enemynear,stateno != var(6)
trigger9 = enemynear,stateno != var(7)
trigger9 = enemynear,stateno != var(8)
trigger9 = enemynear,stateno != var(9)
trigger9 = var(8):= enemynear,stateno || 1
trigger10 = enemynear,stateno != var(0)
trigger10 = enemynear,stateno != var(1)
trigger10 = enemynear,stateno != var(2)
trigger10 = enemynear,stateno != var(3)
trigger10 = enemynear,stateno != var(4)
trigger10 = enemynear,stateno != var(5)
trigger10 = enemynear,stateno != var(6)
trigger10 = enemynear,stateno != var(7)
trigger10 = enemynear,stateno != var(8)
trigger10 = enemynear,stateno != var(9)
trigger10 = var(9):= enemynear,stateno || 1
ignorehitpause = 1

[State 0, Blacklist Highs]
type = Null
triggerall = root,prevstateno = [120,159]
triggerall = root,stateno != [120,159]
triggerall = root,movetype = H
triggerall = root,statetype = C
triggerall = ishelper(15900)
trigger1 = enemynear,stateno != var(10)
trigger1 = enemynear,stateno != var(11)
trigger1 = enemynear,stateno != var(12)
trigger1 = enemynear,stateno != var(13)
trigger1 = enemynear,stateno != var(14)
trigger1 = enemynear,stateno != var(15)
trigger1 = enemynear,stateno != var(16)
trigger1 = enemynear,stateno != var(17)
trigger1 = enemynear,stateno != var(18)
trigger1 = enemynear,stateno != var(19)
trigger1 = var(10):= enemynear,stateno || 1
trigger2 = enemynear,stateno != var(10)
trigger2 = enemynear,stateno != var(11)
trigger2 = enemynear,stateno != var(12)
trigger2 = enemynear,stateno != var(13)
trigger2 = enemynear,stateno != var(14)
trigger2 = enemynear,stateno != var(15)
trigger2 = enemynear,stateno != var(16)
trigger2 = enemynear,stateno != var(17)
trigger2 = enemynear,stateno != var(18)
trigger2 = enemynear,stateno != var(19)
trigger2 = var(11):= enemynear,stateno || 1
trigger3 = enemynear,stateno != var(10)
trigger3 = enemynear,stateno != var(11)
trigger3 = enemynear,stateno != var(12)
trigger3 = enemynear,stateno != var(13)
trigger3 = enemynear,stateno != var(14)
trigger3 = enemynear,stateno != var(15)
trigger3 = enemynear,stateno != var(16)
trigger3 = enemynear,stateno != var(17)
trigger3 = enemynear,stateno != var(18)
trigger3 = enemynear,stateno != var(19)
trigger3 = var(12):= enemynear,stateno || 1
trigger4 = enemynear,stateno != var(10)
trigger4 = enemynear,stateno != var(11)
trigger4 = enemynear,stateno != var(12)
trigger4 = enemynear,stateno != var(13)
trigger4 = enemynear,stateno != var(14)
trigger4 = enemynear,stateno != var(15)
trigger4 = enemynear,stateno != var(16)
trigger4 = enemynear,stateno != var(17)
trigger4 = enemynear,stateno != var(18)
trigger4 = enemynear,stateno != var(19)
trigger4 = var(13):= enemynear,stateno || 1
trigger5 = enemynear,stateno != var(10)
trigger5 = enemynear,stateno != var(11)
trigger5 = enemynear,stateno != var(12)
trigger5 = enemynear,stateno != var(13)
trigger5 = enemynear,stateno != var(14)
trigger5 = enemynear,stateno != var(15)
trigger5 = enemynear,stateno != var(16)
trigger5 = enemynear,stateno != var(17)
trigger5 = enemynear,stateno != var(18)
trigger5 = enemynear,stateno != var(19)
trigger5 = var(14):= enemynear,stateno || 1
trigger6 = enemynear,stateno != var(10)
trigger6 = enemynear,stateno != var(11)
trigger6 = enemynear,stateno != var(12)
trigger6 = enemynear,stateno != var(13)
trigger6 = enemynear,stateno != var(14)
trigger6 = enemynear,stateno != var(15)
trigger6 = enemynear,stateno != var(16)
trigger6 = enemynear,stateno != var(17)
trigger6 = enemynear,stateno != var(18)
trigger6 = enemynear,stateno != var(19)
trigger6 = var(15):= enemynear,stateno || 1
trigger7 = enemynear,stateno != var(10)
trigger7 = enemynear,stateno != var(11)
trigger7 = enemynear,stateno != var(12)
trigger7 = enemynear,stateno != var(13)
trigger7 = enemynear,stateno != var(14)
trigger7 = enemynear,stateno != var(15)
trigger7 = enemynear,stateno != var(16)
trigger7 = enemynear,stateno != var(17)
trigger7 = enemynear,stateno != var(18)
trigger7 = enemynear,stateno != var(19)
trigger7 = var(16):= enemynear,stateno || 1
trigger8 = enemynear,stateno != var(10)
trigger8 = enemynear,stateno != var(11)
trigger8 = enemynear,stateno != var(12)
trigger8 = enemynear,stateno != var(13)
trigger8 = enemynear,stateno != var(14)
trigger8 = enemynear,stateno != var(15)
trigger8 = enemynear,stateno != var(16)
trigger8 = enemynear,stateno != var(17)
trigger8 = enemynear,stateno != var(18)
trigger8 = enemynear,stateno != var(19)
trigger8 = var(17):= enemynear,stateno || 1
trigger9 = enemynear,stateno != var(10)
trigger9 = enemynear,stateno != var(11)
trigger9 = enemynear,stateno != var(12)
trigger9 = enemynear,stateno != var(13)
trigger9 = enemynear,stateno != var(14)
trigger9 = enemynear,stateno != var(15)
trigger9 = enemynear,stateno != var(16)
trigger9 = enemynear,stateno != var(17)
trigger9 = enemynear,stateno != var(18)
trigger9 = enemynear,stateno != var(19)
trigger9 = var(18):= enemynear,stateno || 1
trigger10 = enemynear,stateno != var(10)
trigger10 = enemynear,stateno != var(11)
trigger10 = enemynear,stateno != var(12)
trigger10 = enemynear,stateno != var(13)
trigger10 = enemynear,stateno != var(14)
trigger10 = enemynear,stateno != var(15)
trigger10 = enemynear,stateno != var(16)
trigger10 = enemynear,stateno != var(17)
trigger10 = enemynear,stateno != var(18)
trigger10 = enemynear,stateno != var(19)
trigger10 = var(19):= enemynear,stateno || 1
ignorehitpause = 1

[State 0, Blacklist Lows (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0 
triggerall = playeridexist(helper(33333333),var(4))
triggerall = playerid(helper(33333333),var(4)),movehit = 1
triggerall = playerid(helper(33333333),var(4)),statetype != C 
triggerall = ((root,prevstateno = [120,159]) && (root,statetype = S || root,statetype = A)) 
triggerall = ishelper(15900)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(20)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(21)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(22)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(23)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(24)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(25)
trigger1 = var(20):= playerid(helper(33333333),var(4)),stateno || 1
trigger2 = playerid(helper(33333333),var(4)),stateno != var(20)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(21)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(22)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(23)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(24)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(25)
trigger2 = var(21):= playerid(helper(33333333),var(4)),stateno || 1
trigger3 = playerid(helper(33333333),var(4)),stateno != var(20)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(21)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(22)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(23)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(24)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(25)
trigger3 = var(22):= playerid(helper(33333333),var(4)),stateno || 1
trigger4 = playerid(helper(33333333),var(4)),stateno != var(20)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(21)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(22)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(23)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(24)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(25)
trigger4 = var(23):= playerid(helper(33333333),var(4)),stateno || 1
trigger5 = playerid(helper(33333333),var(4)),stateno != var(20)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(21)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(22)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(23)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(24)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(25)
trigger5 = var(24):= playerid(helper(33333333),var(4)),stateno || 1
trigger6 = playerid(helper(33333333),var(4)),stateno != var(20)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(21)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(22)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(23)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(24)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(25)
trigger6 = var(25):= playerid(helper(33333333),var(4)),stateno || 1
ignorehitpause = 1

[State 0, Blacklist Highs (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0 
triggerall = playeridexist(helper(33333333),var(4))
triggerall = playerid(helper(33333333),var(4)),movehit = 1
triggerall = ((root,prevstateno = [120,159]) && root,statetype = C) 
triggerall = ishelper(15900)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(30)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(31)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(32)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(33)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(34)
trigger1 = playerid(helper(33333333),var(4)),stateno != var(35)
trigger1 = var(30):= playerid(helper(33333333),var(4)),stateno || 1
trigger2 = playerid(helper(33333333),var(4)),stateno != var(30)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(31)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(32)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(33)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(34)
trigger2 = playerid(helper(33333333),var(4)),stateno != var(35)
trigger2 = var(31):= playerid(helper(33333333),var(4)),stateno || 1
trigger3 = playerid(helper(33333333),var(4)),stateno != var(30)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(31)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(32)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(33)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(34)
trigger3 = playerid(helper(33333333),var(4)),stateno != var(35)
trigger3 = var(32):= playerid(helper(33333333),var(4)),stateno || 1
trigger4 = playerid(helper(33333333),var(4)),stateno != var(30)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(31)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(32)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(33)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(34)
trigger4 = playerid(helper(33333333),var(4)),stateno != var(35)
trigger4 = var(33):= playerid(helper(33333333),var(4)),stateno || 1
trigger5 = playerid(helper(33333333),var(4)),stateno != var(30)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(31)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(32)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(33)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(34)
trigger5 = playerid(helper(33333333),var(4)),stateno != var(35)
trigger5 = var(34):= playerid(helper(33333333),var(4)),stateno || 1
trigger6 = playerid(helper(33333333),var(4)),stateno != var(30)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(31)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(32)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(33)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(34)
trigger6 = playerid(helper(33333333),var(4)),stateno != var(35)
trigger6 = var(35):= playerid(helper(33333333),var(4)),stateno || 1
ignorehitpause = 1

[State 0, Clear]
type = VarSet
trigger1 = 1
var(41) = 0
ignorehitpause = 1

[State 0, Low Blocks]
type = VarSet
triggerall = enemynear,movetype = A
trigger1 = enemynear,stateno = var(0)
trigger2 = enemynear,stateno = var(1)
trigger3 = enemynear,stateno = var(2)
trigger4 = enemynear,stateno = var(3)
trigger5 = enemynear,stateno = var(4)
trigger6 = enemynear,stateno = var(5)
trigger7 = enemynear,stateno = var(6)
trigger8 = enemynear,stateno = var(7)
trigger9 = enemynear,stateno = var(8)
trigger10 = enemynear,stateno = var(9)
var(41) = 1
ignorehitpause = 1

[State 0, Low Blocks (Projectiles)]
type = VarSet
triggerall = numhelper(33333333) > 0 
triggerall = playeridexist(helper(33333333),var(4))
trigger1 = playerid(helper(33333333),var(4)),stateno = var(20)
trigger2 = playerid(helper(33333333),var(4)),stateno = var(21)
trigger3 = playerid(helper(33333333),var(4)),stateno = var(22)
trigger4 = playerid(helper(33333333),var(4)),stateno = var(23)
trigger5 = playerid(helper(33333333),var(4)),stateno = var(24)
trigger6 = playerid(helper(33333333),var(4)),stateno = var(25)
var(41) = 1
ignorehitpause = 1

[State 0, High Blocks]
type = VarSet
triggerall = enemynear,movetype = A
trigger1 = enemynear,stateno = var(10)
trigger2 = enemynear,stateno = var(11)
trigger3 = enemynear,stateno = var(12)
trigger4 = enemynear,stateno = var(13)
trigger5 = enemynear,stateno = var(14)
trigger6 = enemynear,stateno = var(15)
trigger7 = enemynear,stateno = var(16)
trigger8 = enemynear,stateno = var(17)
trigger9 = enemynear,stateno = var(18)
trigger10 = enemynear,stateno = var(19)
var(41) = 2
ignorehitpause = 1

[State 0, High Blocks]
type = VarSet
triggerall = numhelper(33333333) > 0 
triggerall = playeridexist(helper(33333333),var(4))
trigger1 = playerid(helper(33333333),var(4)),stateno = var(30)
trigger2 = playerid(helper(33333333),var(4)),stateno = var(31)
trigger3 = playerid(helper(33333333),var(4)),stateno = var(32)
trigger4 = playerid(helper(33333333),var(4)),stateno = var(33)
trigger5 = playerid(helper(33333333),var(4)),stateno = var(34)
trigger6 = playerid(helper(33333333),var(4)),stateno = var(35)
var(41) = 2
ignorehitpause = 1

;==========================================================================
; InGuardDist Extension

[State 0, Block Signal for Projectiles]
type = VarSet
trigger1 = 1
var(52) = 0

[State 0, Block Signal for Projectiles]
type = VarSet
triggerall = numhelper(33333333)
trigger1 = playeridexist(helper(33333333),var(4))
trigger1 = playerid(helper(33333333),var(4)),movetype = A
trigger1 = (playerid(helper(33333333),var(4)),pos x - pos x)*root,facing >= 0
var(52) = 1

;

[State 0, Long Ranged Attack]
type = VarSet
triggerall = root,stateno != [150,159]
triggerall = root,prevstateno != [150,159]
triggerall = root,prevstateno < 200
triggerall = root,movetype = H && root,time = 1
triggerall = enemynear(root,var(57)),stateno != var(53)
triggerall = enemynear(root,var(57)),stateno != var(54)
triggerall = enemynear(root,var(57)),stateno != var(55)
triggerall = enemynear(root,var(57)),stateno != var(56)
triggerall = enemynear(root,var(57)),stateno != var(57)
triggerall = enemynear(root,var(57)),stateno != var(58)
trigger1 = enemynear(root,var(57)),movetype = A
trigger1 = (enemynear(root,var(57)),pos x - pos x)*root,facing > enemynear(root,var(57)),const(size.attack.dist)
var(53) = enemynear(root,var(57)),stateno
ignorehitpause = 1

[State 0, Long Ranged Attack]
type = VarSet
triggerall = root,stateno != [150,159]
triggerall = root,prevstateno != [150,159]
triggerall = root,prevstateno < 200
triggerall = root,movetype = H && root,time = 1
triggerall = enemynear(root,var(57)),stateno != var(53)
triggerall = enemynear(root,var(57)),stateno != var(54)
triggerall = enemynear(root,var(57)),stateno != var(55)
triggerall = enemynear(root,var(57)),stateno != var(56)
triggerall = enemynear(root,var(57)),stateno != var(57)
triggerall = enemynear(root,var(57)),stateno != var(58)
trigger1 = enemynear(root,var(57)),movetype = A
trigger1 = (enemynear(root,var(57)),pos x - pos x)*root,facing > enemynear(root,var(57)),const(size.attack.dist)
var(54) = enemynear(root,var(57)),stateno
ignorehitpause = 1

[State 0, Long Ranged Attack]
type = VarSet
triggerall = root,stateno != [150,159]
triggerall = root,prevstateno != [150,159]
triggerall = root,prevstateno < 200
triggerall = root,movetype = H && root,time = 1
triggerall = enemynear(root,var(57)),stateno != var(53)
triggerall = enemynear(root,var(57)),stateno != var(54)
triggerall = enemynear(root,var(57)),stateno != var(55)
triggerall = enemynear(root,var(57)),stateno != var(56)
triggerall = enemynear(root,var(57)),stateno != var(57)
triggerall = enemynear(root,var(57)),stateno != var(58)
trigger1 = enemynear(root,var(57)),movetype = A
trigger1 = (enemynear(root,var(57)),pos x - pos x)*root,facing > enemynear(root,var(57)),const(size.attack.dist)
var(55) = enemynear(root,var(57)),stateno
ignorehitpause = 1

[State 0, Long Ranged Attack]
type = VarSet
triggerall = root,stateno != [150,159]
triggerall = root,prevstateno != [150,159]
triggerall = root,prevstateno < 200
triggerall = root,movetype = H && root,time = 1
triggerall = enemynear(root,var(57)),stateno != var(53)
triggerall = enemynear(root,var(57)),stateno != var(54)
triggerall = enemynear(root,var(57)),stateno != var(55)
triggerall = enemynear(root,var(57)),stateno != var(56)
triggerall = enemynear(root,var(57)),stateno != var(57)
triggerall = enemynear(root,var(57)),stateno != var(58)
trigger1 = enemynear(root,var(57)),movetype = A
trigger1 = (enemynear(root,var(57)),pos x - pos x)*root,facing > enemynear(root,var(57)),const(size.attack.dist)
var(56) = enemynear(root,var(57)),stateno
ignorehitpause = 1

[State 0, Long Ranged Attack]
type = VarSet
triggerall = root,stateno != [150,159]
triggerall = root,prevstateno != [150,159]
triggerall = root,prevstateno < 200
triggerall = root,movetype = H && root,time = 1
triggerall = enemynear(root,var(57)),stateno != var(53)
triggerall = enemynear(root,var(57)),stateno != var(54)
triggerall = enemynear(root,var(57)),stateno != var(55)
triggerall = enemynear(root,var(57)),stateno != var(56)
triggerall = enemynear(root,var(57)),stateno != var(57)
triggerall = enemynear(root,var(57)),stateno != var(58)
trigger1 = enemynear(root,var(57)),movetype = A
trigger1 = (enemynear(root,var(57)),pos x - pos x)*root,facing > enemynear(root,var(57)),const(size.attack.dist)
var(57) = enemynear(root,var(57)),stateno
ignorehitpause = 1

[State 0, Long Ranged Attack]
type = VarSet
triggerall = root,stateno != [150,159]
triggerall = root,prevstateno != [150,159]
triggerall = root,prevstateno < 200
triggerall = root,movetype = H && root,time = 1
triggerall = enemynear(root,var(57)),stateno != var(53)
triggerall = enemynear(root,var(57)),stateno != var(54)
triggerall = enemynear(root,var(57)),stateno != var(55)
triggerall = enemynear(root,var(57)),stateno != var(56)
triggerall = enemynear(root,var(57)),stateno != var(57)
triggerall = enemynear(root,var(57)),stateno != var(58)
trigger1 = enemynear(root,var(57)),movetype = A
trigger1 = (enemynear(root,var(57)),pos x - pos x)*root,facing > enemynear(root,var(57)),const(size.attack.dist)
var(58) = enemynear(root,var(57)),stateno
ignorehitpause = 1

[State 0, Signal]
type = VarSet
trigger1 = 1
var(50) = 0
ignorehitpause = 1

[State 0, Signal]
type = VarSet
triggerall = enemynear(root,var(57)),movetype = A
trigger1 = enemynear(root,var(57)),stateno = var(53)
trigger2 = enemynear(root,var(57)),stateno = var(54)
trigger3 = enemynear(root,var(57)),stateno = var(55)
trigger4 = enemynear(root,var(57)),stateno = var(56)
trigger5 = enemynear(root,var(57)),stateno = var(57)
trigger6 = enemynear(root,var(57)),stateno = var(58)
var(50) = 1
ignorehitpause = 1

;

[State 0, Cross-Up]
type = VarSet
trigger1 = 1
var(59) = 0
ignorehitpause = 1

[State 0, Cross-Up]
type = VarSet
trigger1 = enemynear(root,var(57)),facing = root,facing
trigger1 = (enemynear(root,var(57)),pos x - root,pos x)*root,facing > 0
var(59) = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = -enemynear(root,var(57)),const(size.attack.dist)*cond(var(59)>0, -1, 1),0
ignorehitpause = 1

;==========================================================================

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, Safety]
type = HitBy
trigger1 = 1
value =
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible 
ignorehitpause = 1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(41) = %d, var(10) = %d"
params = var(41), var(10)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !root,ailevel

;==========================================================================
;[Info]
;author = "Inktrebuchet" 
;versiondate = 12/13/2018                  
;goal = Detect enemy projectile (helper). For use with AI. ( M.U.G.E.N | IKEMEN )
;       ?????(helper)?????? AI????????
;==========================================================================
;                Notes
;==========================================================================
;notes:
;-Enemy projectile now has a PlayerID use PlayerID(helper(33333333),var(3)) as a redirect.
;
;base examples of trigger use: 
;
;;Enemy projectile helper distance from character.
;trigger1 = PlayerIDExist(helper(33333333),var(3))
;trigger1 = PlayerID(helper(33333333),var(3)), p2bodydist x 
;
;;Enemy projectile helper velocity.
;trigger1 = PlayerIDExist(helper(33333333),var(3))
;trigger1 = PlayerID(helper(33333333),var(3)), Vel X
;
;==========================================================================
;                Helper var usage.
;==========================================================================
; numhelper(33333333) Variable usage:
; This is a record of the variables that are used
;
; var(0) - highest playerid + 1
; var(3) - projectile player id while it exists
; 
;==========================================================================
;Ink's Projectile Detection
[Statedef 33333333]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
 
;==========================================================================
;                Config Section
;==========================================================================
anim = 9741
 
;==========================================================================
[state 33333333, Clipboard] 
type = DisplayToClipboard
trigger1 = 1
text = "Highest Playerid = %d , Projectile helper's PlayerId = %d\nBy Inktrebuchet"
params = var(0)-1, var(4)
 
;==========================================================================
;                Detect Enemy Projectile Helper
;==========================================================================
[State 33333333, 0]
type = Null
trigger1 = var(0) = 0
trigger1 = (var(0) := id)
ignorehitpause = 1
 
[state 33333333, 1] 
type = varadd
trigger1 = PlayerIdExist(var(0)) 
trigger2 = PlayerIdExist(var(0)+1) 
trigger3 = PlayerIdExist(var(0)+2) 
trigger4 = PlayerIdExist(var(0)+3) 
trigger5 = PlayerIdExist(var(0)+4) 
trigger6 = PlayerIdExist(var(0)+5) 
trigger7 = PlayerIdExist(var(0)+6) 
trigger8 = PlayerIdExist(var(0)+7) 
trigger9 = PlayerIdExist(var(0)+8) 
trigger10 = PlayerIdExist(var(0)+9) 
trigger11 = PlayerIdExist(var(0)+10) 
trigger12 = PlayerIdExist(var(0)+11) 
trigger13 = PlayerIdExist(var(0)+12) 
trigger14 = PlayerIdExist(var(0)+13) 
trigger15 = PlayerIdExist(var(0)+14) 
trigger16 = PlayerIdExist(var(0)+15) 
trigger17 = PlayerIdExist(var(0)+16) 
trigger18 = PlayerIdExist(var(0)+17) 
trigger19 = PlayerIdExist(var(0)+18) 
trigger20 = PlayerIdExist(var(0)+19) 
trigger21 = PlayerIdExist(var(0)+20) 
trigger22 = PlayerIdExist(var(0)+21) 
trigger23 = PlayerIdExist(var(0)+22) 
trigger24 = PlayerIdExist(var(0)+23) 
trigger25 = PlayerIdExist(var(0)+24) 
trigger26 = PlayerIdExist(var(0)+25) 
v = 0
value = 1
ignorehitpause = 1
 
[State 33333333, 2]
type = Null
triggerall = PlayerIdExist(Root,ID)
trigger1 = PlayerIdExist(var(0)-1)
trigger1 = IfElse(root,teamside = 1, PlayerID(var(0)-1),teamside = 2, PlayerID(var(0)-1),teamside = 1)
trigger1 = PlayerID(var(0)-1),hitdefattr = ASC, NP, SP, HP
trigger1 = var(4) := (var(0)-1)
trigger2 = PlayerIdExist(var(0)-2)
trigger2 = IfElse(root,teamside = 1, PlayerID(var(0)-2),teamside = 2, PlayerID(var(0)-2),teamside = 1)
trigger2 = PlayerID(var(0)-2),hitdefattr = ASC, NP, SP, HP
trigger2 = var(4) := (var(0)-2)
trigger3 = PlayerIdExist(var(0)-3)
trigger3 = IfElse(root,teamside = 1, PlayerID(var(0)-3),teamside = 2, PlayerID(var(0)-3),teamside = 1)
trigger3 = PlayerID(var(0)-3),hitdefattr = ASC, NP, SP, HP
trigger3 = var(4) := (var(0)-3)
trigger4 = PlayerIdExist(var(0)-4)
trigger4 = IfElse(root,teamside = 1, PlayerID(var(0)-4),teamside = 2, PlayerID(var(0)-4),teamside = 1)
trigger4 = PlayerID(var(0)-4),hitdefattr = ASC, NP, SP, HP
trigger4 = var(4) := (var(0)-4)
trigger5 = PlayerIdExist(var(0)-5)
trigger5 = IfElse(root,teamside = 1, PlayerID(var(0)-5),teamside = 2, PlayerID(var(0)-5),teamside = 1)
trigger5 = PlayerID(var(0)-5),hitdefattr = ASC, NP, SP, HP
trigger5 = var(4) := (var(0)-5)
trigger6 = PlayerIdExist(var(0)-6)
trigger6 = IfElse(root,teamside = 1, PlayerID(var(0)-6),teamside = 2, PlayerID(var(0)-6),teamside = 1)
trigger6 = PlayerID(var(0)-6),hitdefattr = ASC, NP, SP, HP
trigger6 = var(4) := (var(0)-6)
trigger7 = PlayerIdExist(var(0)-7)
trigger7 = IfElse(root,teamside = 1, PlayerID(var(0)-7),teamside = 2, PlayerID(var(0)-7),teamside = 1)
trigger7 = PlayerID(var(0)-7),hitdefattr = ASC, NP, SP, HP
trigger7 = var(4) := (var(0)-7)
trigger8 = PlayerIdExist(var(0)-8)
trigger8 = IfElse(root,teamside = 1, PlayerID(var(0)-8),teamside = 2, PlayerID(var(0)-8),teamside = 1)
trigger8 = PlayerID(var(0)-8),hitdefattr = ASC, NP, SP, HP
trigger8 = var(4) := (var(0)-8)
trigger9 = PlayerIdExist(var(0)-9)
trigger9 = IfElse(root,teamside = 1, PlayerID(var(0)-9),teamside = 2, PlayerID(var(0)-9),teamside = 1)
trigger9 = PlayerID(var(0)-9),hitdefattr = ASC, NP, SP, HP
trigger9 = var(4) := (var(0)-9)
trigger10 = PlayerIdExist(var(0)-10)
trigger10 = IfElse(root,teamside = 1, PlayerID(var(0)-10),teamside = 2, PlayerID(var(0)-10),teamside = 1)
trigger10 = PlayerID(var(0)-10),hitdefattr = ASC, NP, SP, HP
trigger10 = var(4) := (var(0)-10)
ignorehitpause = 1

[state safeguard 0] ;similar to prevprevstateno ;by Inktrebuchet
type = null
trigger1 = root, movetype != h
trigger1 = var(21) := root,stateno
 
[state safeguard 1] ;safeguard, saves move number and enemy projectile vel x. ;by Inktrebuchet
type = explod
trigger1 = var(21) != 0 ;similar to prevprevstateno != 0 
trigger1 = PlayerIDExist(var(4))
trigger1 = cond(playerid(var(4)),prevstateno = 0, var(2) := abs(floor(playerid(var(4)),vel x)), 1)
trigger1 = playerid(var(4)),Cond(NumTarget, Target, Cond(1, ID, 0), 0) = root,ID ; enemy,proj,target,ID = ID
trigger1 = numexplod((var(20)*100000000) + var(2)) = 0
anim = anim ;This anim is blank as long as this stctrl is in "AI Detect Projectile System"
ID = (var(20)*100000000) + var(2)
removetime = -1
 
[state safeguard 2] ;safeguard, saves move number and enemy projectile stateno. ;by Inktrebuchet
type = explod
trigger1 = var(21) != 0 ;similar to prevprevstateno != 0 
trigger1 = PlayerIDExist(var(4))
trigger1 = playerid(var(4)),Cond(NumTarget, Target, Cond(1, ID, 0), 0) = root,ID ; enemy,proj,target,ID = ID 
trigger1 = numexplod((var(20)*100000000) + playerid(var(4)),prevstateno) = 0
anim = anim ;This anim is blank as long as this stctrl is in "AI Detect Projectile System"
ID = (var(20)*100000000) + playerid(var(4)),prevstateno
removetime = -1

[State 33333333, BindToRoot]
type = BindToRoot
trigger1 = PlayerIdExist(Root,ID)
time = 1
facing = 1
pos = 0, 0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !root,ailevel

;---------------------------------------------------------------------------
; AI Learning 
[Statedef 18000]
type = A
movetype = I
physics = N
anim = 9741

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,root,const(size.head.pos.y)

[State 0, Safety]
type = HitBy
trigger1 = 1
value =

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible 

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(10) || enemynear,stateno = var(10)%100000
trigger1 = enemynear,stateno != var(10)%100000 || enemynear,time < var(10)/100000
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000
trigger1 = enemynear,stateno != var(13)%100000
trigger1 = enemynear,stateno != var(14)%100000
trigger1 = enemynear,stateno != var(15)%100000
trigger1 = enemynear,stateno != var(16)%100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(10):= enemynear,stateno || 1
trigger1 = var(10):= (var(10) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(11) || enemynear,stateno = var(11)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000 || enemynear,time < var(11)/100000
trigger1 = enemynear,stateno != var(12)%100000
trigger1 = enemynear,stateno != var(13)%100000
trigger1 = enemynear,stateno != var(14)%100000
trigger1 = enemynear,stateno != var(15)%100000
trigger1 = enemynear,stateno != var(16)%100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(11):= enemynear,stateno || 1
trigger1 = var(11):= (var(11) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(12) || enemynear,stateno = var(12)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 || enemynear,time < var(12)/100000
trigger1 = enemynear,stateno != var(13)%100000
trigger1 = enemynear,stateno != var(14)%100000
trigger1 = enemynear,stateno != var(15)%100000
trigger1 = enemynear,stateno != var(16)%100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(12):= enemynear,stateno || 1
trigger1 = var(12):= (var(12) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(13) || enemynear,stateno = var(13)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 || enemynear,time < var(13)/100000
trigger1 = enemynear,stateno != var(14)%100000
trigger1 = enemynear,stateno != var(15)%100000
trigger1 = enemynear,stateno != var(16)%100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(13):= enemynear,stateno || 1
trigger1 = var(13):= (var(13) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(14) || enemynear,stateno = var(14)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 || enemynear,time < var(14)/100000
trigger1 = enemynear,stateno != var(15)%100000
trigger1 = enemynear,stateno != var(16)%100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(14):= enemynear,stateno || 1
trigger1 = var(14):= (var(14) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(15) || enemynear,stateno = var(15)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 || enemynear,time < var(15)/100000
trigger1 = enemynear,stateno != var(16)%100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(15):= enemynear,stateno || 1
trigger1 = var(15):= (var(15) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(16) || enemynear,stateno = var(16)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 || enemynear,time < var(16)/100000
trigger1 = enemynear,stateno != var(17)%100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(16):= enemynear,stateno || 1
trigger1 = var(16):= (var(16) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(17) || enemynear,stateno = var(17)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 || enemynear,time < var(17)/100000
trigger1 = enemynear,stateno != var(18)%100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(17):= enemynear,stateno || 1
trigger1 = var(17):= (var(17) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(18) || enemynear,stateno = var(18)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 || enemynear,time < var(18)/100000
trigger1 = enemynear,stateno != var(19)%100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(18):= enemynear,stateno || 1
trigger1 = var(18):= (var(18) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(19) || enemynear,stateno = var(19)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 || enemynear,time < var(19)/100000
trigger1 = enemynear,stateno != var(20)%100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(19):= enemynear,stateno || 1
trigger1 = var(19):= (var(19) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(20) || enemynear,stateno = var(20)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 || enemynear,time < var(20)/100000
trigger1 = enemynear,stateno != var(21)%100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(20):= enemynear,stateno || 1
trigger1 = var(20):= (var(20) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(21) || enemynear,stateno = var(21)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 || enemynear,time < var(21)/100000
trigger1 = enemynear,stateno != var(22)%100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(21):= enemynear,stateno || 1
trigger1 = var(21):= (var(21) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(22) || enemynear,stateno = var(22)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 || enemynear,time < var(22)/100000
trigger1 = enemynear,stateno != var(23)%100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(22):= enemynear,stateno || 1
trigger1 = var(22):= (var(22) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(23) || enemynear,stateno = var(23)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 || enemynear,time < var(23)/100000
trigger1 = enemynear,stateno != var(24)%100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(23):= enemynear,stateno || 1
trigger1 = var(23):= (var(23) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(24) || enemynear,stateno = var(24)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 || enemynear,time < var(24)/100000
trigger1 = enemynear,stateno != var(25)%100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(24):= enemynear,stateno || 1
trigger1 = var(24):= (var(24) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(25) || enemynear,stateno = var(25)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 || enemynear,time < var(25)/100000
trigger1 = enemynear,stateno != var(26)%100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(25):= enemynear,stateno || 1
trigger1 = var(25):= (var(25) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(26) || enemynear,stateno = var(26)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 || enemynear,time < var(26)/100000
trigger1 = enemynear,stateno != var(27)%100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(26):= enemynear,stateno || 1
trigger1 = var(26):= (var(26) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(27) || enemynear,stateno = var(27)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 || enemynear,time < var(27)/100000
trigger1 = enemynear,stateno != var(28)%100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(27):= enemynear,stateno || 1
trigger1 = var(27):= (var(27) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(28) || enemynear,stateno = var(28)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 || enemynear,time < var(28)/100000
trigger1 = enemynear,stateno != var(29)%100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(28):= enemynear,stateno || 1
trigger1 = var(28):= (var(28) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(29) || enemynear,stateno = var(29)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 || enemynear,time < var(29)/100000
trigger1 = enemynear,stateno != var(30)%100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(29):= enemynear,stateno || 1
trigger1 = var(29):= (var(29) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(30) || enemynear,stateno = var(30)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 || enemynear,time < var(30)/100000
trigger1 = enemynear,stateno != var(31)%100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(30):= enemynear,stateno || 1
trigger1 = var(30):= (var(30) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(31) || enemynear,stateno = var(31)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 || enemynear,time < var(31)/100000
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(31):= enemynear,stateno || 1
trigger1 = var(31):= (var(31) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(32) || enemynear,stateno = var(32)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000 || enemynear,time < var(32)/100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(32):= enemynear,stateno || 1
trigger1 = var(32):= (var(32) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(33) || enemynear,stateno = var(33)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000 || enemynear,time < var(33)/100000
trigger1 = enemynear,stateno != var(34)%100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(33):= enemynear,stateno || 1
trigger1 = var(33):= (var(33) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(34) || enemynear,stateno = var(34)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 || enemynear,time < var(34)/100000
trigger1 = enemynear,stateno != var(35)%100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(34):= enemynear,stateno || 1
trigger1 = var(34):= (var(34) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(35) || enemynear,stateno = var(35)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 
trigger1 = enemynear,stateno != var(35)%100000 || enemynear,time < var(35)/100000
trigger1 = enemynear,stateno != var(36)%100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(35):= enemynear,stateno || 1
trigger1 = var(35):= (var(35) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(36) || enemynear,stateno = var(36)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 
trigger1 = enemynear,stateno != var(35)%100000 
trigger1 = enemynear,stateno != var(36)%100000 || enemynear,time < var(36)/100000
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(36):= enemynear,stateno || 1
trigger1 = var(36):= (var(36) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(37) || enemynear,stateno = var(37)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 
trigger1 = enemynear,stateno != var(35)%100000 
trigger1 = enemynear,stateno != var(36)%100000 
trigger1 = enemynear,stateno != var(37)%100000 || enemynear,time < var(37)/100000
trigger1 = enemynear,stateno != var(38)%100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(37):= enemynear,stateno || 1
trigger1 = var(37):= (var(37) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(38) || enemynear,stateno = var(38)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 
trigger1 = enemynear,stateno != var(35)%100000 
trigger1 = enemynear,stateno != var(36)%100000 
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000 || enemynear,time < var(38)/100000
trigger1 = enemynear,stateno != var(39)%100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(38):= enemynear,stateno || 1
trigger1 = var(38):= (var(38) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(39) || enemynear,stateno = var(39)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 
trigger1 = enemynear,stateno != var(35)%100000 
trigger1 = enemynear,stateno != var(36)%100000 
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000 
trigger1 = enemynear,stateno != var(39)%100000 || enemynear,time < var(39)/100000
trigger1 = enemynear,stateno != var(40)%100000 
trigger1 = var(39):= enemynear,stateno || 1
trigger1 = var(39):= (var(39) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data]
type = Null
triggerall = enemynear,movetype = A
triggerall = enemynear,movecontact || enemynear,movereversed
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = !var(40) || enemynear,stateno = var(40)%100000
trigger1 = enemynear,stateno != var(10)%100000 
trigger1 = enemynear,stateno != var(11)%100000
trigger1 = enemynear,stateno != var(12)%100000 
trigger1 = enemynear,stateno != var(13)%100000 
trigger1 = enemynear,stateno != var(14)%100000 
trigger1 = enemynear,stateno != var(15)%100000 
trigger1 = enemynear,stateno != var(16)%100000 
trigger1 = enemynear,stateno != var(17)%100000 
trigger1 = enemynear,stateno != var(18)%100000 
trigger1 = enemynear,stateno != var(19)%100000 
trigger1 = enemynear,stateno != var(20)%100000 
trigger1 = enemynear,stateno != var(21)%100000 
trigger1 = enemynear,stateno != var(22)%100000 
trigger1 = enemynear,stateno != var(23)%100000 
trigger1 = enemynear,stateno != var(24)%100000 
trigger1 = enemynear,stateno != var(25)%100000 
trigger1 = enemynear,stateno != var(26)%100000 
trigger1 = enemynear,stateno != var(27)%100000 
trigger1 = enemynear,stateno != var(28)%100000 
trigger1 = enemynear,stateno != var(29)%100000 
trigger1 = enemynear,stateno != var(30)%100000 
trigger1 = enemynear,stateno != var(31)%100000 
trigger1 = enemynear,stateno != var(32)%100000
trigger1 = enemynear,stateno != var(33)%100000
trigger1 = enemynear,stateno != var(34)%100000 
trigger1 = enemynear,stateno != var(35)%100000 
trigger1 = enemynear,stateno != var(36)%100000 
trigger1 = enemynear,stateno != var(37)%100000
trigger1 = enemynear,stateno != var(38)%100000 
trigger1 = enemynear,stateno != var(39)%100000 
trigger1 = enemynear,stateno != var(40)%100000 || enemynear,time < var(40)/100000
trigger1 = var(40):= enemynear,stateno || 1
trigger1 = var(40):= (var(40) + enemynear,time*100000) || 1
ignorehitpause = 1

;========================================================
; Remember Frame Data (Projectiles)

[State 0, Proj Count before Attacking to prevent false positives]
type = VarSet
trigger1 = enemynear,movetype != A
fvar(20) = enemynear,numproj

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20) 
triggerall = !var(50) || enemynear,stateno = var(50)%100000
trigger1 = enemynear,stateno != var(50)%100000 || enemynear,time < var(50)/100000
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000 
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(50):= enemynear,stateno || 1
trigger1 = var(50):= (var(50) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(51) || enemynear,stateno = var(51)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 || enemynear,time < var(51)/100000
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000 
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(51):= enemynear,stateno || 1
trigger1 = var(51):= (var(51) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(52) || enemynear,stateno = var(52)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 || enemynear,time < var(52)/100000
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000 
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(52):= enemynear,stateno || 1
trigger1 = var(52):= (var(52) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(53) || enemynear,stateno = var(53)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 || enemynear,time < var(53)/100000
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000 
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(53):= enemynear,stateno || 1
trigger1 = var(53):= (var(53) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(54) || enemynear,stateno = var(54)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 || enemynear,time < var(54)/100000
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000 
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(54):= enemynear,stateno || 1
trigger1 = var(54):= (var(54) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(55) || enemynear,stateno = var(55)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 || enemynear,time < var(55)/100000
trigger1 = enemynear,stateno != var(56)%100000 
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(55):= enemynear,stateno || 1
trigger1 = var(55):= (var(55) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(56) || enemynear,stateno = var(56)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000 || enemynear,time < var(56)/100000
trigger1 = enemynear,stateno != var(57)%100000 
trigger1 = var(56):= enemynear,stateno || 1
trigger1 = var(56):= (var(56) + enemynear,time*100000) || 1
ignorehitpause = 1

[State 0, Remember Frame Data (Projectiles)]
type = Null
triggerall = numhelper(33333333) > 0
triggerall = enemynear,movetype = A 
triggerall = playeridexist(helper(33333333),var(4)) || enemynear,numproj > fvar(20)
triggerall = !var(57) || enemynear,stateno = var(57)%100000
trigger1 = enemynear,stateno != var(50)%100000 
trigger1 = enemynear,stateno != var(51)%100000 
trigger1 = enemynear,stateno != var(52)%100000 
trigger1 = enemynear,stateno != var(53)%100000 
trigger1 = enemynear,stateno != var(54)%100000 
trigger1 = enemynear,stateno != var(55)%100000 
trigger1 = enemynear,stateno != var(56)%100000
trigger1 = enemynear,stateno != var(57)%100000 || enemynear,time < var(57)/100000
trigger1 = var(57):= enemynear,stateno || 1
trigger1 = var(57):= (var(57) + enemynear,time*100000) || 1
ignorehitpause = 1

;========================================================
; Read Memorized States

[State 0, Remember Frame Data]
type = Null
trigger1 = enemynear,stateno = var(10)%100000
trigger1 = var(58):=var(10)%100000 ||1
trigger1 = var(59):=var(10)/100000||1
trigger2 = enemynear,stateno = var(11)%100000
trigger2 = var(58):=var(11)%100000||1
trigger2 = var(59):=var(11)/100000||1
trigger3 = enemynear,stateno = var(12)%100000
trigger3 = var(58):=var(12)%100000||1
trigger3 = var(59):=var(12)/100000||1
trigger4 = enemynear,stateno = var(13)%100000
trigger4 = var(58):=var(13)%100000||1
trigger4 = var(59):=var(13)/100000||1
trigger5 = enemynear,stateno = var(14)%100000
trigger5 = var(58):=var(14)%100000||1
trigger5 = var(59):=var(14)/100000||1
trigger6 = enemynear,stateno = var(15)%100000
trigger6 = var(58):=var(15)%100000||1
trigger6 = var(59):=var(15)/100000||1
trigger7 = enemynear,stateno = var(16)%100000
trigger7 = var(58):=var(16)%100000||1
trigger7 = var(59):=var(16)/100000||1
trigger8 = enemynear,stateno = var(17)%100000
trigger8 = var(58):=var(17)%100000||1
trigger8 = var(59):=var(17)/100000||1
trigger9 = enemynear,stateno = var(18)%100000
trigger9 = var(58):=var(18)%100000||1
trigger9 = var(59):=var(18)/100000||1
trigger10 = enemynear,stateno = var(19)%100000
trigger10 = var(58):=var(19)%100000||1
trigger10 = var(59):=var(19)/100000||1
trigger11 = enemynear,stateno = var(20)%100000
trigger11 = var(58):=var(20)%100000||1
trigger11 = var(59):=var(20)/100000||1
trigger12 = enemynear,stateno = var(21)%100000
trigger12 = var(58):=var(21)%100000||1
trigger12 = var(59):=var(21)/100000||1
trigger13 = enemynear,stateno = var(22)%100000
trigger13 = var(58):=var(22)%100000||1
trigger13 = var(59):=var(22)/100000||1
trigger14 = enemynear,stateno = var(23)%100000
trigger14 = var(58):=var(23)%100000||1
trigger14 = var(59):=var(23)/100000||1
trigger15 = enemynear,stateno = var(24)%100000
trigger15 = var(58):=var(24)%100000||1
trigger15 = var(59):=var(24)/100000||1
trigger16 = enemynear,stateno = var(25)%100000
trigger16 = var(58):=var(25)%100000||1
trigger16 = var(59):=var(25)/100000||1
trigger17 = enemynear,stateno = var(26)%100000
trigger17 = var(58):=var(26)%100000||1
trigger17 = var(59):=var(26)/100000||1
trigger18 = enemynear,stateno = var(27)%100000
trigger18 = var(58):=var(27)%100000||1
trigger18 = var(59):=var(27)/100000||1
trigger19 = enemynear,stateno = var(28)%100000
trigger19 = var(58):=var(28)%100000||1
trigger19 = var(59):=var(28)/100000||1
trigger20 = enemynear,stateno = var(29)%100000
trigger20 = var(58):=var(29)%100000||1
trigger20 = var(59):=var(29)/100000||1
trigger21 = enemynear,stateno = var(30)%100000
trigger21 = var(58):=var(30)%100000||1
trigger21 = var(59):=var(30)/100000||1
trigger22 = enemynear,stateno = var(31)%100000
trigger22 = var(58):=var(31)%100000||1
trigger22 = var(59):=var(31)/100000||1
trigger23 = enemynear,stateno = var(32)%100000
trigger23 = var(58):=var(32)%100000||1
trigger23 = var(59):=var(32)/100000||1
trigger24 = enemynear,stateno = var(33)%100000
trigger24 = var(58):=var(33)%100000||1
trigger24 = var(59):=var(33)/100000||1
trigger25 = enemynear,stateno = var(34)%100000
trigger25 = var(58):=var(34)%100000||1
trigger25 = var(59):=var(34)/100000||1
trigger26 = enemynear,stateno = var(35)%100000
trigger26 = var(58):=var(35)%100000||1
trigger26 = var(59):=var(35)/100000||1
trigger27 = enemynear,stateno = var(36)%100000
trigger27 = var(58):=var(36)%100000||1
trigger27 = var(59):=var(36)/100000||1
trigger28 = enemynear,stateno = var(37)%100000
trigger28 = var(58):=var(37)%100000||1
trigger28 = var(59):=var(37)/100000||1
trigger29 = enemynear,stateno = var(38)%100000
trigger29 = var(58):=var(38)%100000||1
trigger29 = var(59):=var(38)/100000||1
trigger30 = enemynear,stateno = var(39)%100000
trigger30 = var(58):=var(39)%100000||1
trigger30 = var(59):=var(39)/100000||1
trigger31 = enemynear,stateno = var(40)%100000
trigger31 = var(58):=var(40)%100000||1
trigger31 = var(59):=var(40)/100000||1
trigger32 = enemynear,stateno = var(50)%100000
trigger32 = var(58):=var(50)%100000||1
trigger32 = var(59):=var(50)/100000||1
trigger33 = enemynear,stateno = var(51)%100000
trigger33 = var(58):=var(51)%100000||1
trigger33 = var(59):=var(51)/100000||1
trigger34 = enemynear,stateno = var(52)%100000
trigger34 = var(58):=var(52)%100000||1
trigger34 = var(59):=var(52)/100000||1
trigger35 = enemynear,stateno = var(53)%100000
trigger35 = var(58):=var(53)%100000||1
trigger35 = var(59):=var(53)/100000||1
trigger36 = enemynear,stateno = var(54)%100000
trigger36 = var(58):=var(54)%100000||1
trigger36 = var(59):=var(54)/100000||1
trigger37 = enemynear,stateno = var(55)%100000
trigger37 = var(58):=var(55)%100000||1
trigger37 = var(59):=var(55)/100000||1
trigger38 = enemynear,stateno = var(56)%100000
trigger38 = var(58):=var(56)%100000||1
trigger38 = var(59):=var(56)/100000||1
trigger39 = enemynear,stateno = var(57)%100000
trigger39 = var(58):=var(57)%100000||1
trigger39 = var(59):=var(57)/100000||1
ignorehitpause = 1

;========================================================
; Frame Advantage Check

[State -3, Check Frame Advantage]
type = VarSet
triggerall = var(5) != 0
trigger1 = enemynear(root,var(57)),stateno != var(6)
trigger1 = 1 || var(6):= 0
var(5) = 0
ignorehitpause = 1

[State 0, Enemy Hit Advantage Check]
type = VarSet
triggerall = var(5) = 0
triggerall = enemynear(root,var(57)),movetype = A
triggerall = enemynear(root,var(57)),ctrl = 0
triggerall = enemynear(root,var(57)),movecontact
triggerall = root,movetype = H && root,time = 1
trigger1 = 1 || var(6):= enemynear(root,var(57)),stateno 
var(5) = -((root,gethitvar(hittime))-abs(enemynear(root,var(57)),animtime))
ignorehitpause = 1

;========================================================
; Long Range/Neutral Time

[State 0, VarSet]
type = VarSet
trigger1 = !time || root,fvar(7) <= 70 || (enemynear(root,var(57)),movetype = H)
fvar(22) = 1.00
 
[State 0, VarAdd]
type = VarAdd
trigger1 = enemynear(root,var(57)),movetype != H
trigger1 = root,fvar(7) > 70
fvar(22) = (0.01)*cond((root,movetype = H||(root,stateno = [120,159])||(numhelper(33333333)&&playeridexist(helper(33333333),var(4)))),2,1)

[State 0, VarSet]
type = VarSet
triggerall = root,stateno != [120,159]
trigger1 = !time || (root,movetype = H || root,movetype = A) || (enemynear(root,var(57)),movetype = H)
fvar(23) = 1.00
 
[State 0, VarAdd]
type = VarAdd
trigger1 = (root,movetype != H||(root,stateno=[120,159])) && root,movetype != A
fvar(23) = (0.01)

[State 0, VarSet]
type = VarSet
trigger1 = !time || enemynear(root,var(57)),statetype != A
fvar(24) = 1.00
 
[State 0, VarAdd]
type = VarAdd
trigger1 = enemynear(root,var(57)),statetype = A
fvar(24) = (0.01)

[State 0, Prevent Recovery Loop]
type = VarSet
trigger1 = stateno != [5200,5210]
trigger1 = root,movetype != H && root,statetype != A 
trigger1 = root,stateno != 52
fvar(25) = 1

[State 0, Prevent Recovery Loop]
type = VarAdd
triggerall = fvar(25) >= 0
trigger1 = root,stateno = [5200,5210]
trigger1 = root,time = 1
fvar(25) = -0.5

[State Enemy Guard Chance]
type = Null
trigger1 = fvar(28) < 0 || fvar(28) > 1000
trigger1 = fvar(28):= cond(fvar(28) < 0, 0, 1000) || 1
ignorehitpause = 1

[State Enemy Guard Chance]
type = VarSet
trigger1 = !time
fvar(28) = 500
ignorehitpause = 1

[State Enemy Guard Chance]
type = VarAdd
triggerall = enemynear(root,var(57)),movetype != H || (enemynear(root,var(57)),stateno = [120,159]) || (enemynear(root,var(57)),ctrl > 0)
trigger1 = gametime%2=0
fvar(28) = cond((enemynear(root,var(57)),stateno = [120,159]), 1, -1)
ignorehitpause = 1

[State Enemy Guard Chance]
type = VarAdd
trigger1 = enemynear(root,var(57)),stateno = 150 || enemynear(root,var(57)),stateno = 152 || enemynear(root,var(57)),stateno = 154
trigger1 = enemynear(root,var(57)),time = 1
fvar(28) = cond(fvar(28) > 900, (1000-fvar(28)), 100)
ignorehitpause = 1

[State Enemy Guard Chance]
type = VarAdd
triggerall = enemynear(root,var(57)),prevstateno != [5000,5999]
trigger1 = enemynear(root,var(57)),stateno = 5000 || enemynear(root,var(57)),stateno = 5010 || enemynear(root,var(57)),stateno = 5020
trigger1 = enemynear(root,var(57)),time = 1
fvar(28) = cond(fvar(28) < 100, -fvar(28), -(100+(200*(root,prevstateno = 900))))
ignorehitpause = 1

;========================================================
; Screen Bounds

[State 0, Screen Bounds]
type = VarSet
trigger1 = numhelper(18100)
trigger1 = numhelper(18200)
fvar(0) = (root,pos x - (helper(18100),pos x + helper(18200),pos x))*root,facing 

[State 0, Enemy Offscreen?]
type = VarSet
trigger1 = 1
var(1) = 0

[State 0, Enemy Offscreen?]
type = VarSet
trigger1 = enemynear,backedgebodydist < -30 || enemynear,frontedgebodydist < -30
var(1) = 1

;========================================================
; Guard Hitcount

[State 0, VarSet]
type = VarSet
trigger1 = root,stateno != [120,159]
var(2) = 0 

[State 0, VarSet]
type = VarSet
triggerall = root,stateno = 150 || root,stateno = 152 || root,stateno = 154
trigger1 = root,time = 1 
var(2) = var(2) + 1
ignorehitpause = 1

;========================================================
; Lag Checks

[State Endlag Check]
type = Null
trigger1 = enemynear,stateno = 0 || enemynear,stateno != var(58)
trigger1 = var(41):= -1 || 1
trigger2 = enemynear,stateno = var(58)
trigger2 = var(41):= var(59)-abs(enemynear,animtime) || 1

;========================================================
; Projectile Punishes

[State 0, VarSet]
type = Null
triggerall = fvar(7) > 0
trigger1 = enemynear,stateno != fvar(17) || !root,inguarddist
trigger1 = fvar(7):= 0 || 1
trigger1 = fvar(8):= 0 || 1

[State 0, Detect Projectile Move]
type = Null
; Detect Projectile Move
triggerall = numhelper(33333333) > 0
trigger1 = !fvar(7)
trigger1 = enemynear,movetype = A || root,inguarddist
trigger1 = enemynear,hitdefattr != SCA,AA,AT,AP
trigger1 = PlayerIdExist(helper(33333333),var(4))
trigger1 = fvar(7):= enemynear,stateno || 1

[State 0, Counter Projectile Move]
type = VarSet
; Detect Projectile Move
triggerall = enemynear,movetype = A || root,inguarddist
triggerall = enemynear,stateno = fvar(7)
triggerall = numhelper(33333333) > 0
trigger1 = !PlayerIdExist(helper(33333333),var(4))
trigger2 = PlayerIdExist(helper(33333333),var(4))
trigger2 = (PlayerId(helper(33333333),var(4)),pos x - root,pos x)*root,facing < 0
fvar(8) = 1

;========================================================
; Throw Invulnerable 

[State 0, Time]
type = VarAdd
trigger1 = fvar(9) > 0 
fvar(9) = -1

[State 0, VarSet]
type = VarSet
trigger1 = enemynear,prevstateno != 5120
fvar(10) = 0

[State Normal Getup]
type = VarSet
triggerall = !fvar(10)
trigger1 = enemynear,prevstateno = 5120
trigger1 = fvar(10):= 1 || 1
fvar(9) = 12

[State Detect Recovery Roll/Wake-Up Option]
type = Null
trigger1 = fvar(26):= cond(!animtime||enemynear,stateno!=5120, 0, 1) || 1
trigger2 = fvar(26) > 0 
trigger2 = enemynear,stateno != 5120
trigger2 = enemynear,prevstateno = 5120
trigger2 = fvar(27):= floor(enemynear,stateno) || 1
trigger2 = fvar(26):= 0 || 1
trigger3 = enemynear,stateno != 0 || fvar(27) != 0 
trigger3 = enemynear,stateno != floor(fvar(27))
trigger3 = fvar(27):= 0 || 1

;========================================================
; Oki Timer

[State 0, Time]
type = VarAdd
trigger1 = fvar(11) < 0 
fvar(11) = 1

[State 0, VarSet]
type = VarSet
triggerall = !fvar(11)
trigger1 = enemynear,stateno = 5120
fvar(11) = -abs(enemynear,animtime)-2

;========================================================
; Anit-Air Rate

[State 0, Reset]
type = VarSet
trigger1 = !time
trigger2 = fvar(16) >= 1000
fvar(15) = 1
ignorehitpause = 1

[State 0, Reset]
type = VarSet
trigger1 = root,movetype = H
trigger1 = root,prevstateno = [600,1999]
trigger2 = fvar(16) >= 1000
fvar(16) = 0
ignorehitpause = 1

[State 0, VarAdd]
type = VarAdd
triggerall = root,statetype = A 
triggerall = (root,prevstateno = [45,51]) || (root,prevstateno = [600,1999])
triggerall = root,stateno != [120,159]
triggerall = fvar(15) > 0
trigger1 = root,movetype = H
trigger1 = root,time = 1
fvar(15) = cond((root,prevstateno = [120,159]), -0.75, -0.25)
ignorehitpause = 1

[State 0, VarSet]
type = VarAdd
trigger1 = root,movetype != H
trigger1 = fvar(15) < 1
fvar(16) = 1

;========================================================
; Anti Super Armor
;========================================================

[State 0, VarSet]
type = VarSet
trigger1 = !root,movehit && !root,hitpausetime
var(4) = enemynear,anim

[State 0, Character has Super Armor]
type = VarSet
triggerall = root,movehit 
triggerall = !root,movereversed
triggerall = enemynear,stateno != [120,159] 
triggerall = enemynear,movetype = I
triggerall = numenemy = 1
trigger1 = enemynear,anim = var(4)
var(3) = 1

[State 0, No More Armor?]
type = VarSet
triggerall = var(1) > 0
triggerall = root,movehit 
triggerall = !root,movereversed
triggerall = enemynear,stateno != [120,159]
trigger1 = enemynear,movetype = H
trigger2 = numenemy != 1
var(3) = 0

;========================================================

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "state = %d, time = %d"
params = var(58),var(59)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !root,ailevel

;---------------------------------------------------------------------------
; AI Extra
[Statedef 18100]
type = A
movetype = I
physics = N
anim = 9741

; Bounds

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

[State 0, Center]
type = PosSet
trigger1 = !time
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 100*cond(ishelper(18200),-1,1)

; State Reading

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(0) = -1

[State 0, Detect Power Charge]
type = Null
triggerall = ishelper(18100) 
triggerall = !(root,inguarddist && helper(15900),inguarddist && enemynear(root,var(57)),numproj)
triggerall = root,movetype != H
triggerall = enemynear(root,var(57)),movetype = I 
triggerall = enemynear(root,var(57)),stateno >= 200
triggerall = enemynear(root,var(57)),ctrl = 0
; Store Power
trigger1 = enemynear(root,var(57)),time = 1
trigger1 = fvar(0):= enemy,power || 1
trigger1 = var(0):= enemynear(root,var(57)),stateno || 1
; Confirm Power Charge
trigger2 = enemynear(root,var(57)),stateno = var(0)
trigger2 = enemy,power > fvar(0)
trigger2 = var(2):= 1 || 1
; Stop
trigger3 = var(2) > 0
trigger3 = enemynear(root,var(57)),stateno != var(0) || root,movetype = H || (root,inguarddist || helper(15900),inguarddist || enemynear(root,var(57)),movetype = A) || (enemynear(root,var(57)),numproj)
trigger3 = var(0):= -1 || 1
trigger3 = var(2):= 0 || 1
trigger3 = fvar(0):= 0 || 1

; Check Distance

[State 0, VarSet]
type = VarSet
triggerall = ishelper(18200)
trigger1 = root,stateno != [120,159]
fvar(0) = 0

[State 0, VarSet]
type = VarSet
triggerall = ishelper(18200) 
trigger1 = enemynear(root,var(57)),moveguarded
trigger1 = root,stateno = [120,159]
fvar(0) = (root,fvar(7)+1)

; Destroy 

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !root,ailevel

;---------------------------------------------------------------------------
; Walk AI
[Statedef 21]
type    = S
physics = S
sprpriority = 0

[State 0, Move Forward]
type = VarSet
triggerall = enemynear(var(57)),alive
triggerall = frontedgedist >= 10
triggerall = !inguarddist
triggerall = !(fvar(7) <= 50*(enemynear(var(57)),vel x)) || (random <= 25 + (25 * (enemynear(var(57)),vel x < 0)))
triggerall = var(56) < 1
trigger1 = !time
trigger2 = fvar(7) > 0
var(56) = 1

[State 0, Move Back]
type = VarSet
triggerall = enemynear(var(57)),alive
triggerall = backedgedist >= 10
triggerall = enemynear(var(57)),stateno != [120,159]
triggerall = enemynear(var(57)),movetype != H || enemynear(var(57)),statetype = L
triggerall = !inguarddist
triggerall = fvar(7) >= 0 || enemynear(var(57)),statetype != A
triggerall = var(56) > -1
trigger1 = fvar(7) < 0 || (enemynear(var(57)),statetype = L && fvar(7) <= 40)
trigger2 = enemynear(var(57)),vel x > 0
trigger2 = fvar(7) <= floor(10*(enemynear(var(57)),vel x))
trigger3 = enemynear(var(57)),statetype = A
trigger3 = fvar(7) <= 30+floor(10*(enemynear(var(57)),vel x))
var(56) = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 3
trigger2 = Animelem = 7
value = S20,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
trigger2 = Animelem = 13
value = S20,0

[State 20, 1]
type = VelSet
trigger1 = var(56) = 1
x = const(velocity.walk.fwd.x) 

[State 20, 2]
type = VelSet
trigger1 = var(56) = -1
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;---------------------------------------------------------------------------
; Walk AI
[Statedef 22]
type    = S
physics = S
sprpriority = 0
ctrl = 0

[State 0, Move Forward]
type = VarSet
trigger1 = fvar(7) >= 15-5*(var(20)>=2)*cond((enemynear(var(57)),facing=facing), -1, 1)
v = 56
value = 1

[State 0, Move Back]
type = VarSet
trigger1 = fvar(7) < 15-5*(var(20)>=2)*cond((enemynear(var(57)),facing=facing), -1, 1)
v = 56
value = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 3
trigger2 = Animelem = 7
value = S20,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
trigger2 = Animelem = 13
value = S20,0

[State 20, 1]
type = VelSet
trigger1 = var(56) = 1
x = const(velocity.walk.fwd.x) 

[State 20, 2]
type = VelSet
trigger1 = var(56) = -1
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 0, CtrlSet]
type = CtrlSet
triggerall = time > 0
trigger1 = (inguarddist || enemynear(var(57)),numproj > 0)
trigger2 = !numtarget(650)
trigger2 = !numtarget(3500)
trigger2 = !var(42)
trigger3 = enemynear(var(57)),statetype != A || enemynear(var(57)),movetype != H
value = 1

[State 100, 4]
type = ChangeState
triggerall = time > 0
trigger1 = (inguarddist || enemynear(var(57)),numproj > 0)
trigger2 = !numtarget(650)
trigger2 = !numtarget(3500)
trigger2 = !var(42)
trigger3 = enemynear(var(57)),statetype != A || enemynear(var(57)),movetype != H
value = 101
ctrl = 1


;---------------------------------------------------------------------------
; Jump Start
[Statedef 36]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0 && random > 500
value = S10,31+random%2
volumescale = 255
channel = 0

[State 0, PlaySnd];check
type = PlaySnd
trigger1 = time = 0
value = S40,1

[State 40, 1]
type = VarSet
trigger1 = time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
triggerall = fvar(7) >= -20
trigger1 = fvar(7) >= 20
trigger2 = enemynear(var(55)),vel x < 0 || (enemynear(var(55)),vel x > 0 && enemynear(var(55)),hitdefattr = SCA,AT)
trigger3 = enemynear(var(55)),movetype = H
trigger3 = enemynear(var(55)),statetype != A || enemynear(var(55)),vel x < 0 || fvar(7) >= 20
trigger4 = cond(facing = enemynear(var(55)),facing, frontedgebodydist <= 20, backedgebodydist <= 20)
trigger5 = helper(18000),var(0) >= 0 || helper(18000),var(5) > 0 || helper(18000),fvar(8) > 0 || var(41)
sysvar(1) = 1

[State 40, 3]
type = VarSet
triggerall = enemynear(var(55)),movetype != H || (enemynear(var(55)),stateno = [120,159]) || !numtarget
triggerall = backedgebodydist >= 30
trigger1 = fvar(7) <= -20
trigger2 = inguarddist || helper(15900),inguarddist || enemynear(var(55)),hitdefattr = SCA,AA,AP || enemynear(var(55)),hitdefattr = A,AT
trigger3 = enemynear(var(55)),vel x > 0
trigger3 = fvar(7) <= 60*floor(4*(enemynear(var(55)),vel x))
trigger3 = random < abs(((backedgedist)-((fvar(0))*0.1)+floor(fvar(1)*0.1)+floor(2*(enemynear(var(55)),vel x)))) 
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 37]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0 && random > 500
value = S10,31+random%2
volumescale = 255
channel = 0

[State 0, PlaySnd];check
type = PlaySnd
trigger1 = time = 0
value = S40,1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 38]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0 && random > 500
value = S10,31+random%2
volumescale = 255
channel = 0

[State 0, PlaySnd];check
type = PlaySnd
trigger1 = time = 0
value = S40,1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 39]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0 && random > 500
value = S10,31+random%2
volumescale = 255
channel = 0

[State 0, PlaySnd];check
type = PlaySnd
trigger1 = time = 0
value = S40,1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
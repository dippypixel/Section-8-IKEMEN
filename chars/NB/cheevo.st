; The Cheevo system

;00 - Controlled = 40.0
;01 - AI-Controlled = 40.1
;02 - Achievement Unlocked = 40.2
;03 - Palno = [7,12] = 40.3
;04 - Palno = 12 = 40.4
;05 - Cat'o'ninetails = 40.5
;06 - Hentai Char = 40.6
;07 - Goddamned Cartoon Show char = 40.7
;08 - Press X = 40.8
;09 - Spat char = 40.9
;10 - SNES9X = 41.0
;11 - ACTA = 41.1
;12 - Aerial Ringtoss = 41.2
;13 - Alter Amiba Liddel 34 = 41.3
;14 - BOGS BUNNY = 41.4
;15 - FIRST = 41.5
;16 - Hipster Finish = 41.6
;17 - Taunt Hit = 41.7
;18 - Jesuszilla kicks you ass = 41.8
;19 - Megaman Glitch = 41.9
;20 - MY BALLS = 42.0
;21 - N.Bison = 42.1
;22 - KO Alexlexus Char = 42.2
;23 - KO Nostalgia Critic = 42.3
;24 - Single move ko = 42.4
;25 - Glocks -1 = 42.5
;26 - Savestateload get hit by helper anyway = 42.6
;27 - Savestateload and win time over = 42.7
;28 - The Room finish = 42.8
;29 - 9000
;30 - Defeat Billy Two Moons
;31 - Fast forward 30s
;32 - K'
;33 - Lazy dumbass
;34 - Mirror match
;35 - No Guns
;36 - No savestates
;37 - Only guns
;38 - Perfection
;39 - Savestate into hit
;40 - SOVIET DAMAGE
;41 - vs AVGN
;42 - Save me savestate
;43 - Never raged
;44 - 30s
;45 -
;46 -
;47 -
;48 -
;49 -

; vars
; var(10) - last time since savestate load
; var(11) - first move used
; var(12) - 30s
; var(13) - first attack
; var(18) - life aside from saveloading
; var(19) - raged?
; var(14) - moved?
; var(30) - 0mask
; var(31) - 0aggregator
; var(32) - 1mask
; var(33) - 1aggregator
; var(40) - 0-9 unlocked
; var(41) - 10-19 unlocked
; var(42) - 20-29 unlocked
; var(50) - 0-9 displayed
; var(51) - 10-19 displayed
; var(52) - 20-29 displayed


; The detector and shit
[StateDef 4400]
type    = S
movetype= I
physics = N
anim = 9741
ctrl = 0

[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(40) = floor(parent,fvar(30))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(50) = floor(parent,fvar(30))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(41) = floor(parent,fvar(31))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(51) = floor(parent,fvar(31))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(42) = floor(parent,fvar(32))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(52) = floor(parent,fvar(32))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(43) = floor(parent,fvar(33))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(53) = floor(parent,fvar(33))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(44) = floor(parent,fvar(34))
ignorehitpause = 1
[State So the cheevos wouldn't reset]
type = Varset
trigger1 = time = 0
var(54) = floor(parent,fvar(34))
ignorehitpause = 1
[State Some cheevos shall only show up in a match once]
type = ParentVarSet
trigger1 = roundstate >= 3
fvar(30) = var(50)
[State Some cheevos shall only show up in a match once]
type = ParentVarSet
trigger1 = roundstate >= 3
fvar(31) = var(51)
[State Some cheevos shall only show up in a match once]
type = ParentVarSet
trigger1 = roundstate >= 3
fvar(32) = var(52)
[State Some cheevos shall only show up in a match once]
type = ParentVarSet
trigger1 = roundstate >= 3
fvar(33) = var(53)
[State Some cheevos shall only show up in a match once]
type = ParentVarSet
trigger1 = roundstate >= 3
fvar(34) = var(54)

; ACHIEVEMENT 02 - Achievement Unlocked
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = var(40) != 0
trigger2 = var(41) != 0
trigger3 = var(42) != 0
trigger4 = var(43) != 0
trigger5 = var(44) != 0
var(40) = var(40) | floor(exp(2*ln(2)) + 0.5)

; ACHIEVEMENT 00 - Controlled
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(0*ln(2)) + 0.5) )
triggerall = !parent,var(55)
trigger1 = parent,command = "holdfwd"
trigger2 = parent,command = "holdback"
trigger3 = parent,command = "holdup"
trigger4 = parent,command = "holddown"
trigger5 = parent,command = "x"
trigger6 = parent,command = "y"
trigger7 = parent,command = "z"
trigger8 = parent,command = "a"
trigger9 = parent,command = "b"
trigger10 = parent,command = "c"
trigger11 = parent,command = "start"
var(40) = var(40) | floor(exp(0*ln(2)) + 0.5)

; ACHIEVEMENT 01 - AI
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = parent,var(55)
var(40) = var(40) | floor(exp(1*ln(2)) + 0.5)

; ACHIEVEMENT 03 - DLC Costume
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = parent,palno=[7,12]
var(40) = var(40) | floor(exp(3*ln(2)) + 0.5)

; ACHIEVEMENT 04 - Zombie Costume
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = parent,palno=12
var(40) = var(40) | floor(exp(4*ln(2)) + 0.5)

; ACHIEVEMENT 05 - Cat'O'Ninetails
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = p2name = "CO'9T by UHMEEEEA"
var(40) = var(40) | floor(exp(5*ln(2)) + 0.5)

; ACHIEVEMENT 06 - Hentai Char
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(6*ln(2)) + 0.5) )
trigger1 = Enemy, Name = "SLIME"
trigger2 = Enemy, Name = "kuromaru"
trigger3 = Enemy, Name = "Abe"
trigger4 = Enemy, Name = "Minotaur"
trigger5 = Enemy, Name = "Get weady"
trigger6 = Enemy, Name = "Kan Cho Man"
trigger7 = Enemy, Name = "Yarimusi"
trigger8 = Enemy, Name = "Nikimushi"
trigger9 = Enemy, Name = "Tendril"
trigger10 = Enemy, AuthorName = "n"
trigger11 = Enemy, AuthorName = "tengu"
trigger12 = Enemy, AuthorName = "men"
trigger13 = Enemy, AuthorName = "ショクシュスキー&UJI"
trigger14 = Enemy, SelfAnimExist(2520) && Enemy, Name = "Venom"
trigger15 = Enemy, AuthorName = "choiyer"
trigger16 = Enemy, AuthorName = "tetchi"
trigger17 = Enemy, AuthorName = "bomb"
trigger18 = Enemy, AuthorName = "smoke" || Enemy, AuthorName = "Jessica Smoke"
trigger19 = Enemy, AuthorName = "anamochi"
trigger20 = Enemy, AuthorName = "Dundeon"
var(40) = var(40) | floor(exp(6*ln(2)) + 0.5)

; ACHIEVEMENT 08 - Press X
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = parent,command = "x"
var(40) = var(40) | floor(exp(8*ln(2)) + 0.5)

; ACHIEVEMENT 09 - Hi thare Spat
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = enemy,authorname = "Spat856,Matias,Daniel9X7"
trigger2 = enemy,authorname = "Spat856"
var(40) = var(40) | floor(exp(9*ln(2)) + 0.5)

; ACHIEVEMENT 10 - SNES9X
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = numhelper(2999)
var(41) = var(41) | floor(exp(0*ln(2)) + 0.5)

; ACHIEVEMENT 11 - ACTA
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = !parent,var(55)
trigger1 = parent,command="ACTA"
var(41) = var(41) | floor(exp(1*ln(2)) + 0.5)

; ACHIEVEMENT 12 - PRO RINGTOSS
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = enemy,stateno = 728
trigger1 = enemy,movetype = H
trigger1 = enemy,statetype = A
var(41) = var(41) | floor(exp(2*ln(2)) + 0.5)

; ACHIEVEMENT 13 - BATTLEFIELD 3 PREORDERED
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = parent,loseko
trigger1 = enemy,name = "Alter Amiba"
trigger1 = enemy,prevstateno = 3605
;trigger1 = enemy,numhelper(3640)
var(41) = var(41) | floor(exp(3*ln(2)) + 0.5)

; ACHIEVEMENT 14 - LOONEY TUNES
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = numhelper(3200)
var(41) = var(41) | floor(exp(4*ln(2)) + 0.5)

; ACHIEVEMENT 15 - FIRST ATTACK
[State SUCCESS]
type = VarSet
triggerall = var(13) = 0
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,169]
var(13) = 1
[State SUCCESS]
type = VarSet
triggerall = var(13) = 0
trigger1 = parent,movetype = H
trigger1 = parent,stateno != [120,169]
var(13) = -1
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = var(13) = 1
var(41) = var(41) | floor(exp(5*ln(2)) + 0.5)

; ACHIEVEMENT 16 - HIPSTER BULLSHIT
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(6*ln(2)) + 0.5) )
triggerall = winko
triggerall = parent,stateno = 3101
trigger1 = p2name = "Scott Pilgrim"
trigger2 = enemy,authorname = "Jmorphman"
var(41) = var(41) | floor(exp(6*ln(2)) + 0.5)

; ACHIEVEMENT 17 - HIT THE TAUNTEE
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(7*ln(2)) + 0.5) )
triggerall = parent,movehit || enemy,movetype=H
trigger1 = enemynear,prevstateno = [190,199]
trigger2 = enemynear,prevstateno = [1900,1999]
var(41) = var(41) | floor(exp(7*ln(2)) + 0.5)

; ACHIEVEMENT 18 - JESUSZILLA
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = loseko
trigger1 = enemy,authorname = "Jesuszilla"
var(41) = var(41) | floor(exp(8*ln(2)) + 0.5)

; ACHIEVEMENT 19 - HI MEGAMAN
[State SUCCESS]
type = VarSet
triggerall = !(var(41) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = p2name = "Iori_NMO"
trigger1 = enemy,vel y < 0
trigger1 = enemy,screenpos y < 0
trigger1 = enemy,stateno = [1600,1610]
var(41) = var(41) | floor(exp(9*ln(2)) + 0.5)

; ACHIEVEMENT 20 - BALLS
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = parent,stateno = [5000,5030]
trigger1 = parent,statetype = S
trigger1 = enemy,hitdefattr = C, NA, SA, HA
var(42) = var(42) | floor(exp(0*ln(2)) + 0.5)

; ACHIEVEMENT 21 - N.BISON
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = parent,stateno = [1300,1330]
triggerall = parent,movehit
triggerall = (enemy,prevstateno = [1000,4999]) || (enemy,prevstateno = [6000,8999])
trigger1 = enemy,name = "Bison"
trigger2 = enemy,name = "M.Bison"
trigger3 = enemy,name = "Vega"
trigger4 = enemy,name = "Dictator"
trigger5 = enemy,name = "CVSBison"
var(42) = var(42) | floor(exp(1*ln(2)) + 0.5)

; ACHIEVEMENT 22 - ALEXLEXUS
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = enemy,authorname = "Alexlexus"
var(42) = var(42) | floor(exp(2*ln(2)) + 0.5)

; ACHIEVEMENT 23 - NC
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = enemy,name = "Nostalgia Critic"
var(42) = var(42) | floor(exp(3*ln(2)) + 0.5)

; ACHIEVEMENT 24 - Single Move
[State Remember My Only Attack]
type = VarSet
triggerall = var(11) = 0
trigger1 = parent,movetype=A
var(11) = parent,stateno
[State Used Another Attack? DOOR CLOSED]
type = VarSet
triggerall = var(11) > 0
triggerall = parent,movetype=A
trigger1 = var(11) < 810
trigger1 = var(11) != parent,stateno
trigger2 = var(11) >= 810
trigger2 = parent,stateno != [var(11)-(var(11)%100),var(11)-(var(11)%100)+20]
var(11) = -1
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = var(11)>0
var(42) = var(42) | floor(exp(4*ln(2)) + 0.5)
;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = 1
;text = "stateno = %d first = %d"
;params = (parent,stateno),(parent,stateno)-((parent,stateno)%100)


; ACHIEVEMENT 25 - GLOCKS
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = parent,stateno=[1000,1120]
trigger1 = parent,p2bodydist x <= 70
var(42) = var(42) | floor(exp(5*ln(2)) + 0.5)

; ACHIEVEMENT 27 - SAVESTATE TIMEOVER WIN
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = win
trigger1 = !winko
trigger1 = numhelper(2999)
trigger1 = helper(2999),stateno = 2997
trigger1 = helper(2999),time = [0,150]
var(42) = var(42) | floor(exp(7*ln(2)) + 0.5)

; ACHIEVEMENT 26 - SAVESTATE HELPER HIT
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(6*ln(2)) + 0.5) )
triggerall = numhelper(2999)
triggerall = helper(2999),stateno = 2997
triggerall = helper(2999),time = [0,60]
triggerall = !enemy,movehit
trigger1 = (parent,stateno = 5000) || (parent,stateno = 5010) || (parent,stateno = 5020) || (parent,stateno = 5070)
trigger1 = parent,time = 1
trigger2 = (parent,stateno != 5000) && (parent,stateno != 5010) && (parent,stateno != 5020) && (parent,stateno != 5070)
trigger2 = parent,stateno != [120,160]
trigger2 = parent,gethitvar(damage)
var(42) = var(42) | floor(exp(6*ln(2)) + 0.5)

; ACHIEVEMENT 28 - SUICIDE
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = parent,stateno = 3400
var(42) = var(42) | floor(exp(8*ln(2)) + 0.5)

; ACHIEVEMENT 29 - 9000
[State SUCCESS]
type = VarSet
triggerall = !(var(42) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = parent,life >= 9000
trigger2 = enemy,life >= 9000
trigger3 = parent,power >= 9000
trigger4 = enemy,power >= 9000
var(42) = var(42) | floor(exp(9*ln(2)) + 0.5)

; ACHIEVEMENT 30 - Billy Two Moons
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (enemy,name="Billy Two Moons") || (enemy,name="Not An Indian")
trigger1 = parent,win
trigger1 = matchover || enemy,teammode = turns
var(43) = var(43) | floor(exp(0*ln(2)) + 0.5)

; ACHIEVEMENT 44 - gotta kill fast
[State Set up]
type = VarSet
trigger1 = time = 0
var(12) = 1800
[State Count Down]
type = VarAdd
trigger1 = roundstate = 2
trigger1 = var(12) > -4000
trigger1 = (parent, ctrl) || var(12) < 1800
var(12) = -1
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = parent,winko
trigger1 = var(12) > 0
trigger1 = !numhelper(3300)
var(44) = var(44) | floor(exp(4*ln(2)) + 0.5)

; ACHIEVEMENT 31 - gotta kill fast forward
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = parent,winko
trigger1 = var(12) > 0
trigger1 = numhelper(3300)
var(43) = var(43) | floor(exp(1*ln(2)) + 0.5)

; ACHIEVEMENT 32 - K' Friggin' Ripped off me
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(2*ln(2)) + 0.5) )
triggerall = (enemy,name="K'") || (enemy,name="Keidash")
trigger1 = enemy,anim = 200
trigger1 = parent,anim = 200
trigger2 = enemy,anim = 231
trigger2 = parent,anim = 201
trigger3 = enemy,anim = 230
trigger3 = parent,anim = 210
trigger4 = enemy,anim = 210
trigger4 = parent,anim = 211
trigger5 = enemy,anim = 240
trigger5 = parent,anim = 220
trigger6 = enemy,anim = 211
trigger6 = parent,anim = 221
var(43) = var(43) | floor(exp(2*ln(2)) + 0.5)

; ACHIEVEMENT 33 - lazy dumbass
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(3*ln(2)) + 0.5) )
triggerall = var(14) = 0
trigger1 = (parent,stateno = 5000) || (parent,stateno = 5010) || (parent,stateno = 5020) || (parent,stateno = 5070)
trigger1 = parent,time = 1
trigger2 = (parent,stateno != 5000) && (parent,stateno != 5010) && (parent,stateno != 5020) && (parent,stateno != 5070)
trigger2 = parent,stateno != [120,160]
trigger2 = parent,gethitvar(damage)
var(43) = var(43) | floor(exp(3*ln(2)) + 0.5)
[State Used Another Attack? DOOR CLOSED]
type = VarSet
triggerall = var(14) = 0
triggerall = roundstate = 2
trigger1 = parent,stateno != 0
trigger1 = parent,stateno != 5900
var(14) = -1

; ACHIEVEMENT 34 - Mirror Match
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = enemy,name = "Nostalgic Ballz"
trigger1 = enemy,roundsexisted = 0
var(43) = var(43) | floor(exp(4*ln(2)) + 0.5)

; ACHIEVEMENT 35 - No Guns
[State Used Gun? DOOR CLOSED]
type = VarSet
triggerall = var(15) = 0
triggerall = roundstate = 2
triggerall = parent,movetype=A
trigger1 = parent,stateno = [1000,1120]
trigger2 = parent,stateno = 3000
trigger3 = parent,stateno = 1500
var(15) = -1
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = parent,win
trigger1 = var(15) = 0
var(43) = var(43) | floor(exp(5*ln(2)) + 0.5)

; ACHIEVEMENT 36 - No savestates
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(6*ln(2)) + 0.5) )
triggerall = parent,fvar(37) > 0
trigger1 = parent,win
trigger1 = !numhelper(2999)
var(43) = var(43) | floor(exp(6*ln(2)) + 0.5)

; ACHIEVEMENT 37 - Only Guns
[State Used non-Gun? DOOR CLOSED]
type = VarSet
triggerall = var(16) = 0
triggerall = roundstate = 2
triggerall = parent,movetype=A
trigger1 = parent,stateno != [1000,1120]
trigger1 = parent,stateno != 3000
trigger1 = parent,stateno != 1500
var(16) = -1
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = parent,win
trigger1 = var(16) = 0
var(43) = var(43) | floor(exp(7*ln(2)) + 0.5)

; ACHIEVEMENT 38 - Perfect
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = parent,win
trigger1 = roundstate = 3
trigger1 = parent,life = lifemax
var(43) = var(43) | floor(exp(8*ln(2)) + 0.5)

; ACHIEVEMENT 39 - Poorly timed save
[State SUCCESS]
type = VarSet
triggerall = !(var(43) & floor(exp(9*ln(2)) + 0.5) )
triggerall = numhelper(2999)
triggerall = helper(2999),stateno = 2999
triggerall = helper(2999),time <= 15
trigger1 = (parent,stateno = 5000) || (parent,stateno = 5010) || (parent,stateno = 5020) || (parent,stateno = 5070)
trigger1 = parent,time = 1
trigger2 = (parent,stateno != 5000) && (parent,stateno != 5010) && (parent,stateno != 5020) && (parent,stateno != 5070)
trigger2 = parent,stateno != [120,160]
trigger2 = parent,gethitvar(damage)
var(43) = var(43) | floor(exp(9*ln(2)) + 0.5)

; ACHIEVEMENT 40 - SOVIET DAMAGE
[State 0, VarSet]
type = VarSet
trigger1 = (p2movetype = H || (p2stateno = [5000,5110])) && roundstate < 3
var(24) = 0
ignorehitpause = 1
[State 0, VarSet]
type = VarAdd
trigger1 = (p2movetype != H && (p2stateno != [5000,5110])) || roundstate >= 3
trigger1 = var(24) < 10
var(24) = 1
ignorehitpause = 1
[State remember p2 life]
type = VarSet
trigger1 = var(24) >= 2
trigger1 = (p2movetype != H && (p2stateno != [5000,5110])) || roundstate >= 3
var(23) = p2life
ignorehitpause = 1
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (p2movetype != H && p2stateno != [5000,5110]) || roundstate >= 3
trigger1 = var(24) >= 1
trigger1 = p2life - var(23) <= -380
var(44) = var(44) | floor(exp(0*ln(2)) + 0.5)

; ACHIEVEMENT 41 - AVGN
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(1*ln(2)) + 0.5) )
triggerall = enemy,roundsexisted = 0
trigger1 = enemy,name = "AVGN"
trigger2 = enemy,name = "Angry Video Game Nerd"
trigger3 = enemy,name = "Nostalgia Critic"
trigger4 = enemy,name = "Angry Joe"
trigger5 = enemy,name = "AngryJoe"
trigger6 = enemy,name = "Linkara"
trigger7 = enemy,name = "Spoony"
trigger8 = enemy,name = "Marzgurl"
trigger9 = enemy,name = "Iron Liz"
trigger10 = enemy,name = "Nostalgia Chick"
trigger11 = enemy,name = "Phelous"
trigger12 = enemy,name = "Film Brain"
trigger13 = enemy,name = "Jewwario"
trigger14 = enemy,name = "Benzaie"
trigger15 = enemy,name = "RolloT"
trigger16 = enemy,name = "Paw Dugan"
trigger17 = enemy,name = "The Cinema Snob"
trigger18 = enemy,name = "Kung Tai Ted"
trigger19 = enemy,name = "Brad Jones"
trigger20 = enemy,name = "Yahtzee" ; altho why would he be in Mugen when he doesn't even like fighting games
trigger21 = enemy,name = "Motherfucker Mike"
var(44) = var(44) | floor(exp(1*ln(2)) + 0.5)

; ACHIEVEMENT 42 - Save me savestate!
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = numhelper(2999)
trigger1 = helper(2999),stateno = 2997
trigger1 = helper(2999),time <= 8
trigger1 = var(18) <= 250
trigger1 = parent,life >= var(18)
var(44) = var(44) | floor(exp(2*ln(2)) + 0.5)
[State 0, VarSet]
type = VarSet
trigger1 = !numhelper(2999)
trigger2 = numhelper(2999)
trigger2 = helper(2999),stateno != 2998
trigger2 = helper(2999),stateno != 2997
trigger3 = numhelper(2999)
trigger3 = helper(2999),stateno = 2997
trigger3 = helper(2999),time >= 8
var(18) = parent,life

; ACHIEVEMENT 43 - Never Rage
[State Raged? DOOR CLOSED]
type = VarSet
triggerall = var(19) = 0
trigger1 = parent,numexplod(1409)
var(19) = -1
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = parent,win
trigger1 = var(19) = 0
var(44) = var(44) | floor(exp(3*ln(2)) + 0.5)

; ACHIEVEMENT 45 - Critic's wrath
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = winko
trigger1 = parent,stateno=1400
var(44) = var(44) | floor(exp(5*ln(2)) + 0.5)

; ACHIEVEMENT 46 - ACTA
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(6*ln(2)) + 0.5) )
trigger1 = !parent,var(55)
trigger1 = parent,command="SGS"
var(44) = var(44) | floor(exp(6*ln(2)) + 0.5)

; ACHIEVEMENT 47 - Varied Juggle
[State 0, Helper]
type = Helper
triggerall = !numhelper(4409)
trigger1 = parent,var(40)
trigger2 = parent,var(41)
trigger3 = parent,var(42)
helpertype = normal
name = "Checker"
ID = 4409
stateno = 4409
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = numhelper(4409)
trigger1 = helper(4409),var(1) >= 7
var(44) = var(44) | floor(exp(7*ln(2)) + 0.5)

; ACHIEVEMENT 48 - Simul Mode
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = parent,teammode = simul
trigger2 = enemy,teammode = simul
var(44) = var(44) | floor(exp(8*ln(2)) + 0.5)

; ACHIEVEMENT 49 - spoony vlog
[State SUCCESS]
type = VarSet
triggerall = !(var(44) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = parent,win
trigger1 = var(12) <= -3600
var(44) = var(44) | floor(exp(9*ln(2)) + 0.5)

; ACHIEVEMENT 07 - That Fucking Cartoon Show
[State SUCCESS]
type = VarSet
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = p2name = "Twilight Sparkle"
trigger2 = p2name = "Rainbow Dash"
trigger3 = p2name = "Applejack"
trigger4 = p2name = "Pinkie Pie"
trigger5 = p2name = "Derpy Hooves"
trigger6 = p2name = "Fluttershy"
trigger7 = p2name = "Rarity"
var(40) = var(40) | floor(exp(7*ln(2)) + 0.5)

; Display goes here

[State 0, Helper]
type = Helper
triggerall = !numhelper(4401)
trigger1 = var(40) != var(50)
trigger2 = var(41) != var(51)
trigger3 = var(42) != var(52)
trigger4 = var(43) != var(53)
trigger5 = var(44) != var(54)
helpertype = normal
name = "A BOX"
ID = 4401
stateno = 4401
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = roundstate = 4
triggerall = parent,stateno=[180,189]
trigger1 = numhelper(4401)
trigger2 = var(40) != var(50)
trigger3 = var(41) != var(51)
trigger4 = var(42) != var(52)
trigger5 = var(43) != var(53)
trigger6 = var(44) != var(54)
flag = roundnotover

; GET
[StateDef 4401]
type    = S
movetype= I
physics = N
anim = 9741
ctrl = 0

[State Choose what to display wisely]
type = Null
triggerall = time = 0
trigger1 = (parent,var(40) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = !(parent,var(50) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (var(10) := 0)
trigger2 = (parent,var(40) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = !(parent,var(50) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = (var(10) := 1)
trigger3 = (parent,var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = !(parent,var(50) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = (var(10) := 2)
trigger4 = (parent,var(40) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = !(parent,var(50) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = (var(10) := 3)
trigger5 = (parent,var(40) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = !(parent,var(50) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = (var(10) := 4)
trigger6 = (parent,var(40) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = !(parent,var(50) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = (var(10) := 5)
trigger7 = (parent,var(40) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = !(parent,var(50) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = (var(10) := 6)
trigger8 = (parent,var(40) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = !(parent,var(50) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = (var(10) := 7)
trigger9 = (parent,var(40) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = !(parent,var(50) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = (var(10) := 8)
trigger10 = (parent,var(40) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = !(parent,var(50) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = (var(10) := 9)
[State Choose what to display wisely]
type = Null
triggerall = time = 0
trigger1 = (parent,var(41) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = !(parent,var(51) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (var(10) := 10)
trigger2 = (parent,var(41) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = !(parent,var(51) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = (var(10) := 11)
trigger3 = (parent,var(41) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = !(parent,var(51) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = (var(10) := 12)
trigger4 = (parent,var(41) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = !(parent,var(51) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = (var(10) := 13)
trigger5 = (parent,var(41) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = !(parent,var(51) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = (var(10) := 14)
trigger6 = (parent,var(41) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = !(parent,var(51) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = (var(10) := 15)
trigger7 = (parent,var(41) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = !(parent,var(51) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = (var(10) := 16)
trigger8 = (parent,var(41) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = !(parent,var(51) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = (var(10) := 17)
trigger9 = (parent,var(41) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = !(parent,var(51) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = (var(10) := 18)
trigger10 = (parent,var(41) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = !(parent,var(51) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = (var(10) := 19)
[State Choose what to display wisely]
type = Null
triggerall = time = 0
trigger1 = (parent,var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = !(parent,var(52) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (var(10) := 20)
trigger2 = (parent,var(42) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = !(parent,var(52) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = (var(10) := 21)
trigger3 = (parent,var(42) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = !(parent,var(52) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = (var(10) := 22)
trigger4 = (parent,var(42) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = !(parent,var(52) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = (var(10) := 23)
trigger5 = (parent,var(42) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = !(parent,var(52) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = (var(10) := 24)
trigger6 = (parent,var(42) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = !(parent,var(52) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = (var(10) := 25)
trigger7 = (parent,var(42) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = !(parent,var(52) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = (var(10) := 26)
trigger8 = (parent,var(42) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = !(parent,var(52) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = (var(10) := 27)
trigger9 = (parent,var(42) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = !(parent,var(52) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = (var(10) := 28)
trigger10 = (parent,var(42) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = !(parent,var(52) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = (var(10) := 29)
[State Choose what to display wisely]
type = Null
triggerall = time = 0
trigger1 = (parent,var(43) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = !(parent,var(53) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (var(10) := 30)
trigger2 = (parent,var(43) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = !(parent,var(53) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = (var(10) := 31)
trigger3 = (parent,var(43) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = !(parent,var(53) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = (var(10) := 32)
trigger4 = (parent,var(43) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = !(parent,var(53) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = (var(10) := 33)
trigger5 = (parent,var(43) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = !(parent,var(53) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = (var(10) := 34)
trigger6 = (parent,var(43) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = !(parent,var(53) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = (var(10) := 35)
trigger7 = (parent,var(43) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = !(parent,var(53) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = (var(10) := 36)
trigger8 = (parent,var(43) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = !(parent,var(53) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = (var(10) := 37)
trigger9 = (parent,var(43) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = !(parent,var(53) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = (var(10) := 38)
trigger10 = (parent,var(43) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = !(parent,var(53) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = (var(10) := 39)
[State Choose what to display wisely]
type = Null
triggerall = time = 0
trigger1 = (parent,var(44) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = !(parent,var(54) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = (var(10) := 40)
trigger2 = (parent,var(44) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = !(parent,var(54) & floor(exp(1*ln(2)) + 0.5) )
trigger2 = (var(10) := 41)
trigger3 = (parent,var(44) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = !(parent,var(54) & floor(exp(2*ln(2)) + 0.5) )
trigger3 = (var(10) := 42)
trigger4 = (parent,var(44) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = !(parent,var(54) & floor(exp(3*ln(2)) + 0.5) )
trigger4 = (var(10) := 43)
trigger5 = (parent,var(44) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = !(parent,var(54) & floor(exp(4*ln(2)) + 0.5) )
trigger5 = (var(10) := 44)
trigger6 = (parent,var(44) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = !(parent,var(54) & floor(exp(5*ln(2)) + 0.5) )
trigger6 = (var(10) := 45)
trigger7 = (parent,var(44) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = !(parent,var(54) & floor(exp(6*ln(2)) + 0.5) )
trigger7 = (var(10) := 46)
trigger8 = (parent,var(44) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = !(parent,var(54) & floor(exp(7*ln(2)) + 0.5) )
trigger8 = (var(10) := 47)
trigger9 = (parent,var(44) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = !(parent,var(54) & floor(exp(8*ln(2)) + 0.5) )
trigger9 = (var(10) := 48)
trigger10 = (parent,var(44) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = !(parent,var(54) & floor(exp(9*ln(2)) + 0.5) )
trigger10 = (var(10) := 49)

[State MARK THAT SHIT]
type = ParentVarSet
triggerall = time = 0
trigger1 = var(10) = [0,9]
var(50) = parent,var(50) | floor(exp(var(10)*ln(2)) + 0.5)
[State MARK THAT SHIT]
type = ParentVarSet
triggerall = time = 0
trigger1 = var(10) = [10,19]
var(51) = parent,var(51) | floor(exp((var(10)-10)*ln(2)) + 0.5)
[State MARK THAT SHIT]
type = ParentVarSet
triggerall = time = 0
trigger1 = var(10) = [20,29]
var(52) = parent,var(52) | floor(exp((var(10)-20)*ln(2)) + 0.5)
[State MARK THAT SHIT]
type = ParentVarSet
triggerall = time = 0
trigger1 = var(10) = [30,39]
var(53) = parent,var(53) | floor(exp((var(10)-30)*ln(2)) + 0.5)
[State MARK THAT SHIT]
type = ParentVarSet
triggerall = time = 0
trigger1 = var(10) = [40,49]
var(54) = parent,var(54) | floor(exp((var(10)-40)*ln(2)) + 0.5)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,23
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = 100
[State 0, VarSet]
type = VarAdd
trigger1 = time = [1,100]
trigger1 = var(0) > 0
var(0) = -5
[State 0, VarSet]
type = VarAdd
trigger1 = time > 100
var(0) = 5

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4399
ID = 4400
pos = ifelse(teamside=2,320,119),240+var(0)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 966
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4400+var(10)
ID = 4400
pos = ifelse(teamside=2,320,119),240+var(0)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 966
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
ID = 4400
pos = ifelse(teamside=2,320,119),240+var(0)
postype = left

[State 0, VarSet]
type = RemoveExplod
trigger1 = var(0) > 100
trigger1 = numexplod(4400)
id = 4400

[State 0, VarSet]
type = DestroySelf
trigger1 = var(0) > 100
trigger1 = !numexplod(4400)

; INIT
[StateDef 4409]
type    = S
movetype= I
physics = N
anim = 9741
ctrl = 0

[State Reset Aggregator]
type = VarSet
trigger1 = 1
var(1) = 0
[State Reset Mask]
type = VarSet
trigger1 = 1
var(2) = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = 1
value = 4408

; LOOP
[StateDef 4408]
type    = S
movetype= I
physics = N
anim = 9741
ctrl = 0

[State Add In]
type = VarAdd
trigger1 = (root,var(40) & floor(exp(var(2)*ln(2)) + 0.5) )
var(1) = 1
[State Add In]
type = VarAdd
trigger1 = (root,var(41) & floor(exp(var(2)*ln(2)) + 0.5) )
var(1) = 1
[State Add In]
type = VarAdd
trigger1 = (root,var(42) & floor(exp(var(2)*ln(2)) + 0.5) )
var(1) = 1
[State Add In]
type = VarAdd
trigger1 = time = 0
var(2) = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 0 && var(2)<10
value = 4408
[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 4407

; FINISH
[StateDef 4407]
type    = S
movetype= I
physics = N
anim = 9741
ctrl = 0

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(1) = %d"
params = var(1)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(40) = root,var(40)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(41) = root,var(41)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(42) = root,var(42)

[State 0, ChangeState]
type = ChangeState
trigger1 = var(40) != root,var(40)
trigger2 = var(41) != root,var(41)
trigger3 = var(42) != root,var(42)
value = 4409

[State Not needing you anymore]
type = DestroySelf
trigger1 = root,var(40) = 0
trigger1 = root,var(41) = 0
trigger1 = root,var(42) = 0




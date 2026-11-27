;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "ÅIŒ^”²Žè“”é‹ZE—ÓŒõ"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,x+y
time = 30


[Command]
name = "‰ñ“]Œ^“ËŠÑ‰œ‹ZE—†ù"
command = ~D, DF,F,D,DF,F, a+b
time = 25

[Command]
name = "‰ñ“]Œ^“ËŠÑ‰œ‹ZE—†ù"
command = ~D, F, DF, x+y+a+b

[Command]
name = "‰ñ“]Œ^“ËŠÑ‰œ‹ZE—†ù"
command = ~D, F, DF, c+z


[Command]
name = "ŠgŽUŒ^”²Žè“‰œ‹ZEâ‰e"
command = ~DB,F,DF,D,DB,B,DF,b;D, DF, F, D, DF, F, b
time = 30

[Command]
name = "ŠgŽUŒ^”²Žè“‰œ‹ZEâ‰e"
command = ~DB,F,DF,D,DB,B,DF,a;D, DF, F, D, DF, F, a
time = 30


[Command]
name = "‘MŒõŒ^”²Žè“‰œ‹ZEŽÜ–P"
command = ~DB,F,DF,D,DB,B,DF,y;D, DF, F, D, DF, F, y
time = 30

[Command]
name = "‘MŒõŒ^”²Žè“‰œ‹ZEŽÜ–P"
command = ~DB,F,DF,D,DB,B,DF,x;D, DF, F, D, DF, F, x
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "‹­PŒ^”²Žè“í‹ZE“V–¶"
command = ~D, DB, B, a

[Command]
name = "‹­PŒ^”²Žè“í‹ZE“V–¶"
command = ~D, DB, B, b


[Command]
name = "‘Î‹óŒ^”²Žè“í‹ZEªŒŽ1"
command = ~F, D, DF, x

[Command]
name = "‘Î‹óŒ^”²Žè“í‹ZEªŒŽ2"
command = ~F, D, DF, y


[Command]
name = "’n‘–Œ^”²Žè“í‹ZE‘˜n"
command = ~D, DF, F, x

[Command]
name = "’n‘–Œ^”²Žè“í‹ZE‘˜n"
command = ~D, DF, F, y


[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = z
time = 1

[Command]
name = "‹Ù‹}‰ñ”ðŒã"
command = /$B,x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ðŒã"
command = /$B,z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = c
time = 1

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = y+b
time = 1

[Command]
name = "MAX"
command = y+a
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µx"
command = /$x
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µy"
command = /$y
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µa"
command = /$a
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µb"
command = /$b
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µz"
command = /$z
time = 1

[Command]
name = "‚¨‚µ‚Á‚Ï‚È‚µc"
command = /$c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;ÅIŒ^”²Žè“”é‹ZE—ÓŒõ
[State kakusangatabasshutouougi zetuei]
type = ChangeState
value = 2500
triggerall = command = "ÅIŒ^”²Žè“”é‹ZE—ÓŒõ"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = life <= 300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0
trigger12= stateno = 250 && animelem = 4,>=0 && animelem = 9,<0

trigger13= stateno = 1100 && movecontact
trigger13= power >= 4000 || (var(20) > 0 && power >= 2000 )
trigger14= stateno = 1000 && var(6) = 1
trigger14= power >= 4000 || (var(20) > 0 && power >= 2000 )


;===========================================================================
;---------------------------------------------------------------------------
;‰ñ“]Œ^“ËŠÑ‰œ‹ZE—†ù
[State kakusangatabasshutouougi zetuei]
type = ChangeState
value = 2200
triggerall = command = "‰ñ“]Œ^“ËŠÑ‰œ‹ZE—†ù"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0
trigger12= stateno = 250 && animelem = 4,>=0 && animelem = 9,<0

trigger13= stateno = 1100 && movecontact
trigger13= power >= 4000 || (var(20) > 0 && power >= 2000 )
trigger14= stateno = 1000 && var(6) = 1
trigger14= power >= 4000 || (var(20) > 0 && power >= 2000 )


;---------------------------------------------------------------------------
;ŠgŽUŒ^”²Žè“‰œ‹ZEâ‰e
[State kakusangatabasshutouougi zetuei]
type = ChangeState
value = 2100
triggerall = command = "ŠgŽUŒ^”²Žè“‰œ‹ZEâ‰e"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0
trigger12= stateno = 250 && animelem = 4,>=0 && animelem = 9,<0

trigger13= stateno = 1100 && movecontact
trigger13= power >= 2000 || (var(20) > 0 && power >= 1000 )
trigger14= stateno = 1000 && var(6) = 1
trigger14= power >= 2000 || (var(20) > 0 && power >= 1000 )


;---------------------------------------------------------------------------
;‘MŒõŒ^”²Žè“‰œ‹ZEŽÜ–P
[State sennkougatabasshutouougi shakuhou]
type = ChangeState
value = 2000
triggerall = command = "‘MŒõŒ^”²Žè“‰œ‹ZEŽÜ–P"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0
trigger12= stateno = 250 && animelem = 4,>=0 && animelem = 9,<0

trigger13= stateno = 1100 && movecontact
trigger13= power >= 2000 || (var(20) > 0 && power >= 1000 )
trigger14= stateno = 1000 && var(6) = 1
trigger14= power >= 2000 || (var(20) > 0 && power >= 1000 )


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹­PŒ^”²Žè“í‹ZE“V–¶E‚Ç‚±‚Å‚àƒLƒƒƒ“ƒZƒ‹
[State kyoushuugatabasshutousenngi amagiri DC]
type = ChangeState
value = 1200
triggerall = command = "‹­PŒ^”²Žè“í‹ZE“V–¶"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 450
trigger6 = stateno = 1100 && movecontact
trigger7 = stateno = 1000 && var(6) = 1

;---------------------------------------------------------------------------
;‹­PŒ^”²Žè“í‹ZE“V–¶
[State kyoushuugatabasshutousenngi amagiri]
type = ChangeState
value = 1200
triggerall = command = "‹­PŒ^”²Žè“í‹ZE“V–¶"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0

;---------------------------------------------------------------------------
;‘Î‹óŒ^”²Žè“í‹ZEªŒŽE‚Ç‚±‚Å‚àƒLƒƒƒ“ƒZƒ‹2
[State chisougatabasshutousenngi sawarabi DC]
type = ChangeState
value = 1100
triggerall = command = "‘Î‹óŒ^”²Žè“í‹ZEªŒŽ2"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 450
trigger6 = stateno = 1100 && movecontact
trigger6 = var(5) = 0
trigger7 = stateno = 1000 && var(6) = 1

;---------------------------------------------------------------------------
;‘Î‹óŒ^”²Žè“í‹ZEªŒŽE‚Ç‚±‚Å‚àƒLƒƒƒ“ƒZƒ‹1
[State taikuugatabasshutousenngi yoiduki DC]
type = ChangeState
value = 1100
triggerall = command = "‘Î‹óŒ^”²Žè“í‹ZEªŒŽ1"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 450
trigger6 = stateno = 1100 && movecontact
trigger6 = var(5) = 1
trigger7 = stateno = 1000 && var(6) = 1

;---------------------------------------------------------------------------
;‘Î‹óŒ^”²Žè“í‹ZEªŒŽ
[State taikuugatabasshutousenngi yoiduki]
type = ChangeState
value = 1100
triggerall = command = "‘Î‹óŒ^”²Žè“í‹ZEªŒŽ1" || command = "‘Î‹óŒ^”²Žè“í‹ZEªŒŽ2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0

;---------------------------------------------------------------------------
;’n‘–Œ^”²Žè“í‹ZE‘˜nE‚Ç‚±‚Å‚àƒLƒƒƒ“ƒZƒ‹
[State chisougatabasshutousenngi sawarabi DC]
type = ChangeState
value = 1000
triggerall = command = "’n‘–Œ^”²Žè“í‹ZE‘˜n"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 450
trigger6 = stateno = 1100 && movecontact

;---------------------------------------------------------------------------
;’n‘–Œ^”²Žè“í‹ZE‘˜n
[State chisougatabasshutousenngi sawarabi]
type = ChangeState
value = 1000
triggerall = command = "’n‘–Œ^”²Žè“í‹ZE‘˜n"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 215 && animelem = 6,>=0
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 430 && animelem = 3,>=0
trigger9 = stateno = 440 && animelem = 4,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 255 && animelem = 6,>=0



;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹‚Ó‚Á”ò‚Î‚µUŒ‚
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;‚Ó‚Á”ò‚Î‚µUŒ‚
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‚Ó‚Á”ò‚Î‚µUŒ‚
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;MAX”­“®
[State -1, Jump Strong Kick]
type = ChangeState
value = 900
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(20) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;ƒNƒCƒbƒNMAX
[State -1, Jump Strong Kick]
type = ChangeState
value = 901
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = var(20) = 0
trigger1 = stateno = [200,499]
trigger1 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;‹Ù‹}‰ñ”ðŒã
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "‹Ù‹}‰ñ”ðŒã"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹‹Ù‹}‰ñ”ðŒã
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "‹Ù‹}‰ñ”ðŒã"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;‹Ù‹}‰ñ”ð‘O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "‹Ù‹}‰ñ”ð‘O"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹‹Ù‹}‰ñ”ð‘O
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "‹Ù‹}‰ñ”ð‘O"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;ƒNƒCƒbƒN‘O“]
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "‹Ù‹}‰ñ”ð‘O"
triggerall = power >= 1000
trigger1 = stateno = [200,499]
trigger1 = movecontact
;---------------------------------------------------------------------------
;ƒ_ƒEƒ“‰ñ”ð
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "‹Ù‹}‰ñ”ð‘O"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;•õ‰_
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;‘p‰_
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;úEí‹Z¥á•—
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 290 && movecontact
trigger10= stateno = 255 && movecontact

;---------------------------------------------------------------------------
;‘«“í‹Z¥Žž‰J
[State -1, a]
type = ChangeState
value = 255
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 290 && movecontact


;---------------------------------------------------------------------------
;P‹rí‹Z¥“Œ‰_E‚Ç‚±‚Å‚àƒLƒƒƒ“ƒZƒ‹
[State -1, a]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(20) > 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 440

;---------------------------------------------------------------------------
;P‹rí‹Z¥“Œ‰_
[State -1, a]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 290 && movecontact
trigger10= stateno = 255 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;‰“‹——£—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = animelem = 3,>=0
trigger4 = stateno = 230
trigger4 = animelem = 4,>=0
trigger5 = stateno = 235
trigger5 = animelem = 4,>=0
trigger6 = stateno = 400
trigger6 = animelem = 4,>=0
trigger7 = stateno = 430
trigger7 = animelem = 4,>=0

;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 3,>=0
trigger3 = stateno = 205
trigger3 = animelem = 3,>=0
trigger4 = stateno = 230
trigger4 = animelem = 4,>=0
trigger5 = stateno = 235
trigger5 = animelem = 4,>=0
trigger6 = stateno = 400
trigger6 = animelem = 4,>=0
trigger7 = stateno = 430
trigger7 = animelem = 4,>=0

;---------------------------------------------------------------------------
;‰“‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >80
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=80
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‰“‹——£—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,>=0
trigger3 = stateno = 205
trigger3 = animelem = 4,>=0
trigger4 = stateno = 230
trigger4 = animelem = 4,>=0
trigger5 = stateno = 235
trigger5 = animelem = 4,>=0
trigger6 = stateno = 400
trigger6 = animelem = 4,>=0
trigger7 = stateno = 430
trigger7 = animelem = 4,>=0

;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,>=0
trigger3 = stateno = 205
trigger3 = animelem = 4,>=0
trigger4 = stateno = 230
trigger4 = animelem = 4,>=0
trigger5 = stateno = 235
trigger5 = animelem = 4,>=0
trigger6 = stateno = 400
trigger6 = animelem = 4,>=0
trigger7 = stateno = 430
trigger7 = animelem = 4,>=0

;---------------------------------------------------------------------------
;‰“‹——£—§‚¿‹­ƒLƒbƒN1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ß‹——£—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;’§”­
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,>=0
trigger3 = stateno = 205
trigger3 = animelem = 4,>=0
trigger4 = stateno = 230
trigger4 = animelem = 4,>=0
trigger5 = stateno = 235
trigger5 = animelem = 4,>=0
trigger6 = stateno = 400
trigger6 = animelem = 4,>=0
trigger7 = stateno = 430
trigger7 = animelem = 4,>=0

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,>=0
trigger3 = stateno = 205
trigger3 = animelem = 4,>=0
trigger4 = stateno = 230
trigger4 = animelem = 4,>=0
trigger5 = stateno = 235
trigger5 = animelem = 4,>=0
trigger6 = stateno = 400
trigger6 = animelem = 4,>=0
trigger7 = stateno = 430
trigger7 = animelem = 4,>=0

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

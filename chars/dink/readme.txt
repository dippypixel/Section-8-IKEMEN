Dink Smallwood, Part I+II for Mugen by The_None

Note:This char is not suited for simul mode

The farm boy of StoneBrook has always dreamed of becoming a mighty warrior, and with his journey starting out after a visit from a wizard and his house burning down in a fire, Dink once saved the kingdom from cults, rouge agents, goblins and ancient evils. Dink didn't stop with saving StoneBrook and went on to all sorts of adventures as chronicled by various ghostwriters scattered around.

One day Dink found himself in a situation similar to how his lifelong journey has started, and as he got out to feed the pigs again he's abducted out of his realm by Thanos. Landing in a new realm full of possibilities Dink has hardly witnessed before, he wandered around in suburbs and gets redirected to a corporation manufacturing realm travel machines. The corporation in question - somehow aware of Dink's otherwordly origin - claimed it was having finacial issues thus were not able to provide such device to Dink yet. Dink then took notice of a fighting tournament that appears to include individuals from all sorts of realms and decides to join the event in hopes the competition price would allow Dink to fund the development of a new realm travel machine unit.

After winning one such tournament a new realm machine was produced specifically for Dink and he went in for it's first run. While he was about to be transported back into StoneBrook a local maid has inteferred with the calibration process and thus Dink was transported into Iwo Jima during World War 2. With that Dink has become ageless and due to the damage withstood by the machine in a middle of a warzone, Dink went on for more all-new adventures to pass time up until the formation of the BFG corporation and the Mugen tournaments.

Will he set things right and actually come back to his home realm or would he grow up to be comfortable in this new realm? Does he even remember his priorities? Is he ever still sane?

That his new arrival coincides within the same year as the new season of Samuari Jack AND the 20th anniversary of his source game's original shareware release is a coincidence, or is it?

Changelog since the March 2017 release:
-New style added: Slas, coming with it's own basic "punches", special and super moves
-Tweaked/remade animations for jumping hard punch, standing high hard gethit, taunt, style switch super getting blocked and the Ducks
-Tweaked very few aerial hitvelocities
-Made the crouching hard punch jump cancelable only on hit with the airborne opponent
-Made the (regular) fireball air-blockable
-The Acid Rain would actually stop hitting after Dink gets hit
-Lowered the hit priority of the duckling from the Papa Duck super
-Made the actual Papa Duck around as 108% fast as Dink's running speed so Dink won't be able to outrun it
-Projectiles now compatible with Vans's projectile reflection code
-6 new intros and 5 new winposes (2 normal and 3 that would apear on match over state. The duck transformation winpose became a possible matchover one)
-Air throw added
-Ground normal throws can now be teched out of

Installation:
To install the character, extract the files into Mugen's "chars" directory (the files are stored in a sub-directory so if you extract it correctly the files would be in [mugen]/chars/thanos), edit the select.def found under the [mugen]/data directory as instructed in the file and.....
-Winmugen users (sort of deprecated), add the line:"dink, stages/[name of stage].def" (without quotation marks, also applies to below)
-1.0 users, add the line:"dink/dink_10, stages/[name of stage].def"
-1.1 users, add the line:"dink/dink_11, stages/[name of stage].def"

Also please note that the projectile reflection code used for the Fire Blade loop may not correctly in WinMugen so using 1.0 and later Mugen versions is recomended.

Button Layout:
x	=	LP
y	=	HP
a	=	LK
b	=	HK
z	=	CD
c	=	RL

Target combos:
Crouch.LK->Crouch.LP/Crouch.HP/Crouch.HK
(BUST)Close.LP->LP->HP
(BUST)Close.LP->LP->HK
(BUST)Close.HP->LP->LP/HP/HK
(BUST)Close.HP->HP
(BUST)Crouch.HP->HP
(BUST)Close.HP->Crouch.HP->HP
(BUST)Air.LP->Air.LK->Air.LK->Air.HK->Air.HP
(SLAS)Air.LK->Air.LK->Air.LS->Air.CD

Movelist:

Misc:
-Blowback Attack:				HP+HK, or CD
-Dodge:						LP+LK, or RL
-Guard Cancel Attack:				while guarding, HP+HK, or CD (needs 1 power stock)
-Guard Cancel Evasion:				while guarding, LP+LK, or RL (needs 1 power stock)
-Recovery roll:					hold horizontal direction when about to get up

Command moves:
-The Buttman:					mid-air, down+LK
-(BUST)Golem Smasher:				forward, LP
-(SLAS)Cassandra Style Launch:			forward, LP
-Viper Double:					forward, LK
-Disco Hospital:				up-close, backward/forward, HP
-Still Havin' It:				up-close, backward/forward, HK
-Noob Driver:					mid-air, up-close, backward/forward, HP/HK

Special Moves:
-Style Switch:					QCB+LK
-Style Switch Attack:				QCB+HK

-(BUST)Fireball:				QCF+LP/HP (also mid-air)
-(BUST)Rising Knee:				DP+LK/HK
	-> Rising Follow:			LK/HK
-(BUST)Duck Channel:				QCB+LP/HP (also mid-air)
-(BUST)Magik Kick:				QCF+LK/HK
	-> Roundpinhouse:			QCF+LK/HK (this step can be skipped)
		-> Jackson Slide:		QCF+LP/HP
-(SLAS)Bow:					QCF+LP/HP (see also the notes)
-(SLAS)Axe Throw:				DP+LK/HK
-(SLAS)Fire Blade:				QCB+LP/HP
	-> Fire Loop:				LP
	-> Fire Rise:				HP
-(SLAS)Bomb Toss:				QCF+LK/HK

Lv.1 Super Moves:
-(BUST)Bow Lore:				QCF,QCF+LP/HP (button strength determines the initial angle, see also the notes)
-(BUST)Acid Rain:				QCF,QCF+LK/HK
-(SLAS)Super Fireball:				QCF,QCF+LP/HP
-(SLAS)Spinny Fire Kick:			QCF,QCF+LK/HK
-Style Switch Super:				QCF,HCB+LP/HP

Lv.2 Super Moves:
-(BUST)Papa Duck:				QCB,QCB+LK/HK
-(SLAS)March Of The Pigs:			QCB,QCB+LK/HK

Lv.3 Super Moves:
-(BUST)Nuke'em:					QCB,QCF+LP/HP
-(SLAS)Knock Knock Who's There Todd:		QCB,QCF+LP/HP

Finisher Move (from the second round, 3 power stocks, enemy's health less than 33%):
-Ultra Galactic Argentina Backbreaker:		QCF,QCF+Z

Notes:
-Most of the moves can only be juggled once into themselves
-Hitting with the non-aerial blowback attack once within a juggle resets the juggle flags
-Counter hits usually grant a tiny bit of extra hitstun
-The Golem Smash is an overhead if used raw
-The bow can be aimed with up/down directions while holding punch, release the button to shoot
-Hitting the arrow at around the opponent's designated head position would result in a headshot for extra damage
-Shooting the arrow at around position lower than the opponent's designated mid position makes it low-blockable
-The duck needs time to actually take off
-The fire loop can reflect projectiles
-Be careful to now blowyourself up with your own bombs


Credits:
-Balthazar
-Seth Robinson
-Winane and whoever else he credited (ANMC, Bagaliao, FlowaGirl, YongMing, Kamek, and Luchini, for concepts)
-Phantom of the Server
-Vans for the cornerpush and projectile reflection systems
-Bia or whoever else proved me that the bitwise operations (and how) worked in Mugen
-Insanius
-Kamekaze
-Helios
-Hoshi
-Arpa
-Orochi Herman
-Fiendish Games
-Marshal Matters
-SNK
-Capcom
-Sega
-Arc System Works
-Looking Glass Studios
-Michael Rosen
-Andrew Bowen
-Earl Alexander
-Random Talking Bush
-James Brown
-The Coca Cola Company
-Xavier Despas
-Looking Glass Studios
-Most_Mysteriou--Wait a minute....
-Petrilla Entertainment
-Nintendo
-Andrzej Sapkowski
-Walt Disney and Linda Woolverton
-Mariusz Pawluk
-Silent Storm
-The Scriptorium
-Namco
-Mike Patton
-Les Rhytmes Digitales
-PepsiCo
-Michael Jackson
-Scatman John Paul Larkin
-Jeffrey Nelson
-Jay Anthony Franke
-John William Galt
-ChefBoyardee/Tales of Game's
-Fred Durst
-Tupac Shakur, Dr. Dre, Snoop Dogg, Coachella
-Walt Disney
-Yoko Taro
-Flipfloppery
-K2 LLC/Bandai
-Lewis Coates
-Sam Neil
-Lou Ferrigno
-2007 Bioware
-Raven Software











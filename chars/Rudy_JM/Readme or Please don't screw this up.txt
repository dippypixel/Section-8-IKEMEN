====================================> RUDY MTORTILLA <====================================
Original character for MUGEN 1.0 by jade_midori
Version: 0.95, Dated: 07.31.2022

------------------------------------------------------------------------------------------
Changelist:

0.95:
	-Reduced range in a few long reaching moves by a bit: 2C, 3C, 4B
	-Changed grab whiff animation a bit
	-Let's Rock! aborts cornerpush, also fixed a missing anim error.
	-Corrected some mistakes in this readme.
	-Paper Fan Smack: Changed the way invuln. is distributed
			  Added a juggle exception to Paper Fan Smack for fun.
			  Can finally kill :p
	-j.B: Crossup hitbox is only in the first frame.
	-Counter hit flash effect is now behind the characters.
	-Grab is techable with any button now.

0.9:
	-Changed how Burst Mode affects this character.
	-VOICES!!!11111
	-Just like my other characters, a guard cancel will cause invincibility on the opponent.

0.6:
	-Applied fixes from Mi Oh which right now im too lazy to document

0.5:
	-The First time the public is exposed to this menace.

------------------------------------------------------------------------------------------
Important:
	-I do not own the sounds and most of the effects (sounds+effect graphics) in this character.
	-Make sure your Max Explods and Max Helpers (56) are set as high as possible, along with your computer being able to do that.

------------------------------------------------------------------------------------------
FAQ:

Q: Is this character supported in 1.1?
A: It should be, I hope.

Q: Why does he look so pixelly
A: You are likely running in 240p (REALLY, these days?), which has him look a bit shrunken with a lot of aliasing.

Q: What's the gameplay style
A: An arranged version of my "Azufight Plus", simplified without some of the extra mechanics.

Q: What's with the black borders.
A: Exporting with flash is fucky and from the very beginning I didn't wanna fix the sprites (exporting in low quality causes some coloring to
become screwy), and exporting in high quality causes antialias on the borders, this was probably the best way to handle it without too much work.

Q: Why is he so incomplete? Why should I download this in lieu of, say, "MH_Daniel" or "Daniel_2x"
A: You see, I don't feel like working on him further in the time being, but I felt that people should have something, I've seen too many people attempt to "restore" or
"enhance" the old versions, but kind of missing the point of making a fun character. Plus they all kind of take the old code base which is a big mess, therefore I feel
you guys should deserve something of higher quality.

Q: WHERES THE SLOT MACHINE!?
A: It's gone, I don't think it suits the current gameplay, plus you SHOULD be able to beat anybody without assistance of random chance, especially now that his buttons are faster.

Q: Why are the sprites so inconsistent?
A: The work piled up, at one point I said I would fix all the old animations and stuff, guess what, I never did ;_; One day when I have enough motivation I might redo ALL the sprites.
Also the art style changed midway through development as I became better at drawing him.

Q: Those new normals look familiar.
A: You have a sharp eye, I am still training myself in animation. I did most of the new normals by referencing animations I've seen. Hopefully some day I should be able to
get it and make movement from scratch rather than just looking at similar motions.

Q: The old version ran in WinMUGEN, why does this one not?
A: I am using features exclusive to 1.0+ environments, the minor ones being victory quotes and certain constants. The major one being that double redirects exist thanks to cond are only
supported in these environments, sorry to dissapoint.

Q: Why is his name "Rudy MTortillas"?
A: Trust me, you do not want to associate your original character to your own name. Originally this character was more in lieu with one of those gary stu self insert things.
Nowadays I consider Rudy more of an original character out of many that I've created. Hell he's not even much of a major character these days, too busy concentrated on other
things.

Q: Why do you digress so much
A: It happens when you are bored.

------------------------------------------------------------------------------------------
Description:

Name: Rudy MTortillas (Yes that's his real name)
Age: 18

Story:
He lost his fucking money because it got stolen by some pick-pocketer, and now it's up to you to beat the shit out of everything in your path to get it back, got it? Aight moving on.

Basic gameplay:
Pretty much a character that relies on getting them to the corner and making the opponent guess. Some of his moves alternate between
high or low blocking, one of them being straight up unblockable. With moves with beefy frame advantage and some relatively fast moves
he can assert his turn most of the time. However he has a subpar, one hit projectile, which doesn't win him many fireball battles. Along with below average health.

------------------------------------------------------------------------------------------
Known Issues:

-MUGEN really hates it when you hit people that have hit the ground OTG and then force them into a default falling state. It asserts invulnerability and ruins a couple combos,
can we please make the liedown nothitby fix a thing? <:) As a result and cause I want portability to a full game later to be easier I'm not doing anything about it, hope Ikemen devs take
note of this issue cause it really ruins the gameplay I intended.

-Any character that deals damage via state check of 5110 will sadly not work, now I thought long and hard about this one, cause I've always bypassed the normal Liedown state, because uuuh
it sucks because of not only the forced invuln (I do have a bypass of that) but also the mashing, which means that if you press every button imaginable you just kinda get up instantly, and
this character already has a short liedown time. So it's like pick your poison, ruin OTGs or ruin this type of state checking, and honestly I feel that if you wanna deal damage to somebody
in a throw by landing, you should have some sort of custom state so this type of thing doesn't happen. Honestly Neither situation is ideal, but I am going in favor for the liedown state.

------------------------------------------------------------------------------------------
Gameplay Notes:

	-All grabs have 4 frames of throw protection
	-All Non-Super Hard knockdowns are such UNLESS you OTG, in which case they become soft knockdowns and therefore techable before landing on the ground, with a generous window for it
to be registered. To reiterate, here's the list of types of knockdowns:
		-Soft: Can be recovered at a point in time after being hit.
		-Soft-Hard: Can be recovered only after if you are hit OTG once.
		-Hard: Can never be recovered from.
	-All moves can potentially induce OTGs, depending on the hitbox of the move.
	-Normals induce resets once the hitstun is over.

Juggling:

Rudy's moves are split into 4 groups:
	Group 1: 2C, Double Spinny Funny
	Group 2: X-Up Kick.
	Group 3: No, Paper Fan Smack, Big Arc Slam (Ground)
	Group 4: Velocity Headbutt, Big Arc Slam (Air)

You can only mix juggles from moves with different groups. I.e, once you use 2C you cannot use 2C OR Double Spinny Funny, but you can use, say Big Arc Slam (Ground).

There is one exception on this rule: Paper Fan Smack, it can hit regardless if its group has been flagged or not, however, if that hit succeeds, it allows them to recover at the
peak of their trajectory, sends them a bit higher, and prevents the player to jump cancel the move until the juggle is resolved by any means.

------------------------------------------------------------------------------------------
Moves:

A, B, C = Attacks
X = SC = Stylish Cancel
Y = G = Grab Button

Button is always after +, so if you see B + B it's Back Plus B

A/B/C Means A, B, or C.

360 = Full Circle Motion
QCF = Quarter Circle Forward (D, DF, F)
QCB = Quarter Circle Back (D, DF, F)
HCF = Half Circle Forward (B, DB, D, DF, F)
HCB = Half Circle Back (F, DF, D, DB, B)
DP = Dragon Punch (F, D, DF)
x2 = Do Motion Twice

Assume all moves are done in the ground, unless otherwise stated.

	Unique:
		-DF + C: X-Up Kick
			-Causes groundbounce, hits overhead.
		-B + B: Double Spinny Funny
			-Knocks airborne opponents down.
		-G: Grab
			-Opponent must tech by holding a side direction and pressing a button before the tech window stops.
	Special:
		-QCF + A/B/C: No
			-Strength of button dictates speed, causes massive hitstun on contact with the pointing animation.
			-Jump cancellable if Luggy hits.
			-Soft-Hard Knockdown
		-DP + A/B/C: Paper Fan Smack
			-Always hits regardless of Juggle Group Flag status.
			-The stronger the button, the more the damage AND invuln, but the frame advantage you get gets worse.
			-Jump cancellable on hit ONLY if its Juggle Group is not flagged already.
			-Soft Knockdown
			-Shortens the recovery strongly if its Juggle Group is flagged.
		-QCB + A/B/C: Velocity Headbutt
			-Soft-Hard Knockdown
		-HCB, F + A/B/C: (Air OK) Big Arc Slam
			-On the air all versions are the same
			-On the ground:
				-A has no block restriction
				-B is overhead
				-C is unblockable
			-Causes ground bounce on hit.
			-Soft Hard Knockdown
	System:
		-F, F: Dash
		-B, B: Backdash
			-Invuln for the first few frames.
		-D, U: Super Jump.
		-(Requires 1/2 bar of Super) (While blocking) B, DB, D + X: Guard Cancel
			-Does tiny damage.
		-(Requires 1 1/2 bar of Super) (During an attack) X: Let's Rock!
			-Interrupts a move to continue comboing, while resetting all juggle group flags.
		-(Requires AT LEAST 3 bars of Super) (While in Danger Range) D, D + X: BURST MODE!
			-Lasts for 200 frames for each bar consumed: 600, 800 and 1000 respectively for 3, 4 and 5 meters. All meter is then spent.
			-Buffs the following:
				-Damage
				-Remaining Health
				-Speeds up most of his moves' startup.
				-Walk and (Back)Dash speed are slightly adjusted.
			-Cannot gain super meter while it is active.
			-All Super Meter use is converted to Burst Mode time, with a 25% discount.+
		-A+B or B+C or A+C: Dodge

	Super Moves:
		-(Requires 1 bar of Super) QCF, QCB + A/B/C: Dizzy Dance
			-Goes through projectiles during entire active duration.
		-(Requires 1 bar of Super) QCB, QCF + A/B/C: Tricky Tops
			-Complete invincibility during entire active period of the first swing, and a little bit after.

------------------------------------------------------------------------------------------
What's left?

-I will be fixing bugs here and there perhaps maybe.

------------------------------------------------------------------------------------------
Credits and Acknowledgements

I would put all of them here but I don't want to associate or drag your names to the mud here. It's similar to other characters anyway.











...Well i'm not that kinda guy so:

-Elecbyte (MUGEN environment)
-VirtuallTek (Fighter Factory)
-Yukidaruma (Made the game I'm mostly inspired by)
-The_None (NJS, Animation Speed-Up code, Custom State methods and other tricks)
-Jesuszilla (Variable Height Code)
-PotS (Various useful code snippets, useful feedback)
-Vans (Cornerpush code)
-Inktrebuchet (Double redirects)
-Caddie (Liedown invuln fix)
-PlasmoidThunder (Code snippet for invulnerability that lasts till recovery near ground)
-Mozaico (Drew the portrait, added back the super moves and added voice triggers... only for me to change them to wtf noises lol)

And of course the media credits:

-SNK (Certain sparks)
-EXAMU (Certain effects)
-Eurocom Entertainment Software (Crash Bash sounds)
-DarkSydePhil
-Acclaim
-Wendee Lee
-Microsoft
-Wherever the fuck that yell they used as a base for the koopa troopa sound comes from
-Whoever the fuck dubbed Peter Griffin in italian.
-Eric Abramov
-Verbalase
-iD Software
-Nintendo
-Charles Martinet
-reallyhandsomepeople
-Mika
-Mark Steven Miller and Jason Scher
-Tito Reséndiz
-Team 17
-Sonic Team
-That entire fucking Hanah-Barbera sound library
-Rare

And whatever else i forgot.

Once again I'm deeply sorry to all of you :P

------------------------------------------------------------------------------------------
Plugs:

MFG: https://mugenguild.com/forum/profile/jademidori-82039
MFFA: https://mugenfreeforall.com/profile/4486-jade_midori/
Twitter: https://twitter.com/jade_midori_
YouTube: https://www.youtube.com/channel/UCn2DLeMgoRjZ0PjgVCEpb9w
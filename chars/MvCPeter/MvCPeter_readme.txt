===================================
=                                 =
= Peter Griffin (MvC V2.5 Alpha 3.2)=
=                                 =
===================================

Started on:        June 10, 2008
Beta Release:      June 14, 2008
Alpha Release:     June 19, 2008
Alpha 2 Release:   July 4, 2008
Alpha 3 Release:   November 18, 2008
Alpha 3.2 Release:   April 1, 2012
Final(?) Release:  I dunno.

Orginal artwork and MUGEN creation by:       Warner el Tochix
MvC edit (air rave and Supers) by:           JudgeSpear
New intros and some other tweaking by:       GigaBowserX
AI Creation and further MvC implementation:  Luigi-Master
Coding help:                                 EvilSlayerX5 and XRedDragonClawsX
                                             DC250 (Sprite Edit and winquotes)
Move set:

Legend:
U = Up
D = Down
F = Forward
B = Back
P = Punch
K = Kick

Punches:
A B C
Kicks:
X Y Z

Specials:
D/F/P:  Fart-douken.  Hardest one shoots 3.
D/F/K:  Beer Bottle.
F/D/F/K:  Peter Air Kick.
D/B/P:  Peter Smackdown.

Special techniques:
F/F or PPP+Direction:  Dash
D/U or KKK+Direction:  Super Jump
PPP while blocking:  Guard Push
(Landing from fall) PPP (and or direction):  Recovery Roll
L or R while lying down:  Ground Roll

Super Moves (Lv1):
D/F/PP:  Anal Torch
D/B/PP:  Steroid Man
D/B/HP+HK:  Mudkip Counter (must be guarding)

Hyper Moves (Lv2):
D/F/KK:  A.N.N.A. Collider
D/B/KK:  Nausea Nightmare

Ultimate Move (Lv3):
D/F/HP+HK:  Hokuto Hyakuretsu Ken (must have less than 300 HP)

Notes:  He uses a zig zag combo system, which except for the air rave, are IN NO
WAY LOL ACCURATE TO MVC OR ANY OTHER VS SERIES.  Most attacks can cancel into
the above super moves, except for the Mudkip Counter and HHK.  Steroid Man can
be cancelled into either Anal Torch or A.N.N.A. Collider.

What's been done (Alpha 3.2):
+Basically, I just ajusted some sprites so MvC Peter Griffin would be more
better
+Added winquotes.
+Now has a K.o echo effect. (If you don't wan't it, open up the cns file and 
change KO.echo = 2 to KO.echo = 0.

What's been done (Alpha 3):
+Made the Super Jump be activated by 3 kicks instead of two, likewise, made the
Dash be activated by 3 punches instead of two.
+Added a command for back dash too, back, PPP.  Forward dash is now performed by
forward, PPP.
+Made the grabs be activated by the medium and strong punches.
+Adjusted the physics so that they mimic MvC's.  This means Peter will clear the
entire screen when he superjumps!
+Fixed the AI so that it can adapt to it's new superjump.
+Pre round movement.
+Ground and Recovery Roll.  Press L or R to roll in that direction while laying
down.  Press PPP (and direction, optional) when you land from falling to roll.
+Added 3 more supers, a counter (Lv1, D/B/HP+HK when guarding), a hyper
(Lv2, D/F/KK), and a HSDM (Lv3, D/F/HP+HK, only with less than 300 HP)
+Changed and fixed his win potrait.
+Made him not go into his Big Chicken winstate if he is fighting Big Chicken or
has him as an ally.
+Eliminated his PeterBex.CNS, but I will make a "Bling" patch once he is
finalized.
+Fixed some lip synhing, though it isn't perfect.

What's been done(Alpha 2):
+Sped up the Bottle toss animations to what they used to be.
+Added a projectile limiter to all projectiles.
+Added shockwaves for the intro against Homer.
+Fixed most CLSN issues.
+Made his Super Jump behave like a normal superjump, meaning you can superjump
up and you can move freely around after you go up!  Code courtesy of Splode.
+Disabled Peter's movement issue after he KO'd someone with the Steroid Man or
Anal Torch supers.
+Added 6 AI difficulties, to change, look for "AI DIFFICULTIES" in the CMD and
change the "value" to the number you want.  Default is 5.
+He now starts out with 1 power bar, like in MvC.
+He now turns in mid-air, like in MvC.

What's been done(Alpha):

+He can now gound combo like a regular MvC character!
+Added MvC1 hit sparks and sounds, courtesy of Beximus. (Your creations rock!)
+Changed his HyperBGs with those found in Beximus' creations.
+Now has two CNS'; the one CNS (PeterReg) uses the original Hyper BGs found in
the old Peter and use the green ones from Beximus.  The second CNS (PeterBex)
uses the Hyper BGs and floors found in Beximus' creations.
+Updated the AI to fulfull his MvC competence.
+Added the "floor" for the new HyperBGs.
+Added a land shockwave.
+Added a Super Jump dust shockwave.
+Added Super Jump effect lines.
+Added an Anti-Air dust wave.
+All of Peter's intros are now a new CNS, as if you try adding names to the
flirt intro, it would crash.
+Added 27 more names to Peter's "Black Book".
+Replaced the KFPalm sound with something from MvC that has the same auditory
effect.
+Made his Homer palette have the exact RGBs as Homer.
+Fixed the stiffness when he ground combos.
+Changed his run to a dash; infact, it's a wavedash!
+Added the MvC level up sounds (courtesy of Buyog for the code).
+Now SuperJumps normally instead of only after a launcher.
+Disabled the second air jump.
+Made Push Block sprites for Peter.
+Added the Push block sprites.
+Made the Dash and Super Jump activate by pressing 2 punches and 2 kicks
respectively.
+Made the Supers have 2 more 2 punch/kick inputs than before, for example, the
Steroid Man's input is D/B/x+y,y+z, or x+z instead of just D/B/x+y.
+Fixed the other 11 palettes due to new sprite palette issue.
+Added Hyper Combo Finish names, like Splode's Capt. Commando and LimitedMoon's
Ryu/Ken.  Code is courtesy of Splode.
+Added a push block, code courtesy of EvilSlayerX5.
+Now has a No-AI CMD for those who think the AI's too easy to beat with Boss
characters.  (You know who you are.)
+Added Strong versions of the Fart-doken and Beer Bottle specials.
+Eliminated the EX attacks; instead, they are free and flash less.
+Made the anal torch make flames as it's hitsparks instead of the medium and
hard hit hitsparks.
+The Kung Fu Kick anti-air are now performed by F/D/F/any kick (a, b, or c),
and the next kick is performed by the same button as the one you used to
attack with.
+The Anal Torch and Nausea Nightmare now "melt" enemy projectiles.
+Win message added, code courtesy of ClayMizer.  Thanks!
+Temporarily fixed a bug regarding the win message; if the Chicken Surprise
Victory animation plays, the win message wouldn't display Peter's portrait.  So,
in order to combat this, I decided to make the message not appear at all should
said victory animation occurs.  What's the point of a win message if he's been
mauled after he won?

What needs to be done:

-Add shockwaves when falling or hitting a wall. (not likely to happen, as it
requires recoding the entire common1 in the character.)
-Change his Super Jump lines.

What needs to be fixed (for others, if they like):
-The Super Name timing and placement; I feel that they're a bit odd.
-Better Win Quotes, and possibly made with the actual MvC font.
-Add an MvC1 combo counter.
-I feel the shockwaves in his intro against Homer are a bit off.  They could
use some adjustment.
-Add Strikers.
-Add a Player 1, etc. Icon when someone is under the current screen, like it
does in MvC1.

Disclaimers:
(To JudgeSpear)
If you see anything Warner has updated in his Peter that you would like to
apply (IE A.N.N.A. Super), please use this Peter, as I've put a lot of work in
his perfection.
(To others)
Everything here is open source, and should be.  MUGEN is free, the characters
are free, so there should be no limits on why we shouldn't use other character's
effects, unless they are created from scratch by the author.

Thanks:

Wanrer:  For making the (infamous) Stolen Wario; without whom, I would have
never gotten into MUGEN, which in turn wouldn't make this edit possible.  Also
for being open source which made it possible for me to use his triple
Fart-Douken code.

Exodecai101:  For making the Guile Vs. Wario video that got me into MUGEN.

JudgeSpear:  For making the MvC edit to Peter, despite it not being truly MvC
style.  Also for introducing me to ActEdit, and for inspiring me to make Peter's
dash a wavedash.

GigaBowserX:  For adding CTI's to Peter and making a more suitable taunt.

Limited Moon:  For being open source so I could use his Ken-X's uppercut sound.

Matmut:  For letting me use his hard hit, level announcer, and hard hit floor
sounds, as well as using his MvC Win font for the Hyper Combo Finish names.

Beximus:  For making his amazing MvC characters and inspiring me to "finish"
Peter.  Also for letting me use most of his effects/sounds.

Splode:  For his excellent MvC creations, especially his Captain Commando, from
whom I took his Hyper Name display code, Super Jump code and the push block
sound.  I hope you don't mind me using your code...I tried emailing you, but
the message won't go through.

ClayMizer:  For letting me use his speech bubble sprite, as well as his code and
effects.

EvilSlayerX5:  For helping me with many coding issues, as well as letting me use
his push block code.

Buyog 2099:  For his Level announce code.  Thanks!

Erradicator:  For his Super Jump lines and code.  Tried sending you an email,
but it wouldn't go through.  Hope you don't mind.

Fuck You Section:

Everybody who uses this section:  It was funny when Kamek and Most_Mysterious
did it.

Contact:

Kevinmcconnellf_zero@msn.com is my email and MSN address.  If you want to help,
compliment me, or flame me, go ahead.

~Luigi-Master
---------------------------Original Documentation-------------------------------
May 10, 2007

Orginal artwork and MUGEN creation by: Warner el Tochix
MvC edit by: JudgeSpear

Look for updates at http://www.jsmugen.net/
Visit Warner's website at: http://www.freewebs.com/warner12/index.htm

============
Information:
============

These are the changes I have implemented:
*Improved the walking and running animations. No offense to Warner, but I cannot
stand walking and running animations where the body does not sway. Without body
sway, the animation looks wooden.
*Yes! Peter can combo now! He can even AERIAL RAVE!! Greatly increased
combo-friendliness. All of his weak and medium aerial attacks can combo-link to
each other now. As a consequence, I had to reduce Peter's attack to 80 to
offset this new combo-ability.
*The Peter Uppercut is now Peter's primary launcher (the other being his
crouching strong kick). Peter can even now chase the opponent in the air to
perform aerial raves.
*Anal Torch: now combos properly and can be performed in the air as a combo
finisher.
*Steroid Man: Even greater increase in effectiveness. Can be performed in the
air and even as a combo finisher in both the air and ground.
*Ipecac Attack: Pauses start the moment the move is executed. As a result,
the move can be used as a combo finisher or linked from a combo starter/linker.
*Changed Hyper backgrounds to those from Marvel vs. Capcom.
*Hyper Combo Finishes
*An all-new victory animation.
*Added custom intro against Peter himself.
*Shortened custom intro with Homer by 25 seconds. In shortening this intro,
I've also eliminated the desync between sound and animation when MUGEN is
paused during the intro, as well as the writhing-in-pain sound playing after
skipping the intro. Warner originally used one huge stereo wave file for the
writhing in pain intro.
*Greatly increased range of the Peter Smackdown attack.
*Three new palettes: Homer Peter (with yellow skin), Inmate Peter
(with orange jumpsuit and gray sneakers), and Navy Chief Petty Officer Griffin
(Khaki utilities).

=========
Movelist:
=========

Specials:
*Fart-douken: D, DF, F, x or y
      -This is Peter's weak projectile attack. It has low lag time and travels quickly.
*Bottle Toss: D, DF, F, a or b
      -This is Peter's strong projectile attack. It has high lag time, and travels slowly.
*Peter Uppercut (launcher): Hold DB, y
      -After launching an opponent into the air, immediately jump to chase your opponent in the air to perform aerial combos.
*Mule Kick (launcher): Crouch + c
*Jump Kick: F, D, DF, any punch. Press x or y to perform a second hit.
      -This is Peter's anti-air move. Peter is invincible through the first hit. The strongest, the Jump kick EX, takes off 1/3 of one Level of super energy, and its second attack knocks the opponent high into the air. Including its second attack, the Jump Kick EX lands three hits.high in the air.
*Peter Lunge (headbutt): D, DB, B, any punch
      -Peter's lunging attack. The strongest version (Headbutt EX) knocks opponents off their feet and consumes 1/3 level from the super energy meter.
*Super Jump: D, U; D, UF (forward); D, UB (backward)

Supers:
*Anal Torch (can be used as an aerial combo finisher): D, DF, F, x+y
*Steroid Man (now consumes 1000 energy instead of 330, can now be performed in mid-air and as an aerial combo finisher): D, DB, B, x+y
*Ipecac Attack (Level 2 super, -2000 energy): D, DB, B, D, DB, B, b

Choose your victory animation! Hold down the corresponding button just as you KO your opponent:

a = Who's the Big man now?
b = Giant Chicken
c = Tube Men
x = Quagmire Scores
y = Can't Touch Me

(Note, theese are a bit buggy, they may not always give you the winpose you want)

Aerial Raves:
=============

New for version 1.2, basic moves can no longer be comboed into itself in an aerial rave. 

Any weak or medium aerial attack can be chained together into an aerial rave combo. An example of this:
 
                   launcher, x, y, b, a, b, finisher.

The finisher can be Peter's strong aerial attacks (c or z) or a Super Move.


================
Version History:
================

v1.4 - (September 4, 2007) (by Giga Bowser X)
======================
-Added in Character Trait Identifiers(CTI's)
-Tweaked the Intro vs. Female characters. Instead of a long list of names, it now does it against characters with the Female CTI.
-Gave the Giant Chicken Win Pose a makeover.
-Edited Homer Pallete to make Peter a little more yellow.
-Tweaked Peter's Intro versus himself.
-Added in the Chose your victory animation commands
-Cleaned up a few sloppy areas of coding.
-New Intro
-Replaced his Taunt with a new one shorter and easier to make fun of.
-Fixed a few CLSN 1 over CLSN 2 problems

v1.3 - (May 10, 2007)
======================
-BALANCE FIX: Fixed Peter's Anal Torch being unblockable after the first hit. It was brought to my attention that a Pause controller overlapped the HitDef portion of the Super move. The opponent can block only the first hit, and the rest would connect because the opponent is still under the influence of the Pause controller. I deleted the offending Pause controller.
-BALANCE FIX: Reduced Peter's attack damage setting from 85 to 65. Since v1.2's dramatic aerial rave upgrade, Peter's become very combo-easy...and very damaging. Therefore, his damage overall had to be scaled down.
-BALANCE FIX: Can no longer spam the Aerial Strong Punch (Headbutt).
-BALANCE FIX: Aerial strong kick is now an effective aerial rave combo finisher.
-BALANCE FIX: Can now combo a crouching weak kick into a crouching weak punch, and vice versa.

v1.2 - (May 9, 2007)
=====================
-BUG: Fixed Peter repeating his Hyper automatically without consuming super energy after being hit by a light attack while performing that Hyper in question. This bug was due to a Super Armor code that Warner originally implemented. For now, the Super Armor code has been completely disabled.
-BALANCE FIX: Peter's Bottle Toss now has a longer recovery lag after throwing the bottle. It was too short for the damage the bottles dealt, and
caused a player to fill the screen with slow bottles due to the short recovery lag.
-BALANCE FIX: Medium air attacks have their startup lag decreased, facilitating smoother aerial raves. This also makes the aerial medium punch an excellent jump-in combo starter.
-BALANCE FIX: Aerial Rave chaining system revised. This makes for much cleaner aerial raves. See above.
-Adjusted the Homer palette's yellow skin and added the Nate Griffin palette.


v1.1 - (May 8, 2007)
====================

-BUG: Fixed the major Super Jump Bug. Peter can no longer cancel anything into the Super Jump.
-BUG: Fixed Peter being able to be hit while lying down dead during a 2vX match.
-BUG: Fixed Peter's 2P custom intro playing when he is under human control on the 2P side.
-BUG: Fixed being able to cancel out of the Ipecac Attack into another Super.
-BALANCE FIX: The Anal Torch super can no longer be canceled into the Steroid Man super. This means now Peter can only super-cancel once (Steroid Man -> Anal Torch only).
-BALANCE FIX: Slightly adjusted the ground.slidetime and ground.velocity parameters of Peter's crouching weak punch, crouching weak kick, standing weak punch, and standing medium punch to assist in combos a little better.
-BALANCE FIX: Peter's crouching strong kick (mule kick) is now his second launcher.
-Super Jumps are easier to perform. This was accomplished by detecting pressing Down as a 4 way direction (i.e. D, DF, and DB, would all count as pressing Down).
-BALANCE FIX: Peter's aerial strong Punch (headbutt) now knocks ground opponents off their feet.
-Darkened the yellow skin on Peter's Homer palette.


v1.0 - (May 5, 2007)
====================

-Initial release.

=================
Future Additions:
=================

*Recovery Roll and Push Block, if those features become highly requested.
*More Peter Griffin quotes
*New Supers.
*Add names of Hypers in Hyper Combo Finishes.

=============
Restrictions:
=============

None!

Character art and code is open source and public domain as long as you credit Warner and myself.

===============
Special Thanks:
===============

20th Century Fox and Seth McFarlane for Family Guy. This character would not exist without them!
Warner el Tochix for giving me permission to make a derivative work of his Peter Griffin character, and his outstanding spritework, bringing improbable characters to life in MUGEN!
The folks at Mugen-Infantry for their wonderful support and suggestions.
My innumerable friends at YouTube who supported me all these months in MUGEN.
ElecByte for creating MUGEN.

===================================
=                                 =
= Peter Griffin (MvC version 1.3) =
=                                 =
===================================

May 10, 2007

Orginal artwork and MUGEN creation by: Warner el Tochix
MvC edit by: JudgeSpear

Look for updates at http://www.jsmugen.net/
Visit Warner's website at: http://www.freewebs.com/warner12/index.htm

============
Information:
============

These are the changes I have implemented:
*Improved the walking and running animations. No offense to Warner, but I cannot stand walking and running animations where the body does not sway. Without body sway, the animation looks wooden.
*Yes! Peter can combo now! He can even AERIAL RAVE!! Greatly increased combo-friendliness. All of his weak and medium aerial attacks can combo-link to each other now. As a consequence, I had to reduce Peter's attack to 80 to offset this new combo-ability.
*The Peter Uppercut is now Peter's primary launcher (the other being his crouching strong kick). Peter can even now chase the opponent in the air to perform aerial raves.
*Anal Torch: now combos properly and can be performed in the air as a combo finisher.
*Steroid Man: Even greater increase in effectiveness. Can be performed in the air and even as a combo finisher in both the air and ground.
*Ipecac Attack: Pauses start the moment the move is executed. As a result, the move can be used as a combo finisher or linked from a combo starter/linker.
*Changed Hyper backgrounds to those from Marvel vs. Capcom.
*Hyper Combo Finishes
*An all-new victory animation.
*Added custom intro against Peter himself.
*Shortened custom intro with Homer by 25 seconds. In shortening this intro, I've also eliminated the desync between sound and animation when MUGEN is paused during the intro, as well as the writhing-in-pain sound playing after skipping the intro. Warner originally used one huge stereo wave file for the writhing in pain intro.
*Greatly increased range of the Peter Smackdown attack.
*Three new palettes: Homer Peter (with yellow skin), Inmate Peter (with orange jumpsuit and gray sneakers), and Navy Chief Petty Officer Griffin (Khaki utilities).

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

Aerial Raves:
=============

New for version 1.2, basic moves can no longer be comboed into itself in an aerial rave. 

Any weak or medium aerial attack can be chained together into an aerial rave combo. An example of this:
 
                   launcher, x, y, b, a, b, finisher.

The finisher can be Peter's strong aerial attacks (c or z) or a Super Move.


================
Version History:
================

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
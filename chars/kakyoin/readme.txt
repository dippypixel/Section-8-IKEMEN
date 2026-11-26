
NORIAKI KAKYOIN MUGEN PORT Unstable Version

A character from the manga, anime and videogame JoJo's Bizarre Adventure,
produced by Hirohiko Araki.

Sprites ripped from its Playstation and Dreamcast games, using EPSXE,
Chankast, Camtasia (www.snagit.com) and artmoney (www.artmoney.ru)

Sprites cleaned and rendered using Adobe Photoshop CS2 and ULead
GIF Animator.

Converted to MUGEN format by Orochi Herman (oherman (at) gmail.com)
Made at The Riot of the Blood Rehabilitation Center (http://rotb.mgbr.net)
A division of the Midare no Chi Technologies, LLC.
Proudly made in the Philippines.

Hello people! This is my 7th, or 8Th...or whatever MUGEN attempt on making
a character.

Bishonens have the wacky reputation of being mistaken as girls. Well,
that's because they're beautiful boys. The most prominent one we know is
known as Kakyoin. Well, here he is!

Character Updates --------------------------------------------------------

- Added the missing projectiles in heirophant finish. It is now more
  powerful, and the timing for it has been slightly improved to be like
  the original. It may be subjected to more tweaking to further improve it.
- Changed sprite alignment of the alternate emerald sprites to be more
  consistent to the original.
- Tie Wrap Snake is now mapped to the XYZ buttons, and works perfectly.
- Altered characteristics of Mystic Trap for non-JoJo's Venure mode. Mystic 
  Trap now behaves differently, as it expires faster, but lasts longer when.
  it hits. It also eliminates a possible infinite combo of hitting a person
  with crossing-up mystic traps (performing it while jumping forward, ad 
  infinitum).
- Updated Gouki.act to turn his hand and foot color to red.
- Updated anime.act to color the Stand yellow.
- Added Virus.act pallete made by Berserk #1, with slight adjustments.
- Corrected echoing hitsound for his air hard punch attack.
- Removed hitspark for Tie Wrap Snake, which was accidentally added. The grab
  hitsound will be available only outside crossover mode.

- Returned hitspark for Oshioki no Jikan, as the original would look like.
- You can now ditch during Standing Hard Punch/Attack, like in the original.
- Fixed the hitspark sprites to reflect the correct intensities per hit.
- Fixed an issue with his Dio winpose where he'ld prematurely do his "DIO!"
  pose without the vocals. It was caused by a wrong trigger in the var
  countdown. Also, his stance anim now has randomizations added, and further
  enhanced. The stance anim randomization code was not there before when it
  should've been present.
- Oshioki no Jikan now requires the Stand to come in close range. Gone are the
  days when it only needs to touch the enemy from afar to connect.
- Reverted command of Tie Wrap snake to the original B HCB command, but still
  on the kick button. They'll be mapped to xyz eventually, its just that I
  encountered problems doing that before.
- Tweaked tie wrap snake to have original characteristics. One is that when
  you hit the tied enemy from the other side, the Stand will turn the victim
  away after the hitpause. The other is that it will not invoke targetstate
  when the enemy has no collapse animation and is airborne, and in the middle
  of a hitshake.
- Tweaked moving getup since this part was affected by the ditch animation addition too.
- Tweaked the speedlines cutin screen to match the original, used by all the
  super portrait, super finish, and lose screen backgrounds.
- Fixed a graphical mismatch where the Stand's super spark binds after the
  super screen in JoJo's Venture mode.
- Fixed more sprite errors using wrong colors, in his standing kicks.
- Permanently resolved an issue where his "hit upon guarding impact" animation
  does not play. In the original, it was supposed to animate even on hitpauses.
- Adjusted jumping CLSN to match the original.
- Added coding to make sure that Kakyoin doesn't turn up on the other side 
  of the enemy in extreme corners, when the enemy has his/her back on the wall.
- Added p2facing to all appropriate hitdefs, as per original specs.
- Removed all erroneous forcestand parameters in hitdef.
- Fixed an issue in his falling down animation where he directly goes to the 
  liedown state after falling, not playing the hit-the-ground anim. This is
  a consequence of using sysvar(0) for a general-purpose variable. This has
  been fixed by always setting sysvar(0) to 0 upon initial parsing of the
  gethit and falling down state.
- Adjusted Heirophant Green palfx sinadd so that all colors would rise equally.
  Previously, the green component had a 1.5 value multiplier, and this would
  have a distorted effect for color schemes where Heirophant Green didn't have 
  green color on the inner body sprite.
- Added more triggers to the helper guarding explod to eliminate an issue (or
  at least attempt to) where the guard explod displays even on attacking states.
- Added CVS2 lifebar portrait to support the CVS2 lifebar by SophieX.
- Flipped frames for ground recovery action (I forgot about it. /wah)
- Removed cornerpushes when enemy is caught with tie wrap snake, like in the original.
- Transferred reversaldef capabilities of tie wrap snake to mystic trap, where
  it is more appropriate. if it touches a helper or even an invincible attacking
  state, it will hit the enemy. It is also confirmed that it can destroy projectiles,
  but cannot be destroyed by regular or super attacks, except for Stand attacks.
  The problem is, there is no definite way to determine if the attack is a Stand
  type or a mere projectile. Making the trap vulnerable reduces his effectivity, but
  keeping the invincibility tilts his gameplay balance.

- Hopefully this is the last graphical update for him, for now. I can now work
  on the cns issues, and add more moves, with the sprite color phase out of the way.
- Changed Melty Blood icon to something better. ;)
- Added two new palletes from me, gouki.act and blueice.act
- Added 1 new pallete by Messatsu, called evilscientist.act
- Corrected some wrong usage in sprites.
- Tweaked sprites color usage.

- Adjusted ditch animation to the new frames added.
- Tweaked inconsistently colored sprites to look uniform.
- Completely revamped sprite color usage, and added lots of missing frames.

- Reduced hard kick damage as it was too powerful.
- disabled guarding in his dash states, to prevent accidental guarding,
  which is not supposed to be done.
- Restored functionality of echoing KO sound effect for the emerald splashes.
- Corrected sprite errors in crouching hurt frames.
- Remade Touhou portrait. (Should look better now)
- Heirophant Finish will now keep HG in the screen. (No more pan-outs)
- Added more safeguards for delayed intro so that no hanging can occur under.
  normal circumstances
- Added restriction of movement so that no moves can be performed beyond roundstate 2
- Redone basic CLSNs.
- Removed stray pixel in his turn frames.
- Probably fixed a possible occurance of animation hanging if he is knocked 
  down.
- Adjusted blood spark timing to extend to long version of super finish
  screen.
- Migrated palfx activation of super screen to variable for more flexibility.
- Fixed wrong SFF alignment in the JV super spark.
- standing medium punch animation has been remade.
- special moves now has the correct triggering for the echoing hitsound.
- Tweaked his new air hard kick to animate smoothly.
- Animation for lose screen finish now extends if Kakyoin wins the battle.
  Lose portrait play should not be affected by this change and should blend
  well with existing code. (but lose portrait standard may be subject to adjustment)
- Fixed Oshioki no Jikan victim not moving on enhanced animation.
- Rewrote echoing SFX triggering to be more precise.

- Tweaked CLSN for Tie Wrap Snake victim for balancing issues.
- Tweaked lose portrait activation. It should activate in more than just
  his attacks.
- Migrated all super atatcks to statedef 3000 and above, for maximum
  compatibility with certain JoJo characters.
- Retouched custom lifebar portraits thanks to Walt.
- Implemented Language Select variable.
- Added environment SFX in Oshioki no Jikan. Available in English and Japanese.
- Fixed Basic Stand attack not being terminated upon special/super move
  startup (reported by Koyotae)
- Fixed coconut intro hanging. (reported by Koyotae.) Should happen a lot less.
  Now working on a permanent solution for this.
- Implemented crouching sliding kick for Kakyoin
- Ditch afterimage now accurate to the original. This eliminates the afterimage
  anomalies prevalent before.

SOME BUGS INTRODUCED

- Echoing SFX is currently broken due to a variable usage migration. This should
  be ironed out next release.
- If Kakyoin is defeated in the middle of team play, and his partner is defeated as well, 
  the lose portrait possibly may play, if the enemy is in the hyper move states 2000-4999.
  Can someone confirm this?
- Characters like Naok-m and other variants may impart constant nothitbys that will
  nullify the purpose of being wrapped in the Tie Wrap snake. A workaround has been
  made to address this issue, but confirmation on whether the solution works is unclear.


- Fixed Stand jumpin anim bug introduced about two releases ago. Should be 
  added with a rush-in variant accurate to the original soon.
- Tweaked coding for extension helper, to prevent ghosts. Meaning persisting
  extension helpers that stay even when their parents are destroyed.
- Improved triggers for basic Stand attacks. Should stop multiple Stand instances
  cold.
- Fixed some basic chaining error when a Stand is active.
- Added invincibility in intro states and in stance when ctrl = 0 to prevent
  intentional cheating by AIs that attack before the round starts.
- Kakyoin can now ditch(roll) while dashing back. Just like in the original.
- For Inactive Stand Mode, Stands dissapear now if you get hit. This should
  reduce a lot of cheap tactics.
- Corrected Guard FLag for physical (non-stand) air attacks
- Good news to owners of special EFZ/Touhou/KOF2k screenpacks! Kakyoin now
  supports popular special portrait standards! If you want me to
  support yours, please drop me a message plus the portrait requirements,
  and I'll look into it. If it clashes, well, you gotta work it out.
- Adjusted guarding attributes for Heirophant Finish (must be blocked low)
- Corrected some sprite alignments for some objects.
- Now you can't guard anymore in inactive Stand Mode when a Stand performs
  a special move.

- Implemented coding that prevents multiple Stand instances.
- Rewrote Stand explod system AGAIN.
- Reassigned some vars to prevent untimely clashing.
- Preliminary implementation of Heirophant Finish.

- Tweaked and added new intros. :P

- Called off the conversion of explods to nested helpers due to an unforseen
  coding flaw that will be fixed in tomorrow's release, hopefully.
- Resolved crashing on multiple victims of Tairap Snake. It can now also
  catch multiple players and restrain their movement! :D
- Regrouped Stand sprites, and replaced all existing Stand sprites with better
  ones, as well as adding new ones.
- Updated Oshioki no Jikan to use the same sprites as the original. Some graphical
  issues has been introduced, but should go away after the conversion to
  nested helpers.

- Basic attacks now have accurate damage values. More stuff to be added.
- Basic animations have been tweaked to match with the original specs.
- Some attack repeating should no longer happen.
- Installed new explods and screens. Thanks to Warusaki, who gave them and
  the technique to acquire them.
- Sprite Modernization completed. 

- Removed spark that wasn't supposed to appear in the original (Tairap Snake)
- Tairap Snake should now be visually consistent if the snake head encounters
  a counterattack hitpause. (obvious with EFZ characters)
- Added attack delimiter for Tairap Snake so that it wouldn't catch enemies
  if it is winding back. It is only supposed to do that when it rolls forward.

- Implemented Tairap Snake.
- Made partial fixes. They'll be completed in tomorrow's release.

- Implemented main parts of Inactive India's Arm
- Implemented Inactive Emerald Splash
- added negative edge
- Partially implemented 20m Emerald Splash
- Updated sprites with correct axis from PSX ripping.
- Updated COllapse animation standard.
- forgot to turn other stand physics to S, resulting in a continuous dash
  during dashing attacks. Fixed.

- Disabled some minor coding while debugging some mysterious pos freeze during mystic trap

- Mystic traps do not negate anymore when Kakyoin guards. (whew!)
*- Implemented different behavior of mystic traps between the two games.
- Reimplemented enemy's violent movement during oshioki no jikan. It was
  previously non-functional since the WinMUGEN migration.
- Improved non-lose-portrait exposition of enemy up-close during Oshioki
  no Jikan. This will be the default code executed if the enemy does not
  have the lose portrait system.

- Added a new animation frame for a new LV3 move, Hierophant Constrictor.
- Added ability for mystic trap to be cancellable from air attacks
- Enemies cannot detect anymore when Kakyoin sets a Mystic Trap. They won't
  go into guarding state until the trap activates.
- changed the statetype routines in Mystic trap so that Kakyoin doesn't go to
  his croch-to-stand anim after performing Mystic Trap from a cancelled crouching
  attack.
- Added Hit Under hurt frames found in the original, as well as implemented
  their proper displaying conditions.

- Adjusted mystic trap to reflect the correct KO sound echo when Kakyoin kills
  an enemy with his own attack.
- Adjusted SprPriority to match original specs.
- Minor adjustments in the animation to correct an insignificant animation flaw
  found in the original. The flaw was that, Kakyoin won't change animations in a super
  move until the superpause ends. Enhanced animation mode will fix that, while original
  will emulate that flaw for the sake of accuracy.
- Animated Kakyoin's aerial stand attack with the same frames as his aerial 
  light punch.
- Oshioki no Jikan now gives the exact damage as the original. No more overpowered shit 
  for this attack! :D
- Fully implemented Mystic Trap. Now only the correct Stand disposition is needed to
  galvanize the code.
- Allocated states for future super moves.

- Rerouted var(11) to be used for Mystic Trap.
- Employed an additional 2 more variables for mystic traps.
  Spent 1 working day perfecting mystic trap. (still in progress)

- Fixed a sprpriority error in his super sparks that caused the Stand sprites
  to overlap the super spark.
- More optimizations to the super spark/bg module to become completely portable
  among characters. This means the codes can be easily pasted into characters
  and all it is needed to be called is one helper state controller. It also
  uses independent variables so that only one code group can be edited to fit
  the target character.
- Tightened velset for common states. 
- Updated Kakyoin's life rating to 1120. The default life of a JoJo character is 160.
  Multiplied by 7, for MUGEN standards, it is 1120. All attacks from JoJo will be 
  mutiplied by 7.
- Fixed Stand timing in the initial part of Oshioki no Jikan. Also syncronized 
  animation timing with the original.
- Made preliminary addition for the move Mystic Trap.
- Made a permanent workaround with the buggy palfx in the JoJo2 super screen, and
  it looks a lot accurate. Also retimed and reprogrammed the super portrait shaking.
- Move super spark for Oshioki no Jikan to the Stand state, in order to be streamlined
  when tandem attack becomes available.

- Integrated super portrait codes into Super BG helper to prevent redundant coding.
- Started moving redundant Stand codes into statedef -1. Changed all necessary Helper 
  parameters to reflect keyctrl=1, which will force the engine to make the helper 
  parse statedef -1. To compensate for this, all helper states now has ctrl = 0. This 
  will be changed once actual Stand attacks are to be coded.
- Improved JoJo2 super screen timing, as a workaround for a MUGEN bug. This is a big 
  headache.
- Improved and optimized lose portrait coding. Final optimizations will take place when 
  timing for ko slow from joJo can be emulated in MUGEN, if not, may introduce more 
  massive modifications.
- Replaced Kakyoin's lose portrait with the 4-panel lose portrait standard and updated 
  the necessary codings and air entries accordingly. He uses the 9000 standard lose 
  portrait codings now.
- Improved variable parsing for Heirophant green side in Oshioki no Jikan. Now, 
  variable parsings occur within the helper's var system, no longer with kakyoin's, 
  greatly reducing variable usage within Kakyoin.
- Updated old Maruta's coding of the lose portrait for Eimi Ohba with optimized 
  triggers, which prevents redundancy on the parsing. This state now also uses 
  4-panel explods instead of one whole sprite, which streamlines the state further.

- Added alternate medium kick, edited with help from Walt and Ryouga Lolakie. >:P 
  This animation appears as a close version of Standing medium punch.
- Added collapse animation and improved lose animation, as well as it is axis-locked.
- Added varying animations to his standing kick animations, using the new frames.
- Added targetdrop to Oshioki no Jikan for more compatibility during teamplay.
- Tweaked oshioki no jikan timing and velocities. It's nearly arcade-perfect now, 
  with the exception of the Stand sprites and secondary Stand entry (whcih will be 
  dealt with later). Victim states are next to be fixed.

- Updated Super BG cloud to the one in the original.
- Updated Lighning spark in the JJBA Super Screen as well as the JJBA Super Spark.
*- Retimed JJBA super screen.
- Imported finish border from the original game
- Added proper push guarding explod
- Retimed certain parts of oshioki no jikan, and utilizing long-laid-out lose
  portrait standard.
- Added push guard explod and tweaked push guarding more.
- JoJo1 elements fully integrated. Updated KO effect, reintroduced JoJo1 visuals, and
  added JV super spark

- Reinitialized with the arrival of the Chankast DreamCast Emulator.
- Started to implement playmode variables for flexibility.
- Implemented Button Layout selection
- All states within override.cns uses sysvars now.
*- Kakyoin's Japanese voices and extra sounds are now controllable via variables.
*- Normal move chaining are now controllable via variables.
*- Crouch LA in original mode, which is crouch MK in crossover mode, now changes values
   and specs.
- Modified sound effects in some of his moves.
- Implemented moving super portrait
*- You can now choose between JoJo1 and JoJo2 effects.
- Changed value of Super sound chime to make variation simpler.
- Installed variables that will allow customization of super sound, ko chime,
  and various screen differences between JV to JJBA
- Installed variables that will allow customizations to the animation quality.
- Upgraded whole variable system to accomodate New Kakyoin playmode.
- Gethit sprites, ground to get up are aligned now initially. They will be axis-locked later.
- Imported ditch limit from Shadow Dio.
- During getup, Kakyoin will turn to the enemy's direction in the last frame before the crouch
  animation. This is the original spec.
- Modernized some old variables into expressions.
- Recalculated Axis for moving jump and walking animations, as well as velocity and timing.
- Made enhanced animation of moving jump landing.
- Added even more moving jump animation frames thanks in part to an accident in ripping.
- Imported echoing hitsounds from Shadow Dio
- Imported and enhanced push guarding code from Shadow Dio. Works and may depracate 2 helpers
  previously used for this purpose.
- Improved mobility in his ditch move. You can regain control earlier than the animation duration.
- Intro jump-in now exactly like in the original.
- WIP color changing and improved pallete system.

- Pointed out the stand's overpowered attacks by Legato. Stand damage is
  now halved, but the guard damage is still the same.
- Did a really major revamp of Kakyoin's sprite color usage. Because it
  seems that CAPCOM has developed their PSX game engine to be exactly like
  CPS2, all JoJo chars enjoying color usage of more than 16 colors are now
  limited to exactly 16 colors. Kakyoin uses around 20 colors. This had a
  devastating result to some characters (namely Dio and Shadow Dio, and ALL
  stands except Iced's) and made them butt-ugly. This is one flaw I took
  time to repair. Heirophant Green is easy to recolor due to obvious
  parts and markings. Also I determined his color usage by watching the
  CPS3/DC version.
- Fixed the Heirophant Green graphic breakup during the superpause of
  Oshioki no Jikan. This is because the glowing green effect in Kakyoin
  is the main sprite. The Body parts are explods with OwnPal as 1.
- Improved the glowing effect of Heirophant Green.
- Polishing the Companion Stand mode currently modeled from Kasiwagi
  Kaede. Still not implemented due to butt-ugly bugs still yet to be
  resolved. Among the bugs are the proper velocities to be passed to the
  wielder, proper gethitvars and other shit.
- Super face Portrait now with proper colors. Proper color swaps are now
  possible.
- Changed his name to "Noriaki Kakyoin". It was "Kakyoin EX" previously,
  because of before, when there was a release of him by Subaru.
- Fixed some landing bugs where he dips into the earth.
- Tweaked Hit Velocities.
- Recalculated Doubleres Scaling Factor because it appeared inconsistent with
  the arcade version when compared side by side. This problem no longer occurs
  with the linux version of MUGEN.

Previous Updates ---------------------------------------------------------

- Adopted animated hitshakes from my on-going project, Hsien-Ko. it
  seems whoever programmed JoJo's Venture had a working experience in the
  Vampire series of games.
- Implemented hitting animations.
- Corrected an incorrect coding in the winpose
- Implemented a first in MUGEN-- the 2nd type of super screen in the
  second version of JoJo's Bizarre Adventure. :)
- Found a shorter method of drawing explods for synchronization to
  animation elements by using animelemno triggers. This eliminated the
  longhand coding of explods, as previously found in Setsuna.
- Made it that Stands inflict guard damage, but won't cheese kill with
  it. >:P
- Stands have hitoverrides to prevent from being reversed. (and besides,
  Stands have more priority, eh? >:P) Also has attributes that prevents
  it from being reversed improperly.
- Expect an update soon for Kakyoin. But right now that he is done
  basically, now it's Sakura's turn.

Character To-Do's --------------------------------------------------------

- Specials
- More Supers!!!
- Stando! (but it's not stable, and Kaede kasiwagi doesn't have the full
  system working!!)
- Rerender Heirophant green. The web part is also color green, and
  should be included in the part where palfx sinadd affects it.
- Add frames to Heirophant Green's landing anim.
- Find correct Axis displacements for Mystic Trap.

What is here that was NEVER done in JoJo PSX (and JoJo CPS3/DC?) ----------

- New Basic attacks
- Limited chaining ability even outside Active Stand mode.
- Merger with New Kakyoin. Attacks found in Shin Kakyoin are now found
  as well in normal Kakyoin, like Shin 20m Emerald Splash.
- Proper velocities and some other shit I can't explain fully.
- Mixed voices.
- Put some voices never used in the original game into actual use.
- Some sweet stuff.
- New edited attacks from Rubber Soul.
- Integration of some of New Kakyoin's elements.
*- In the 6-button layout, you can use the kick buttons too for Mystic Trap.
*- Move voice quotes can originate from Kakyoin himself. Some of his Stand-based
   attacks plays voice quotes from the axis of the Stand.

Stuff that were changed from the original out of necessity/preference -----

- Color Sine in Heirophant Green is free from anomalies (Seen in Tairap Snake)
- Mystic traps can be negated by normal projectiles, when Stand attacks
  should normally negate them. There is no real way to implement the proper 
  specifications of Kakyoin's Mystic Trap in MUGEN.
- Remote Stands CANNOT be thrown nor reversed. Chaca's Forget me Not won't
  work properly. This is also coded as such to prevent abusive reversaldefs.
- Kakyoin's Stand in Companion Stand mode uses his main body sprites as actual 
  CLSNs, with the Stand as a mere helper.
- Heirophant Green sprites are split into two. This is to emulate the proper
  effects of the color sinadd in the Stand.
*- Erroneous camera focusing that occured in the original have been eliminated.
*- When kakyoin is hit by a custom state, the Stand won't just dissapear.
   it'll go through a hurt-to-dissapear animation.

What will never be done --------------------------------------------------

- Anything that can't be done or what.

Storyline ----------------------------------------------------------------

Think of Noriaki kakyoin as a typical 70-80's slacker guy who travels
into Egypt. He suddenly realizes his gifted power, called the Stand.
Dio Brando summons him to fight for him and kill Jotaro Kujo, by
brainwashing him with one of his buds made out of Dio's very own cells.

Jotaro defeated Kakyoin, and destroyed the buds, freeing him of the
slavery. Kakyoin joins the side of Jotaro in the quest to destroy Dio
Brando, who cursed Jotaro's mother with a plant Stand, which was
tormenting her. At first, he did this to attone for his amiguosity
that caused him to be controlled, but after being blinded by NDool,
and recovering, he realizes that there's more worth to himself than 
he ever realized. He has completely fulfilled himself, even with
death at the hands of Dio Brando.

Stands became prominent after being discovered by Dio Brando, who then,
had his head sewn over Jonathan Joestar's body. At the same time, he
discovered his ability to stop time, slowly. The reason why the Stand
also aroused in Jotaro and in the Joestar bloodline is because of the 
body of Jonathan, who has a link to all his bloodline descendants.

Storyboard ---------------------------------------------------------------

His storyboard continues from his tangent where he "supposedly" died
in his ending in the airplane. He thought he was going to die.

But he ended up in a hospital. In a few days, he has fully recovered.

His quest to prove himself that he can do everything and discipline
himself continues...

---------------------------------------------------------------Instructions:

Set the destination unzip directory at the "chars" directory of MUGEN.
Then, specify a subdiectory called "kakyoin".

----------------------------------------------------------Gameplay Overview.

- To be added when more moves are in.

----------------------------------------------------------------------Moves

Be wary that MUGEN uses a Sega Saturn-type of controls; X,Y,Z, A,B,C,
and that some buttons are not available for all characters.

If your button orientation is at A-Z, please change it to X-C. Well,
don't blame me, it's the configuration I got when I first downloaded
MUGEN.

My characters cannot have less or more than 6 buttons. I know, it's my
taste of perfection. >:P

NORMAL MOVES -------------------------------------------------------------

- Ditch (x+y+z)
Kakyoin will move to the other side, avoiding many kinds of attacks.

- Dash (F+F)

SPECIAL MOVES ------------------------------------------------------------

- Emerald Splash (QCF P)
heirophant Green crosses arms and unleashes emeralds. For Inactive stand
range, this is a bit short-ranged. In Active/Remote Stand capacity, it
reaches the full length of the screen. The emerald ordering may vary
greatly, and can deal as much as 8 hits.

- Mystic Web (QCB any button, release button used to execute to deploy)
Heirophant Green does a maneuver. Hold the button to delay the deployment.
Let go, and a web of his tentacles will shock the enemy. In most cases, this
will knock down enemies. Enemies cannot sense this move until it is released.

- Tie Wrap Snake (or Mystic Cloak) (B, HCB + punch, hold button to delay, release to deploy)
Heirophant Green unravels from its torso, and once it catches a target, it
will wrap around the enemy's legs and chokes the adverary. In inactive mode,
Kakyoin can join in and punch or kick the enemy for added damage. In
Active mode, press any button to fire emeralds towards the enemy.

THROWS -------------------------------------------------------------------

- (FWD + Z)
Heirophant Green holds the enemy, then hits him/her with emeralds.

- (FWD + C)
Heirophant Green holds the enemy, but Kakyoin punches/kicks the enemy
in rapid succession. Similar to CPU/Boss Iced's throw.

SUPERS -------------------------------------------------------------------

- Oshioki no Jikan (x,x,f,y,z)
Typical raging demon, but MORE painful. If Akuma/Ryu/Sakura/Ken's
raging demon (or Shun Goku Satsu) hits the pressure points, well, the
Oshioki no Jikan hurts from within! The Stand enters the body, and
inflicts damage from inside the body.

This is because of the ability of Heirophant Green (and also Silver
Chariot) to be reduced to whatever size.

Want to know why I implemented this first? >:P it's because it is the
phat move I've ever seen...>:P

- 20m Radius Emerald Splash
Dealing as much as 27 hits, this is a very dangerous move especially
that you can pull this move right after shocking an enemy with the mystic
trap. Though not very damaging, and requiring close range to hit effectively,
the damage it deals on full contact is not to be laughed at.

In active mode, you can vary the emerald directions. Hold back to spread 
the emerald radius, or hold forward to direct them horizontally.

- India's Arm
Heirophant green's tentacles extend greatly towards the enemy. You can
actually control the direction of the tentacle on where it would go.
It can attack behind, it can juggle, it can sneak! :D

If situated downward, it must be blocked high. If it is under the screen,
it must be blocked low. If it is behind you, block it, dammit!

- Heirophant Finish
More tentacle attacks before the 20m emerald splash. This attack is
even more powerful than the regular 20m Radius Emerald Splash, and 
sometimes insures a centered target for a full-frontal Emerald Splash.

- New 20m Radius Emerald Splash
Capturing the enemy using a large Mystic Web, Kakyoin jumps into the
background and pellets the enemy with Emerald Splashes. This move is a
little weaker than the regular 20m Emerald Splash, but insures 100% hitting
damage.

In team play, partners can join in and attack the enemy while captured in
the mystic web. The emerald splashes that comes afterwards are also capable of
nullifying all kinds of projectiles, and can also hit enemies not captured
by the mystic web.

- Heirophant Constriction
Using Heirophant Green, the enemy is choked and crushed like a victim of a 
snake, namely, a boa constrictor. Heirophant Green surrounds the enemy like 
the mentioned snake. This move has slightly better effectivity over Rubber
Soul's Coconut Backbreaker.

- Heirophant Takeover Possession
Heirophant Green enters the enemy and uses the victim as a sort of meat 
shield. You cannot attack during this move. Depending on the character, 
your victim may or may not attack. The move ends when the timer depletes 
or the enemy has been killed. This is only applicable in Team Play. 
Outside teamplay, this will cause your enemy to fall from the stage and is 
encountered with scenarios to get back to the stage. >:)

- Heirophant Binding World Type A: Binding Wrap
A move that must be performed upclose, victims of this move will be enclosed 
in mystic webs, and will be attacked repeatedly by emerald splashes from all 
angles. This is a move that requires 2 super combo stocks.

- Heirophant Binding World Type B: Environment
Requiring 3 levels, this move surrounds the whole stage with mystic webs that 
will shoot emerald splashes at random. Only other stand wielders can knock out 
the webs with their own special attacks, but normal characters will simply get 
hit trying.

Even though the binding world will still be active even if you take a hit,
if your stand crashes while this move is active, the binding world is
destroyed, so be careful.

- heirophant binding world type C: Barrier
A remote-stand only super, you can weave a pattern that will serve as your
barrier. As long as you are inside it, you are safe from EVERY kind of attack.
(Including I-No's CPU-only super!) The barrier is stackable, meaning you can
weave several layers for protection, as long as your super meter allows. To
complete the loop, overlap the barrier to initialize it.

----------------------------------------------------------------Some bugs:

- Kakyoin's stand has a constant Explod. It changes with the animation
  element. During the Oshioki no Jikan, the explod may be drawn a tick too
  far from the correct point, particularly during the super pause.
+ Fixed by adding supermovetime = 1. It will move in one tick during the
  superpause, enough time for the explod to align.
- Kakyoin's stand are encoded as S,NP. This is to prevent untimely
  reversals, like those found in Moriya and Haohmaru. 
- When under superpauses or pauses, the graphics of Heirophant Green
  breaks up. This is a bug by MUGEN itself.
+ Problem solved by using helpers instead.
- Mystic traps can be negated all at once when it should be only one at a time.
- Mystic traps has the strange ability to negate projectiles by themselves, and
  not being cancelled. Special/super attacks should be able to negate them.
- If you try to catch two people with tairap snake in team play, your game 
  will crash!! 
+ It was caused by targetbind. Fixed, and still able to restrain players. :P

--------------------------------------------------------------------------

Please visit http://rotb.mgbr.net for more of my characters.

If you have any concerns, comments, bug reports or suggestions, you may
PM me or post such concerns at the following forums:

http://www.mugenguild.com/forumx

You may also post such concerns in the ROTBRC BBS.

CREDITS!

VK for the usual help. Most of his stuff he gave me for Shadow Dio also
applies for Kakyoin.

Maruta also deserves a space here for encouragements, and for telling me
the real name of Shadow Dio. :) Some of stuff that he contributed is in
Kakyoin as well.

Kudos to MBS for making the first JoJo character in MUGEN, Hol Horse. (I
borrowed some elements in him too. :) hehehe!)

Douglas Heung for his JoJo's Venture FAQ, where the move lists were
acquired.

Legato for many inputs regarding Kakyoin.

NeoGouki for nagging me how wrong it was to resize the chankast window
before ripping. >:P

Flowagirl for the support and hosting.

Kenshin for helping me figure out mathematical stuff and a lot of complex
calculations.

Ryouga Lolakie and Walt of Mugen Guild forums for helping me out with 
editing Rubber Soul's sprites into kakyoin'sm as well as the special
portraits.

XGargoyle for teaching me how to use artmoney.

y.y for helping me and inspiring me to make JoJo characters, just as I
helped him by giving feedback. He also taught me various tricks to
rip characters from the PSX version, and I will be eternally grateful 
to him for that.

Bad Darkness for reference in certain Stand implementation in MUGEN.

Warusaki3 for donating to me many JoJo sparks and effects, really useful
stuff! Also shared to me his ripping techniques, which I got almost all
codes now to work. (Had problems finding them at first, though.)
He deserves a lot of appreciation for this.

Koyotae also for feedback and valuable bug reports.

The people of IITRAN and IIChan for answering and suggesting terms for
the SFX translation.

Berserk#1, Corntortilias (Koyotae), DJ-Van for palletes.
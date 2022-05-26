Advance IntroEd Readme

About
@ -------------------------------------------
This program is for editing the various stuff in the intro sequence of the game and what you begin with, I decided to merge it all together.

Below, I'll give a brief summary on what each section is for.

Game Intro Settings
@ -------------------------------------------
Song - This is the song number played in the intro sequence. For a list of song values please look in Advance Map's Header view under map songs.

Pokemon - This is the intro Pokémon. The way this tool edits the intro Pokémon is quite different from MewThree's IntroEd. In IntroEd, there's a few unsafe writes to the ROM from what I've found out. Previously, only a few of a the 3rd generation Pokemon can be used because I worked with bit shifts, but then I found a better way that let's you pick any. So, now, any pokemon can be used for the intro ^^

Pokemon Cry - This is for Fire Red & Leaf Green only. Allows you to edit which Pokemon's cry you'd wanna hear on the titlescreen after pressing the A or Start button.

Truck Settings
@ -------------------------------------------
This removes the Truck Animation in Ruby, Sapphire & Emerald. Originally, Mastermind_X released information on how to do this but the result is there'll be no background sound played. HackMew also worked on a similar patch that removes the truck but contains background music. I thought I'd do my own too and I succeeded from using Mastermind_X's as base.

In the default song box you enter sappy song values. This are the songs available in Advance Map's Header view under map songs. 0 means no background music. You may notice for both the intro song and the truck removal background music that only certain songs can be played. This is because I worked with bitshifts - bit shifting to 1, do a bit of calculations and you'll know why ;)

The rest are self-explanatory. There's the values for the Start Map, PC Item, and the money you begin with. These can all be edited easily - finding them was hard XD Other stuff to add? Well, if you have any ideas... Feel free to let me know.

Greetz
@ -------------------------------------------
Mastermind_X
HackMew
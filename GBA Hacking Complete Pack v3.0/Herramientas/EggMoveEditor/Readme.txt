______               _                
| ___ \             | |               
| |_/ /___  __ _  __| |_ __ ___   ___ 
|    // _ \/ _` |/ _` | '_ ` _ \ / _ \
| |\ \  __/ (_| | (_| | | | | | |  __/
\_| \_\___|\__,_|\__,_|_| |_| |_|\___|

Egg Move Editor
Version 1.1.0 - May 31st, 2009
By FinalZero

=================
===   About   ===
=================

This program edits the egg moves of a generation III Pokémon game. Egg moves are the moves that a pokemon learns when it hatches from a egg if its father knew the move (excluding those of TMs).

English and French language games are supported. If you would like for support of generation III games in another language to be added, or the program's interface to be in another language, send me a PM or an email and I'll then work with you to add the language support desired.

=====================
===   Operation   ===
=====================

Open File - This button opens a rom to edit.
Save File - This button saves the changes that have been made so far.
Export List as .txt - This button saves a .txt file with a list of all the egg moves displayed currently.
Modify Entry - This button changes the entry selected to what is chosen in the drop down box.
Insert Entry - This button inserts an entry of what is selected in the drop down box. The final entry of the list will then be deleted because the length of the list must stay the same size. I'm still researching whether it's possible to repoint the list.
Delete Entry - This button deletes the entry selected. Again, since I don't know if it's possible to change the size of the list, it moves all entries below the selected one up, and then changes the last one to "????????". Such a procedure achieves the same effect.

==================
===   Errors   ===
==================

You may get an error about .dll files missing. Four .dll files that are needed for this program to run, but that aren't included with Windows by default are:
1) vcl100.bpl
2) rtl100.bpl
3) borlndmm.dll
4) cc3280mt.dll

All of these files should be included in the .zip archive of every release of this program.

===================
===   Contact   ===
===================

New versions of this program (and old ones too) can be found at http://jc.tech-galaxy.com/.

I may be contacted at FinalZero_17@hotmail.com with any questions and/or concerns regarding this program and/or any related material.

==================
===   Thanks   ===
==================
Thanks to Teh Baro for providing the information on how to edit egg moves.

Thanks to Jirachi260 for providing the offsets of French language roms and translations for the French interface.

Thanks to http://www.network-science.de/ascii/ for providing the ascii art at the top of this readme.

=======================
===   Version Log   ===
=======================

Version 1.1.0 - May 31st, 2009
-------------------------------
- Fixed an error with the modify button and the insert button.
- Added support for all French language generation III games.
- Added a language tab under the options menu to change the language of the interface. English and French interfaces are available.
- Let roms that don't end with .gba able to be opened.
- Egg move lists that are corrupt are now uncorrupted by the program automatically.
- Fixed "Number of Pokemon" and "Number of Moves" labels.
- Added a button that checks for duplicate entries, but it doesn't work properly yet so it's disabled for now.

Version 1.0.0 - May 25th, 2009
-------------------------------
- Support for all English language generation III games is present.

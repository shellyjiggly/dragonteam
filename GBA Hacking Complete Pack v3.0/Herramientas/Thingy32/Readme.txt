Thingy32
ported by ZackMan
(sandersn@hotmail.com)
made by necrosaro
(radimvice@yahoo.com)
Homepage:
[http://]now.at/zackman OR
[http://]spoony-bard.com/zackman
OR thingy's homepage, with examples of thingy at work:
[http://]members.aol.com/sabindude/


"If you like thingy, you'll LOVE thingy32!"
On the other hand, if you think that thingy is really useful but has some(ha) interface 
quirks, you will most likely think the same thing about thingy32. The purpose of this 
project is NOT to improve thingy by converting it to Win32, but to cut and paste its way
into Win32. I have improved the interface slightly, but only where I didn't go out of my 
way to do it; I have not altered thingy but translated it. (It was easier too)
This brings up another point; I am not a hacker myself, 
but a translator who happens to be a programmer as well, 
so technical questions are still better directed to necrosaro.

With that in mind, I'm going to provide the original readme.txt(without the original 
update history)
and alter it according to what's new.

thingy32

version 0.20:
	Actually, this is just addition of a language: Russian thanks to Raider2000!
	Also, there is one thing changed: The Open File dialog now defaults to All files rather
than SNES files.

version 0.19:
	Added nederlands translation. Thanks, Iki!
	Fixed handakuten and dakuten handling on dumping. Due to the way they are
stored in SJIS and EUC (two most common Japanese encoding methods) you just increment
the kana by one to get the dakuten version or two for the handakuten. I did not do this
ever since the original version of thingy32 so it is finally operational. You can thank
Western Kids for this fix but I was too disheartened to release it last summer(!).
	thingy32 now loads the entire file into memory before use. This may make a difference
for some systems, but I have not seen one on mine(PII/266 or P3/600) I have had suggested
to me that probably windows caches a good bit of small files anyway, so there may BE no
difference.
	Updated readme.txt and other documentation to reflect all the changes over the last
six months.

version 0.18:
	Well, as they say: "We HAVE had an adventure, haven't we?*" This has been a very
interesting version to program. I learned how to do insertion, and added a semi-windows
menu(you click on the Options label).

	Changed the command line(shortcut) format. Now you can use normal Win95
filenames!
		Old format: filename.rom table1.tbl table2.tbl
		New format: name of the game.rom/table 1.tbl/table 2.tbl

	I've fixed double byte endlines/section breaks up a little.
	Added a Start/End notice at the beginning of dumps. I stole this idea from some
other program, because I noticed how useful it was while trying to translate someone else's
scripts.
	Changed the 'insertmark' format so you can specify the end address of the insert:
{80600h+81600h-FF4dump.txt}Dialogue Block 1
However, the old format, which inserts the whole file, is still supported.
	Added an options "drop down" label. To this, I've added options to:
	Fixed manual insertion. This was a bug that is probably present in thingy
original too. (I'm trying to get you to switch ^^)
	Under the Options label:
1.Hide Hex and Switch Table Files...already present but taking up far too much room.
2.Reload Current Table File(for fine-tuning while creating a table)
3.Load New File or Table File
4.Choose Bookmarks, Dumpmarks, and Insertmarks without having to pull up the Jump screen.
5.Create Bookmarks without having to pull up the Jump screen.
6.Jump, Dump, and Insert Manually without having to pull up the Jump screen.
7.Create Dumpmarks and Insertmarks. This is much easier than trying to use Notepad.
I actually got Insertion working using this feature! 
	Removed VSmartScrollBar.ocx and RichEdit dependency. (The RichEdit was a mistake
anyway)
*"Bother! I've left my new torch in Narnia!"

version 0.17:
	First, added Relative Searching! Thanks to Jair for letting me use his code, and
to mdw2 for the inspiration of Hexecute's input design.
	Fixed insertion thanks to necrosaro, who is learning VB. He fixed my stupid errors.
	Fixed several small bugs in the Edit window, mainly mouse related.
	Fixed INCREDIBLY annoying bug present in ALL versions of thingy by using a buffer.
The short meaning of this is that you can now enter romaji and other table values that don't
have another table value that's shorter than it (ex: 'ka' without 'k'). 
See 30 Dec 1999 of 'Archived thingy32.txt' or 7 Oct 1999 of frmEdit for complete explanation.
	Fixed many small off by one bugs present in jumping/searching.
	Added horizontal sizing of the data. Now if you have a big screen you can
fill it! Necrosaro suggested this. Press < > to size or click the labels
if you are addicted to the mouse.
	Also, removed the partial implementation of color because it's hopelessly outdated
and I'll never do color now anyway. This might make the .exe a little smaller.

version 0.16:
	Fixed annoying bug that has been around FOREVER; the extra line at the bottom of
the text box is now gone! Two extra lines of code! Easy.
	Fixed cursor positioning bug on large-font systems, I hope. Now I get the size
from a system variable instead of hard-coded.
	Changed Edit/Search dialog so it's much more like original thingy--no text box 
anymore, just two labels.
	Added @ to enter manual hex in Edit/Search dialog. This is for Spanish keyboards
that got messed up by the accent mark ` which is the standard method.
	Fixed a off-by-one bug that has been around, also forever, that didn't show up
until I improved the method of jumping. Now you can have bookmarks at the end of lines!

version 0.15B (tiny tweak version):
	Tweaked jump code so that jumps now 1. Set the top line to the beginning of the
line on which the jump address is set. 2. Set the cursor on the actual character of data
on which the jump address is set.
Before version 0.15A, jumps actually set the beginning of the top line to the jump address!
This caused values other than 0 to begin lines, which caused confusion.(In me at least ;)
This tweak was by request.

version 0.15A (bugfix version):
	Bugfix of bug that was introduced with the optimisation in 0.14. As with many
things in thingy32, this is a case of bugs on bugs. Basically this fix means that thingy32
behaves like it always has with regard to double and triples at the end of lines. The
part of the data that exceeds the end of the line and wraps to the next 
is printed on the next line even though it should be printed as part of the double.
Ex:
(in table file)
3F12=Bird
12=A
(in thingy32)
...3F|...Bird
12...|A......

This bug exists in all versions of thingy and thingy32 and is not likely to be fixed unless
there is a huge public outcry. However, at least thingy32 does not crash any more :)
	Also fixed a minor bug in the jumping and another annoying one in the selection with
the mouse of multiple lines.

version 0.15:
	Full mouse support is in, unless by popular demand people request right-click
support. However, Copy right-click support is already inherent in Win32 text boxes.
	Also requested was a hexadecimal cursor position display box. This is provided
courtesy of a square Shape called TheWorldIsSquare. It is colored red right now, but might
be changed to black if people want it that way. (The red is for visibility)

-versions 0.14 and older archived in 'Archived thingy32.txt'-



Requirements
!!!!!!!!!!!!


Files required to run:
thingy32.exe
Ansi.tbl if you want to use the Windows default table file.
VB5 runtimes, which I don't distribute with this installation because
instead of c. 120K the zip would be c. 1.2MB.
VB6 runtimes, since I use the VB6 common dialog. Thanks to sheex for discovering this.

Files required to develop source:
VB5+; possible SP3 or higher.
VB code files included in .zip

Files required for international versions of thingy32:
.exe file for particular language: Ex. Thingy32Esp.exe for Spanish
Current languages:
EspaÒol    --> Thingy32Esp.exe
FranÁais   --> Thingy32Fra.exe
Nederlands --> Thingy32Ned.exe
Russian --> Thingy32Rus.exe

Please note: VSmartScrollBar.ocx is NO LONGER required. Thank you. Hope this helps
somebody.

Tips
****

You can create a shortcut with command line values to auto-load files in this
format:
<filename>/<tablefile>/<table2 [optional]>
To do this right click the shortcut to thingy32, and choose Properties.
In the Target text box, add the filenames after the .exe and pathname.
Ex:"C:\Games\Translations\Thingy32.exe C:\Games\Snes\sd3.smc / C:\Games\Translations\sd3english.tbl"

For advanced users, you can do weird things like "..\Snes\ff2.smc / ..\..\Downloads\ff2.tbl"

Spaces now work due to the new format. Remember, use / <-- just like a web address.

**Some keys you might like to know...

IN THE MAIN SCREEN
==================
You can also click the labels above the text box to do the same things, but it's
much easier to use the keyboard. Please note the keys are different for the different
languages; please run the different versions to see what the keys are.
(Ex: en espaÒol, 'J = Jump' == 'S = Saltar')

Space   Press space to select the beginning/end of what you
        want to edit.  The first time you press space, the status label(above the 
	position label) will read 'Selecting'.
        When you press space a second time, it'll bring you
        into the editor. I find this works well when you have to work in a
        limited space.
	NEW: You can now select the area to edit with the mouse. 
	Very simple, but no scrolling when using the mouse.

O	Options. Press 'O' or click the label.
	This pop-up menu contains several sub items which you may find useful:
-------------------------------
	N	Open a new file. Use this if you're tired of hacking one file and
	want to switch. ^_^

	O	Open a new table. Use this if you're tired of looking at the same
	old letters. Or if you have both Japanese and English tables and want to
	only use one at a time.

	R	Reload current table. Use this if you've updated your table and
	want to see the changes appear in thingy32 without closing and re-starting
	to be able to re-load the table.	
-------------------------------
These two keys still work without having to display the menu. It's your choice.

	H	Hide hex display in case: 1.You don't care about the hex if you've got
	your table file highly tuned with no missing values. 2. You want to tile
	thingy32 windows vertically. I can do 3 or 4 at 43232x32021, so you
	should be able to do almost as many. :)

	T	Switch between table files. Note that this is 
	currently buggy; about half of the
	important things(like the double-byte kanji) are only loaded for the
	second table file if you load two. Instead, start multiple copies of
	thingy32. That way you can tile them to boot. This IS Windows after all.	
-------------------------------
	B	Bookmarks. This contains items which mirror the jump dialog:
		J	Jump manually
		A	Add Current Location as Bookmark
			You have to provide the description
		-----------
		1-number	A list of the bookmarks in the table file

	D	Dumpmarks. Contains items which mirror the dump dialog:
		D	Dump manually using current location as start
		A	Add Current Location as DumpMark
			You have to provide the description and end.
		-----------
		1-number	A list of the dumpmarks in the table file
	I	Insertmarks. Contains items which mirror the insert dialog:
		I	Insert manually using current location as start
		A	Add Current Location as InsertMark
			You have to provide the description, end, and file to insert.
		-----------
		1-number	A list of the insertmarks in the table file

D      Text dumper. First time it'll bring up a dialog, if
       you want to dump a pre-set location select its name and press ENTER or click OK.
       If not, select Manual Dump (which will mark the beginning)
       and select the end of the stuff you want to dump with the D key.
       It will ask you for a filename to output the text to.
	NEW: You can now select the area to dump with the mouse,
	*if* it's all on the same screen.
	Very simple, but no scrolling using the mouse.

I      Text inserter. First time it'll bring up a dialog,
       if you want to insert text to a file dump (which you probably don't)
       select "insert to file". if you want to insert from a file to the
       ROM, select the insertmark entry in the listbox.
	NEW: You can now select the area to insert with the mouse,
	*if* it's all on the same screen.
	Very simple, but no scrolling using the mouse.

J      Jump to a different address in the ROM. It'll bring up a dialog box.
       To jump to a preset location select its name and press ENTER or click OK.
       If not, click 'manual address' and type in the address.
       (remember you can use the '&h' prefix to specify a hex value)
       To add a bookmark to your .tbl file, click Add Address.
NEW: Use '&h' PREfix, not 'h' SUFfix for manual hex address entry...
It tells you on the Inputbox, so don't worry about forgetting.

S      The Search function brings you into a screen like the Editor, but
       when you press ESC it'll search for the stuff that you typed in.
       To toggle searching for 16-bit values, press {. More about 16-bit a little
	farther on. Press F4 for relative search.

EVEN NEWER: I have implemented Jair's relative search engine. Click the label or press F4
to activate it. To use it simply type in 1. letters, alphabet ONLY or 2. numbers that
represent the values between of your characters. Separate them with spaces.
Ex: Japanese 'oki':
Type: "5<space>7" OR "0<space>2". Either works just as well, but "5 7" is easier to remember
if you know Japanese letter order.
You can mix letters and numbers freely. Useful if you want to use punctuation:
To type "a b" and you KNOW " " is FF(255) type
"a<space>255<space>b" (spaces are OPTIONAL here)
	Relative Search Options:
Alphabet Order: This determines whether RelSearch assumes lower case comes first or upper
case. In ASCII, upper case comes first, then lower case BUT the two are not adjacent, so
mixing upper and lower when searching ASCII *WILL NOT WORK*. This is common, so when 
relsearching try searching all one case if you aren't getting results.

Wilcard: Tells relative searcher to skip a byte if you don't know the value of it.
Type '*' to do this.
Ex: If you DON'T know the value of space and you want to search for "a b", type "a*b".
Or for a long string, "here it is"="here*it*is".

R      Resume search, aka search again k.


NEW:	Actually you press , and . but who cares? These keys size the amount of data per
<	line is displayed. Please note: you can size up to 128 and down to 3, but it's up
>	to you to find enough room to display
[My notes after using: at 1024x768 I can get 40 ASCII chars across without HideHex.
Sizing is pretty slow.]

IN THE EDITOR
-------------
~     automatic DTE on/off. If it's off, the program will ask you every
      time it detects a DTE can be used.
` OR @     Manual HEX.  Press ` or @ then 2 characters to manually input a hex value.

<ESC> Save what you typed in and go back to the regular mode. NOTE: Text you do not
fill is not changed. To cancel changes, erase what you've typed and press ESC.
<ENTER> works now as well, as does that cool little <X> button introduced with Win95.

{     Turns 16-bit searching, ie searching for YxExSx, on/off.


BOOKMARKS
<<<<<>>>>>
Bookmarks are helpful when you want to save a ROM address so you can go back
to it later.
To make a bookmark:

move the cursor to the address in the ROM.
Press "j", and click "Add bookmark".
OR Under the Options menu, choose 'Bookmarks' then click 'Add Bookmark'

Type the text that will appear in the listbox for the bookmark.



Done! you can also make bookmarks by directly editing the table file.
the bookmark will look like this:

(80600h)Text Block 1

the number is the address, text is the description.
You get 30 of these per table file.


SCRIPT DUMPING
--oOoOoOoOoO-- 
To dump some script, you just select it with D keys and select a filename.

if you are thinking of dumping something more than once, i would suggest
making a script dump bookmark.
A script dump bookmark will look like this:

[80600h-8D600h]Dialogue Block 1

the first number is the beginning, the second number is the end, and the text
is what will appear in the listbox when you press "D". pretty simple?
i hope so.
To create a dumpmark, Click Options, then choose 'Dumpmarks', then click
'Add Current Location as Dumpmark'
Note:You get 30 of these per table file. Also note these still use the old
standard of 'h' and the end rather than '&h' at the beginning.

SCRIPT INSERTION
˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛˛
OK...this is a real weird part, but if you do it right you can automatically
"reinsert" a script dump in the form of a text file back into your ROM.


To insert script to a file:
Load up the text file, ex. "FF4dump.txt"
Load up your table file, ex. "FF4.tbl"
Press the "i" key to select the area you want to insert.
Type a name for the output file, ex. "ff4.dat"

To insert script directly into the ROM:
OK this is a little trickier.
Load up the ROM, ex. "FF4.SMC"
Add an "insert bookmark" line to your .tbl file. Example:
{80600h+81600h-FF4dump.txt}Dialogue Block 1
 ^^^^^^------------------------------------>Start of address to insert the script to.
        ^^^^^^----------------------------->End address at which to stop inserting.
               ^^^^^^^^^^^----------------->The filename to get the script from.
                           ^^^^^^^^^^^^^^^^ Description of the "insertmark".
The easiest way to do this is from within thingy32:
Click Options, then choose 'Insertmarks', then click
'Add Current Location as Insertmark'. Enter the description, end address, and choose the
file with the script in it.

To insert just press "i" and select "Dialogue Block 1" and press Enter, and your
script will be inserted!
Note:If the area specified is longer than the file to be inserted, the length of the file
will be used for insertion.
Note: You only get 30 of these per table file. Also, addresses do not *have* to be hex.


Pointer calculations
€€€€€€€€€€€€€€€€€€€€
in addition to script insertions, you can insert updated pointer tables as
well. first, make your insert bookmark and have that all set up. Next, you
need to add another line in your table file that looks like this:

&CE804h-200h

Thingy includes support for two types of pointers: standard pointers and
relative pointers.

For standard pointers:
The first address is the beginning location of your table file. The second
address is the size of the header (For NES games this is 10h, for SNES games
this is 200h.)

For relative pointers:
Same as standard pointers except make the header size 0.

NEW:If I implemented this I don't know about it. You try it and see if it works.
NEWer:I see some code that might do this. I don't know. See above instructions.

ABOUT THE .TBL FILES
~~~~~~~~~~~~~~~~~~~~
The TBL files are alot alike the Xlate and Hexpose table files, but not
the same. Hey, thingy tables are standard now. If you don't like it, tough.
You can make as many lines as you want, in this format:

80=0
9A= this
5F=ed
30= t
0400=Cecil

Ah, important part...there are some "special" values that are common in some
games, and some special modifiers to make your script dumps special-like.

NEW: These next two can now be DOUBLE-BYTE! This was a request, so enjoy!
*xx        = Newline Value (you can have up to 2) 

/xx        = End String Value (you can have up to 2)

$xx=x      = "Linked" values(?)
             Specifying $02=x then automatically displays the <$xx> value of
             x characters after it. So putting in $02=1 would display:
             <$02><$xx> where xx is the hex value of the next 1 char.
	     You get 20 of these wonders per table file.

!xx        = Dakuten Value(only 1 per file)

@xx        = Handakuten Value(only 1 per file)

>          = Tells script dumper to look for Dakuten/Handakuten value AFTER
             the char it modifies, not before.
             i.e. to search for [wa"tale¯lelk] normally would produce:
             [wa(t")ale(l¯)elk].
             If you use the > option in your TBL file, it would produce:
             [w(a")tal(e¯)lelk].

#          = Doesn't print ANY <$xx> commands. Make your scripts look clean!
             Taking out the <END>s are easy, just replace them with blank in
             DOS Edit.

If you have any DTE's with the second character as a space, make sure it's
in there, sometimes the nasty DOS edit likes to munch up trailing spaces ;)

NEW: I highly recommend Table Manager which automates the creation of
the single hex codes and allows easy entry of double hex codes. Never use notepadÆ
(or DOS editÆ) again!
the address: http://www.emucamp.com/CBT
Also available is TaBuLar, another program in the same vein.
I like Table Manager a little better, but you decide...
the address: http://members.xoom.com/C_J_Z/

International Support
`````````````````````
I have included the capability for international support to thingy32. To use,
download the language version you want to use from http://now.at/zackman
Then, unzip the .zip in the same directory where thingy32 is installed. 
Afterwards, just use the international version of the .exe
(example: Spanish version is Thingy32Esp.exe)
If you want thingy32 in YOUR language, either use VB5+ or Notepad to change the 
strings in Globals.bas and mail it to me. Just translate everything in quotes on lines 
with 'Public Const' on them.
I will make a new language version and release it.

Please note: I meant to create .ips(patch) files of new language versions, but
the patches were as large as the program itself. Have I done this wrong? Can
anyone tell me why a Visual Basic .exe can be so different when all I changed
were the strings?

ABOUT THE PROGRAM
^^^^^^^^^^^^^^^^^

This program was coded in 100% qbasic! Maybe that's why it's pretty slow.
So be sure you have a lot of time on your hands, or a fast processor to use
it, especially the search functions.
hm, if it's possible i might be able to add
a VERY general pointer generator routine one of these days...

NEW: This program is 100% Visual Basic! That means it's blazing fast!! wahahahaha
It is also open source, like the original. I used VB5 SP3, and I made everything
a LOT easier to read(sorry Necrosaro, but your code is UGLY :) specifically adding 
comments where I understood the original code. Where I didn't you'll find either nothing or
'hmm wonder what this does?
OR
'Big Hint: don't do this and nothing bad will happen.
So you're on you're own there.

Here are the terms of use for Jair's Relative Search:
TERMS OF USE
-------------------
This program is distributed with its source code. 
You may use, distribute, and modify it freely. 
Only two restrictions: These terms of use must stay the same, 
and you must always include the source code with the program.  
Oh, and I'd appreciate it if you credit me as the original author.
-------------------
OK, Jair. I credit you as the original author ^_^. Anyway, the source code in VB form
is in Globals.bas(in Thingy32.zip). The C source is available from Jair's site at
http://fly.to/vale


If you need any more help to get it to work or if you have any suggestions,
go ahead and e-mail me at radimvice@yahoo.com (NOTE THE NEW ADDRESS!)

NEW:If you have table files that you'd like put up, send them to necrosaro. 
If you have a cool translation project that you'd like me to see, 
send it to sandersn@hotmail.com

Updated 08/30/2001
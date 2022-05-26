This program was created by link12552, 2010

http://www.pokecommunity.com/showthread.php?t=205687

>>Requires the .net 3.5 framework or higher

Basic Instructions:
=====================
1] To open a rom:
under file, goto open and select  your game

2] To navigate toggle back and forth,
in the navigate box or use the Go buuton

3] Saving a sprite,
Under file, press save


settings.ini Instructions
=====================
 >Used when you've changed the header,
sprite table', or palette table's locations

	Format:
		[Header]
		Inherits: "Origonal Game header, without quotes"
		Palette table = "The start of the sprite palette table, without quotes"
		Sprite table = "The stored sprite table pointing to all of the index offsets, without quotes"
		[/Header]

Example(s):

[LINK]
Inherits: BPRE
Palette table = &H3A5158
[/LINK]


[TEST]
Inherits: BPRE
Sprite table = &H39fdb0
[/TEST]

Inherits: << is mandatory, the rest is voluntary.
^ Helps determine any information you don't provide.

Log
=====================
' Displays sprites based on index and frame.
' Uses proper palettes.
' Sprite Libraries working.
' All headers embedded into program.
' Preferences fully functional
' Transparency fixed.
' Hand made, awesome icon!
' Imports 16 color bitmaps! and palettes
' Exports 16 color bitmaps! and palettes (in correct order)
' Voluntary settings.ini
' Palette format different.
' Displays more info.
' Can read from sprite Table.
' Palette editor, basic...
' Offset browser, with option reverse.
' Fixed resize function (universal pointers embedded)
' Added save all function when importing libraries.
' Released version 1.0
' Fixed a fatal error that occured when reading palettes with a "0" in the 7th index.
' Created a basic hex editor designed to optimize usage.
' Fixed palette index bug.
' Fixed the import sprite library "Save All" function.
' Fixed saving in offset browsing, same file version 1.52
' Added support for bitmap imports and exports durring offset browsing.
' Defined Unknown 2 -> Palette Registers.
' Works with the "Pal Registers" dynamicly.
' NSL 2.0 file type released. Cuts it's file size in half and fixes some other bugs. 
          _The origonal NSL files are still supported under the "Type B" description.
' Completely uses the games stored sprite table. (aka: runs in "Sprite Table" mode)
          _Removed need for a "Start offset" pointer
' NSE operates while your rom is being used by another process. (aka: no more, "This file is being used by another process, Error")
' Palette offset and grayscale in offset browsing mode.
' Fixed an offset error, same file version 1.60
' Changed "start palette =" to "palette table =" in settings.ini
' Fixed a palette editting bug
' Fixed the "prefrences are disabled" bug
' Fixed the import frame from NSL bug
' Added a bookmarking System
' NSL 3.0 file type released. Files are more size efficient than Bitmaps
' Prefrences Revamp
' Add new frames functions added
' Animation Type Editting
' Freespace finding now auto configures to your ROM
' Fixed a bug in Bookmark browsing, New version 1.6.9.1
' Fixed a bug with reading info from a settings.ini file
' Better compatibility with roms with a moved palette table _Fixed
' Fixed a bug in bitmap imports.
' NSL "compression" options _Fixed
' Includes NSL Editor!
[ NSE now supports compressed images! 
  _Switch to advanced mode for more saveing options
  _Compressed palettes.
' Better, faster freespace finding
' When repointing NSE will search and fix any pointer refrences.
' Fixed length and more dynamic pointer options in bookmark files
' Faster speed & bugfix
  Version 1.7 released ]
' Replaces old images (repointed) with free space
' Tweaked the lz compression algorithm
' Fixed a spelling mistake XD
' Fixed to "space saver option"
' Fixed a free space finding issue.
' Support for < 16 color bitmaps
' Added a plugin system (version 1.0, comes with example "pokemon" plugin)
' !!Draw mode added!!
' Better memory allcolation
' Faster loading of large ,uncompressed, images up to  4x faster!
' Offset browsing max image size increased
' Adjusted plugin system
' Imports 16 color PNG's
' Plugin System New Commands! [while, fin, fout, #mem(), &mem(), jump...]
' Insert [Saves images or palettes to any location, toggles compression]
' NSL saving of any image
' NSL 3.1 filetype [minor changes literally like 7 bytes different] 
_NSE is still backwards compatible with older NSL's
_NSL editor modified to read new NSL's << NSL EDITOR IS NOT BACKWARDS COMPATIBLE!


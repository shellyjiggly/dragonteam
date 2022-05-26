GBA Tool Advance 0.7a by coolhj

Contents:

   I. Overview
  II. What's new
 III. Quickstart
  IV. Version History
   V. Future Watch
  VI. Copyright
 VII. Support & Help 



I. Overview

GBA Tool Advance is a gba rom tool with the functions below.
1.Header Viewer
2.Intro Remover
3.Overdump Fixer
4.fix header
5.Intro Drawer
6.IPS Patcher
7.SRAM Patcher 
8.Rom Trimmer
9.Reboot/Sleep mode
10.Clock fix for Pokemon sapphire & ruby.


II. What's new


Correct some publisher code.
Correct some save check.


III. QuickStart

1.Header Viewer
With this function you can check the rom header info,Drag your gba rom and dorp it on the application.

2.Intro Remover
With this function you can remove the general intro,just like gbaintroremover you used to use.
Note:don't try to edit the start offset if you are not sure where it is,For the unusual intro rom,even if you know the start offset,the game still doesn't work after removing the intro,because the game start address has been modified by release group.

3.Overdump Fixer
With this function you can fix the rom overdumped.
Note:make sure that the rom is REALLY overdumped.

4.Fix Header 
With this function you can fix the header if this header is corrupt.
The rom with corrupt header can't be run on the GBA hardware or on emu with BIOS.

5.Intro Drawer
With this function you can draw the intro and make it the independent intro file.
1.single draw
Only save the intro with header,the intro file is very small,but not always works.
2.original draw
Save the original rom with all game data gone,the intro file is large(original size),but the size will cut down after being ziped.

6.IPS Patcher
With this function you can patch an ips to the rom.

7.SRAM Patcher
Comes in handy for people that can't use the eeprom/flash saves right. 
It is for EEPROM_v111,EEPROM_v120,EEPROM_v121,EEPROM_v122,EEPROM_v124,EEPROM_v125,EEPROM_v126,FLASH_v120,FLASH_v121,FLASH_v123,FLASH_v124,FLASH_v125,FLASH_v126,FLASH512_v130,FLASH512_v130,FLASH1M_v102,FLASH1M_v103.Not for the data compressed Famicom Mini series. 

8.Rom Trimmer
With this function you can cut down your gba rom size to the most likely actual size.


9.Reboot/Sleep mode
With this function you can Reboot your game, enter to the sleep mode and wake up by pressing any combine key, you can set the combine key as you wish.
Note: 1, This function is not compatible with ph0x's BOMA, don't try to patch them both.
      2, This function is for hardware only, if you want to test it on emu, don't forget to run it with BIOS.
      3, the bin code of this function is made by elffinal.

10.Clock fix
With this funtion you can make the Real Time Clock runs during play time, it is for the hardware that doesn't support RTC.
Note: It is for Pokemon sapphire & ruby series only

IV. Version History

0.7
SRAM Patch now support EEPROM_V125,EEPROM_V126.
Correct some serial tag.

0.6a
fix a damn bug that will delete your files

0.6
update publisher's database
update serial
Improved SRAM Patcher, now SRAM patcher support all kind of non-sram format, except the compressed Famicom Mini series.
Add Reboot/Sleep mode function
Add Clock fix

0.5
Fix a deathful bug
Add new function Rom Trimmer

Note: Don't use version 0.4 anymore,it contains a deathful bug that will delete you files.

0.4
More publisher(maker) can be detected.
Intro remover now can automatic detect which value to pad (most likely value,FFs or 00s) 
Fully support Zip file
Support Drag & Dorp file to application.
Info can be saved into clipboard
SRAM Patcher now support the newest format EEPROM_v124

0.3
More publisher(maker) can be detected.
logo.dat is not needed,you can delete it from your harddisk now.
Add new function IPS Patcher
Add new function SRAM Patcher (EEPROM_V111 format not supported yet)


0.2
Savetype check completed
You can save the header info in a text file.


0.1a beta
Fix a small bug



0.1 beta
First release version.



V. Future Watch



Any idea I think 




VI. Copyright
This software is produced by coolhj,it is freeware.You can use it free,copy it free and spread it free,but you must make the packed file GBATA.zip intact.



VII. Support & Help
Thanks for reading this readme and not minding my poor English.
If you have any problem or find any bugs,please contact me at http://www.nexus3000.altervista.org/forum or Email to coolhj@21cn.com
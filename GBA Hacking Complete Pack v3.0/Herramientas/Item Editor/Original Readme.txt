    //   ////////////  /////////////    ////    ////	    /////////////   //////	    //  ////////////////     /////      ///////
   //       //        //	           //  // // //  	   //	     //    //	   //	//           //    //    //    //
  //       //        ///////          //   //   //  	  ///////	    //     //	  //         //          //       //  //////
 //       //        //	         //	     //  	 //	   //    //	 //         //           //      //  /////
//       //        /////////////    //	    //   	/////////////   ////// 	//         //             ///////   //   ///
I saw a need for this as it's actually one of the GBA tools that isn't in common sharing.

Supports English Versions of:
Fire Red
Leaf Green
Ruby
Sapphire
Emerald

To Do:
Repointing function for Description
'Prettify it'

If you have any suggestions please let me know.

///////////    ////////      ////////     //       //
    //       //            //	//       //
    //         ///////     //	///////////
    //              //     //	//       //
    //       ///////         ////////	//       //
Title Screen Cry Hacker
This Program was written with the findings of foofatron. Allows for changing to Pokemon beyond Pokemon Number &HFF.

Supports English Versions of:
Fire Red
Leaf Green

It alters the Pokemons cry that is played on the title screen of a Fire Red or Leaf Green Rom.
It edits the ASM code
mov r0, #06   @Or #03 in Venasur
mov r1, #00
TO:
mov r0, [Pokemon Number]
add r0, [Pokemon Number]
The sum of these too lines at &H791EE creates the number of the Pokemon you want to Cry at the tilescreen.

Credits:
Foofatron for his discovery of the Titlescreen Cry.
Hackmew for clscommondialog class module taken from APE
Darthatron for Hex Editing Functions Module taken from his tutorial
Elitemap Creators, mdlTextSapp module taken from Elitemap Source
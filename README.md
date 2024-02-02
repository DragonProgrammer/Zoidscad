These are Open SCAD Files done of custom parts for BLOX Zoids. Zoids being a line of Japanese animal mecha created by Takara, and distribted in the USA by Tomy, and BLOX being the sub-group of modular zoids build around a cubic core pieces and held together by pegs.

These were created so I could make a custom figure i wanted do but was finding troublesome as layering wings onto the parts Takara made was not working. The other problem that i was running acrose was the fact that the pegs and peg plates they used did not let the tails be prehensile.

__________________________ Find and insert drawing

To solve the wing stacking problem an angled part was devised. (corner.scad) --IMAGE--

Adding a corner onto each side of a normal BLOX creates a part that fit a stack of wings. (side.scad) --IMAGE--

Many of the rest of the files are me trying to figure out how wanted the parts to go. 

  Side.scad would create a pice for angled atackments and could be used to hook onto other parts.
  
  hexlong.scad - six side parts positioned in a staked hexagon. --^--
  
  3long.scad - a row of 3 normal blox printed as 1 part. This part could save normal blox in other models too.
  
  longside.scad - this was a stack of 3 side parts. This part cold conec to another version of itself to form the hexlong shap or sandwitched on the 3x3 part to form the octlong part.--^--
  
  oct.scad - this is a plus sigen of normal blox with the corner blox  creating an octagonal shape. The shape can be used to stack small wings or staked on each other to form the octlong part.
  
  octlong.scad - this file is the old oct long part and a lighter version of the part. --IMAGE--
  
  octfilled.scad - this is an idea to create the oct longe piece in multiple parts and a method for adding the rubber. It also adds pegs so that the parts click together instead of needing glue. It allow for the creation of a cap pice and a hollow octogonal ring. --IMAGE--
  
  octstack.scad - this is a modified implementation of octfilled. It makes the octagonal parts split along the BLOX centers instead of alon the BLOX edges. It also has a modified version of the rubber inserts.--IMAGE--
  
  octStackCup.scad - this file is a rendition of a different way of doing the rubber for the blox. This assumes i can find a rubberized paint instead of printing out rubber inserts. --IMAGE-- 
  
  smallrightbrace.scad - this is a right angled bracket for conected blox together. Takara made one of there own but the top/bottom points of the hex part would get in the way of using it, so the new one is beveled at the corner. 
  
  acutebraket.scad - this is the 45 degree brack for securing the stacked wings on top of each other. There is no equivalent made by Takara. --IMAGE--
  
  tests.scad - this file is a postioning test to see where the wings would attach to the shapes. --IMAGE--

  ballnsocket.scad - this is the one piece ball and socket for making the tail. Takara made a set of parts that atach to blox to do the same thing, but it would be prohibitivvely expensive to do the same thing these do. --IMAGE--
  
--^-- These files are broke due to side.scad not having function side().  

------------------------------------------------------------------------------------------------------------

The first group of files is a version control where i tried to get everything into one file. After discovering SCAD's include function I set about making each part intdividualy and building up from there. The old files are included for referance but will not be discribed as they have now been depricated.
In creating the module most of the code was tcoppy pasted from blox7_capsoct.scad, not all of the modules have been fully updated to match new function calls.
  Example: longside.scad includes side.scad and calls a function side() that no longer exists in side.scad when it was updated to solve the next problem.

After a test print of a ball and socet blox it was determined that the parts needed a rubber core so Each part was split in half and the interior modified.
  Example: corner.scad --> corner2.scad.  Others like side.scad were edited as the old name.

----------------------------------------------------------------------------------------------------------------------------
FILES NOT FROM CUSTUM PROJECT
  sphere_blox.scad & multi_axis_peg.scad - these 2 where recreations of existing parts that came only a set of six specialy released models.--IMAGE-- --IMAGE--
  stem_attempt_1.scad - this file is me trying to recreate the twisting stem from the flower model zoid. The one released with the model was 5 parts glued together, and had a habit of poping apart. This is a cad file for making it as one part. --IMAGE--
  thin_blox - this is piece is a half width BLOX for custom projects. --IMAGE--
-------------------------------------------------------------------

These files, with the exception of ballnsocket.scad, never got printed as a lack of income and the cost of resin to experiment on getting the rubber for the internals.

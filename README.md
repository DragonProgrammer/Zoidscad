These are Open SCAD Files done of custom parts for BLOX Zoids. Zoids being a line of Japanese animal mecha created by Takara, and distributed in the USA by Tomy, and BLOX being the sub-group of modular zoids build around a cubic core pieces and held together by pegs.

These were created so I could make a custom figure I wanted do but was finding troublesome as layering wings onto the parts Takara made was not working. The other problem that I was running across was the fact that the pegs and peg plates they used did not let the tails be prehensile.
__________________________ Find and insert drawing

To solve the wing stacking problem an angled part was devised. (corner.scad) --IMAGE--

Adding a corner onto each side of a normal BLOX creates a part that fits a stack of wings. (side.scad) 

Many of the rest of the files are me trying to figure out how wanted the parts to go.

Side.scad would create a piece for angled attachments and could be used to hook onto other parts.

corner2.scad - the corner piece set up for half printing.

  ![My_image](Modules/corner2.png)
  
hexlong.scad - six side parts positioned in a staked hexagon. --^--

3long.scad - a row of 3 normal blox printed as 1 part. This part could save normal blox in other models too.

longside.scad - this was a stack of 3 side parts. This part could connect to another version of itself to form the hexlong shap or sandwitched on the 3x3 part to form the octlong part. --^--

oct.scad - this is a plus sign of normal blox with the corner blox creating an octagonal shape. The shape can be used to stack small wings or staked on each other to form the octlong part.

octlong.scad - this file is the old oct long part and a lighter version of the part. 

octfilled.scad - this is an idea to create the oct long piece in multiple parts and a method for adding the rubber. It also adds pegs so that the parts click together instead of needing glue. It allows for the creation of a cap piece and a hollow octagonal ring. 

octstack.scad - this is a modified implementation of octfilled. It makes the octagonal parts split along the BLOX centers instead of along the BLOX edges. It also has a modified version of the rubber inserts.


  ![My_image](Modules/octstack.png)
  
  octStackCup.scad - this file is a rendition of a different way of doing the rubber for the blox. This assumes I can find a rubberized paint instead of printing out rubber inserts.  
  ![My_image](Modules/octoStackCup.png)
  
  smallrightbrace.scad - this is a right angled bracket for conected blox together. Takara made one of there own, but the top/bottom points of the hex part would get in the way of using it, so the new one is beveled at the corner. 

![My_image](Modules/smallrightbrace.png)
  
  acutebraket.scad - this is the 45 degree bracket for securing the stacked wings on top of each other. There is no equivalent made by Takara. 
  ![My_image](Modules/acutebraket.png)
  
tests.scad - this file is a positioning test to see where the wings would attach to the shapes. 

ballnsocket.scad - this is the one piece ball and socket for making the tail. Takara made a set of parts that are attached to blox to do the same thing, but it would be prohibitively expensive to do the same thing these do.
 
![My_image](Modules/ballnsocket.png)
  
--^-- These files are broken due to side.scad not having function side().  

------------------------------------------------------------------------------------------------------------

The first group of files is a version control where I tried to get everything into one file. After discovering SCAD's include function I set about making each part individually and building up from there. The old files are included for reference but will not be described as they have now been deprecated.

In creating the module most of the code was copy pasted from blox7_capsoct.scad, not all of the modules have been fully updated to match new function calls.
  Example: longside.scad includes side.scad and calls a function side() that no longer exists in side.scad when it was updated to solve the next problem.

After a test print of a ball and socket blox it was determined that the parts needed a rubber core, so Each part was split in half and the interior modified.
  Example: corner.scad --> corner2.scad.  Others like side.scad were edited as the old name.

----------------------------------------------------------------------------------------------------------------------------
The following files are not from the custom project:


  sphere_blox.scad & multi_axis_peg.scad - these two are recreations of the existing parts that were onkly availabe from six specaily released models. --IMAGE-- --IMAGE--
  
  stem_attempt_one.scad - one of these speacial models was of a flower. Once the end caps are added this would recreate the curved stem and straight stem as one part insted of the 5 baddly glued parts they are in the kit. --IMAGE--
  
  thin_blox - this is a half width blox to use for custome ideas; such as putting a bank of guns closer together or not needing an entire blox to attach legs.

-------------------------------------------------------------------

These files, with the exception of ballnsocket.scad, never got printed as a lack of income and the cost of resin to experiment on getting the rubber for the internals.

A large project based on the anime's gravity cannon (Zoids Chaotic Century Episodes 62 - 67) can be shown on request. Private project, not displayed to the public.

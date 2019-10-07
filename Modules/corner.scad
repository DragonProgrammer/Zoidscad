//**
//@author Michael Peterson
//
//@section DESCRIPTION
//
// This piece is based of of the unholed block instead of the Blox. It functions as a Blox in the shape of a trianglar pyrimid. It has holes only on the square surfaces, allowing it to conect to other blox on the flat. 
// In theory...
// It is tan integral basis for many of the custom Blox designs.
//
//@section TEST
// 
//This piece has been untested and should be tested after the main Bloxs has been dimensioned properly. If this fails many peices need to be changed.
//
//@section IMPROVEMENTS
//
//Unsure how the expanded corners on a normal blox would work agains the angled edge. Replicate those features and surface paterns on the face.

use <base file.scad>;
module corner(){difference(){
    block();
   translate([-9,-9,9])rotate([0,45,0])
cube([24,18
   ,12]) color("Red");
    //enlarged was 8,6,4; moved, was -3,-3,-3
 rotate([0,90,0])
   translate([0,0,-4]) peghole();
translate([0,0,-4]) peghole();   
rotate([0,45,0]) translate([0,0,1])peghole();   
}
}
    

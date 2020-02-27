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

use <base file2.scad>;
module triangleblock(){difference(){
    block();
   translate([-9,-9,9])rotate([0,45,0])
cube([24,18
   ,12]) color("Red");
}
}
module corner(){
  
    difference(){triangleblock();
       trispacer();
     rotate([0,90,0])   translate([0,0,-6]) Editpeg(5);
translate([0,0,-6]) Editpeg(5);   
rotate([0,45,0]) translate([0,0,1])Editpeg(7);   
}
}
module cornerhalf(){
difference(){
corner();
translate([ -10, 0, -10]) cube([20,10,20]);
}
}
translate([15,0,0]) whole();
corner();
module tritube(){
    rotate([0,45,0])
translate([0,0,-3.5]) Edittube(8);
rotate([0,90,0])
translate([0,0,-4.5])Edittube(5);
translate([0,0,-4.5])Edittube(5);   
}


module spacers(){
    rotate([0,45,0])
translate([0,0,-3.5]) Editspacer(8);
rotate([0,90,0])
translate([0,0,-4.5])Editspacer(5);
translate([0,0,-4.5])Editspacer(5);   
}
module trispacer(){
difference(){
    spacers();
    sides();
     translate([-9,-9,8])rotate([0,45,0])cube([24,18,12]) color("Red");
}
}
module tricore(){
 difference(){
    tritube();
     rotate([0,45,0])
translate([0,0,-3.5]) Editpeg(9);
  sides();
    translate([-9,-9,8])rotate([0,45,0])cube([24,18,12]) color("Red");
}
}
//tricore();
//tube();
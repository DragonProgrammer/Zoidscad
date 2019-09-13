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
    
//anled blox piece
corner();

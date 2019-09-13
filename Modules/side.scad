use <corner.scad>;
include <base file.scad>;
//base=15;
module side(){
    blox();
    translate([0,0,base])corner();
translate([0,0,-base]) rotate([0,90,0]) corner();
}
// Pentagram side of octagon, can be own piece



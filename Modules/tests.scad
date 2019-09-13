include <base file.scad>;
include <side.scad>;
module test(){
translate([0,0,2*base]) blox();
rotate([0,45,0]) translate([0,0,1.9*base]) blox();
}
// set up angle for bracket design
module core() {
    color("Red") translate([0,0,2.5]) blox();
    color("Red");
}
// a test blox to position in cap
module wingspots(){
    rotate([0,-90,0]) side();
translate([0,0,-base])
union(){
   test();
rotate([0,0,180]) test();
}
}
// test of wing spots,
module test2() {
difference(){
    wingspots();
translate([0,0,base
   ]) cube(1.001*base
   ,true);
    //messing with a hairs breadth as blox() ads a tiny hight change
}
}
module hexwings() {
    translate([0,0,.5*base]) wingspots();
rotate([0,180,0]) translate([0,0,.5*base]) wingspots();
}
//test rig for hexbody wing placement

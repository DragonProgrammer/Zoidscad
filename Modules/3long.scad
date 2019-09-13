include <base file.scad>;
module 3long() {
    blox();
    translate([0,0,base]) blox();
    translate([0,0,-base]) blox();
}
// a peice of 3 conected blox
include <3long.scad>;
module 3X3() {
3long();
translate([0,base,0]) 3long();
translate([0,-base,0]) 3long();
}
// plate of 3X3 blox can be used as own piece

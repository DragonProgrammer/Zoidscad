include <3long.scad>;
include <side.scad>;
module oct() {
3long();
translate([base,0,0]) side();
translate([-base,0,0]) rotate([0,180,0]) side();
}
// one octagon of blox, can be used as own piece

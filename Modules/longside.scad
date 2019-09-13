include <side.scad>;
module longside() {
side();
translate([0,base,0]) side();
translate([0,-base,0]) side();
}
// long side can be used as own piece
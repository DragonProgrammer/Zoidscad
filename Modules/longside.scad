//**
//
//@author Michael Peterson
//
//@section DESCRIPTION
//
//A 3X3 plate made from the side pieces, a wider trapazoid.
//
//@section TESTS
//
//In a hollow version how does force on the obtuse angles effect endurance?
//
//@section IMPROVEMENTS
//
//Look into adding pegs on the large flat are so tthat 2 can be stuck together to make a hex.

include <side.scad>;
module longside() {
side();
translate([0,base,0]) side();
translate([0,-base,0]) side();
}
// long side can be used as own piece
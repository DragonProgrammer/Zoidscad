//**
//@author Michael Peterson
//
//@section DESCRIPTION
//
//This piece is a 3X3 layer of blox where the corners are angled peices, creating an octagon shape.
//It is one layer of the long octagon.
//
//@section TEST
//
//Like all the other fused parts this one must undergo endurance testing.
//How heavy will this be?
//
//@section IMPROVEMENTS
//
//Figure out a way to hollow it out while keeping rigidity. Perhaps editing the base Blox to be cubes with tubes instead of holes.

include <3long.scad>;
include <side.scad>;
module halfoct(){
difference(){
    union(){
        half3long();
translate([base,0,0]) halfside();
translate([-base,0,0]) rotate([0,180,0]) halfside();
    }
    rotate([0,90,0]) Editspacer(18);
    translate([0,0,base])rotate([0,90,0]) Editspacer(18);
    translate([0,0,-base])rotate([0,90,0]) Editspacer(18);
}
}

module oct() {
3long();
translate([base,0,0]) side();
translate([-base,0,0]) rotate([0,180,0]) side();
}

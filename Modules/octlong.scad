//**
//
//@author Michael Peterson
//@section DESCRIPTION
//
//Presents two version of a long octogan cylinder.
//This shape is 3 stacked copies of a single octagonal piece.
//One version has a solid core and one that is hollow.


//**
//@section INCLUDE
//
//Include the file with the single layer.
include <oct.scad>;

//**
//@section DESCRIPTION
//
//This is the solid version. It still has the holes of all has blox.

module long(){
    oct();
translate([0,base,0]) oct();
translate([0,-base,0]) oct();
}
// octoganal tube with solid fill
//**
//@section DESCRIPTION
// This is a hollowed out version of cylinder. Much of the core has been removed to make it lighter and use less material.
module longhollow(){
difference(){
long();
cube([10,10,base], true);
cube([base,10,10], true);
}
}
// lighter octoganal tube
longhollow();
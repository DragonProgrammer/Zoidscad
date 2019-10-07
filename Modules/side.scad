//**
//
//@author Michael Peterson
//
//@section DESCRIPTION
//
//This is a Blox cube and 2 corner peices that make it into a trapzoid shaped Blox.
//
//@section TEST
//
//A good peice to test before making the longer ones. Can test the Brackets with this piece too.
//Might want to print 2 to see how well the brackets work with Buster Eagle wings.

use <corner.scad>;
include <base file.scad>;
//base=15;
module side(){
    blox();
    translate([0,0,base])corner();
translate([0,0,-base]) rotate([0,90,0]) corner();
}
// Pentagram side of octagon, can be own piece



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

use <corner2.scad>;
include <base file2.scad>;
//base=15;
module halfside(){
    difference(){
        halfbase();
Editspacer(18);
    }
}

module sidecore(){
    Edittube(18);
    core();
    translate([0,0,base])tricore();
translate([0,0,-base]) rotate([0,90,0]) tricore();
}
module halfbase(){
    half();
    translate([0,0,base])cornerhalf();
translate([0,0,-base]) rotate([0,90,0]) cornerhalf();
}
//halfbase();
//sidecore();
// Pentagram side of octagon, can be own piece


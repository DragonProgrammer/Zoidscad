//**
//@author Michael Peterson
//
//@section DESCRIPTION
//
//THis is a 3X3 plate of Blox.
//
//@section SIMILAR REAL PIECES
//
//There is a 4X2 piece to examine. See how they worked the Blox corners to connect.
//
//@section TEST
//
//This might prove heavy. Look into interior scafulding instead of solid. Are the tubes through it enough support?
//Is this plut 2 edges more versitile then the Octllong piece?
include <3long.scad>;
module 3X3() {
3long();
translate([0,base,0]) 3long();
translate([0,-base,0]) 3long();
}
// plate of 3X3 blox can be used as own piece

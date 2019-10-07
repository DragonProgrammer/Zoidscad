//**
//@section DESCRIPTION
//
//This is a liniar linking of 3 Blox elements. It is used as a starting point for panels, and to make sure the spacing between Blox is right.
//
//@section TEST
//
//An important proof of concept piece. The holes from this should be the same spacing as the pegs on parts like the Blox cockpit. 
//Once embelshments are added to blox, must test to see if peices stay together through endurance test or brack apart along falces.
//
//@section IMPROVEMENTS
//
// Change the surface paturn and remove the internal cornaer extensions to reflect a longer one piece Blox, instead of making it look like 3 fused BLox.

include <base file.scad>;
module 3long() {
    blox();
    translate([0,0,base]) blox();
    translate([0,0,-base]) blox();
}
// a peice of 3 conected blox
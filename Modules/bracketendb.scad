include <base file.scad>;
module bracketendb(){
cylinder(.2*base,3.75,3.75);
translate([0,-3.75,0]) cube([.4*base,.5*base,.2*base]);
    peg();
}

// brackend end peice, for building brackets
// enlaged and moved was
//cylinder(1,1.25,1.25);
//translate([0,-1.25,0]) cube([2,2.5,1])
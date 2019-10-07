//**
//
//@author Michal Peterson
//
//@section DESCRIPTION
//
//A brack to go between Blox parts that are at 45 degree angles to each other, such as part atached to the octolong pieces.
//Should supply suport so they do not fall on to each other.
//
//@section TEST
//
//Untested. Simple CAD mockups seem to suggest pegs are int the right spot, and size.
//
//@section IMPROVEMENTS
//
//Exterior part of the vertice are rough, need shaving. Do not know how they would interfere with the angles on the octoparts.
include <bracketendb.scad>;
module acutebracket() { 
     translate([-1,,-1.25,-2])rotate([0,45,0]) cube([1,2.5,1]);
    rotate([0,90,180]) bracketendb();
translate([.75,0,-.75]) rotate([0,135,0])  bracketendb();
}
//bracket for flat to angled wings
//requires shaving

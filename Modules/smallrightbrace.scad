include <bracketendb.scad>;
include <tests.scad>;
module smallrightbrace() {
    translate([-4.1,0,4.1]) rotate([0,135,180]) bracketendb();
translate([4.1,0,4.1])rotate([180,45,180]) bracketendb();
    //updated was 1.7,0,1.7
translate([0,0,.3]) cube([.4*base,.5*base,.2*base], true);
}
// bracket for angled wings on hex body
//some trimming could be done
//needs work and verification (test prints?)


// the test for this one 
//translate ([0,0,-2*base])rotate([0,90,0])hexwings();
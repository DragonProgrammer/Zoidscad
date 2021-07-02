include <oct.scad>;
module holefiller(){
rotate([0,90,0])color("Red")filler();
rotate([0,-90,0])color("Red")filler();
rotate([0,180,0])color("Red")filler();

color("Red")filler();
}

module holefilled(){
    halfoct();
  color("Blue")holefiller();
}
//holefilled();
module filler(){
translate([-8.75,-6,-7.5])rotate([0,45,0])cube([1.85,1,1.85]);
}
//color("Red")filler();
module conpeg(){
difference(){
    translate([-8.75,-6,-7.5])rotate([0,45,0])cube([1.85,11,1.85]);
    rotate([0,0,180])halfoct();
}
}        
//module discarded
module pegger(){
    rotate([0,90,0])color("Red")conpeg();
rotate([0,-90,0])color("Red")conpeg();
rotate([0,180,0])color("Red")conpeg();

color("Red")conpeg();
}

module stackpeg2(){
translate([1.35*base,3,.4*base])rotate([90,0,0])cylinder(5,1,1);
;}
module stackpeg(){
translate([1.35*base,3,-.4*base])rotate([90,0,0])cylinder(5,1.1,1.1);
;}
module octpegger(){
    rotate([0,90,0])color("Red")stackpeg2();
rotate([0,-90,0])color("Red")stackpeg2();
rotate([0,180,0])color("Red")stackpeg2();

color("Red")stackpeg2();
}
module octholes(){
    rotate([0,90,0])color("Red")stackpeg();
rotate([0,-90,0])color("Red")stackpeg();
rotate([0,180,0])color("Red")stackpeg();

color("Red")stackpeg();
}


module pegged(){
octpegger();
difference(){
halfoct();
octholes();
}
}
//pegged();
module octendcore(){
octedgecore();
core3long();
}
module octedgecore(){
//core();
translate([-15,0,0])rotate([0,180,0])sidecore();
translate([15,0,0])sidecore();
translate([0,0,-15])rotate([0,90,0])sidecore();
translate([0,0,15])rotate([0,-90,0])sidecore();
}
//octedgecore();
//pegged();
//translate([0,0,0])octside();
//translate([0,base,0])octside();
//oct();
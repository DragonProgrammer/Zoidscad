include <base file.scad>;
module Remove() {translate([-7.5,-2,0]) cube([15,4,7], 0);
translate([-2,-7.5,0]) cube([4,15,7], 0);
translate([-7.5,-7.5,5] )cube([15,15,4],0);
}
module socket() {
    difference(){
sphere(6);
translate([0,0,-3]) Remove();
sphere(5);    
}
}
module balljoint(){
    rotate([0,0,45]) cylinder(5,8,0,0,$fn=4);
difference(){
    translate([0,0,-7.5]) blox();
    translate([0,0,-18]) sphere(5);
}
translate([0,0,6]) sphere(5);
translate([0,0,-18])rotate([180,0,0]) socket();
}
balljoint();
translate([0,0,24]) color("red") balljoint();
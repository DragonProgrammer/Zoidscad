include <base file2.scad>
module quadrant(){
difference(){
intersection(){
translate([4.25,0,4.25])cube([8,16.5,8],true);
sphere(d=16.5);
}
rotate([25,-38,-36])cube([16.5,3.5,3.5],true);
}
intersection(){
translate([4,0,4])cube([8,16.5,8],true);
color("green")sphere(d=16);
}
color("red")union(){translate([0,0,1])rotate([0,0,45])rotate_extrude(angle = 45)translate([8,0,0])circle(d=1);
translate([1,0,0])rotate([0,-90,0])rotate_extrude(angle = 45)translate([8,0,0])circle(d=1);
translate([0,5.65,0])rotate([90,-8.5,0])rotate_extrude(angle = 70)translate([5.7,0,0])circle(d=1);
translate([5.65,5.65,1])sphere(d=1.0);
translate([1,5.65,5.65])sphere(d=1.0);
translate([0,0,0])rotate([0,-45,0])rotate_extrude(angle = 30)translate([8.25,0,0])circle(d=1);
translate([5.07,4.07,5.07])sphere(d=1);

translate([0,0,0])rotate([10,-15,-25])rotate_extrude(angle = -25)translate([8.25,0,0])circle(d=1);
translate([0,0,0])rotate([38,-59,-50])rotate_extrude(angle = -25)translate([8.25,0,0])circle(d=1);
    }
difference(){
color("blue")translate([5.7,2.15,5.7])rotate([90,0,0])cylinder(d1=2.2,d2=2.2,4.31);
rotate([25,-38,-36])cube([16.5,3.5,3.5],true);
}
translate([5.7,1.5,5.7])rotate([90,0,0])cylinder(d1=3.1,d2=3.1,3.0);
}

module sphere_half(){
difference(){
    union(){
        rotate([0,0,180])quadrant();
    quadrant();
    }

Editpeghole(17);
rotate([0,90,0])Editpeghole(17);
rotate([90,0,0])Editpeghole(17);
give();
    translate([.3*-base,.3*base,0])cube([1.5,1.5,3.5], true); // at 1.1 and 3.1 hole too small when printed
translate([.3*base, .3*-base,0])cube([1.5,1.5,3.5], true);
}
translate([.3*base,.3*base,0])cube([1,1,3], true);
translate([.3*-base, .3*-base, 0])cube([1,1,3,], true);
}

sphere_half();
rotate([180,0,0])sphere_half();
//color("blue")mirror([0,1,0])rotate([0,-45,0])rotate_extrude(angle = 15.1)translate([8.3,0,0])circle(d=2.2);

//sphere(d=16.5);

//rotate([45,45,0])color("blue")cylinder(d1=16.75,d2=16.75,.5, true);

//mirror([0,1,0])translate([0,5.65,0])rotate([90,-8.5,0])rotate_extrude(angle = 70)translate([5.7,0,0])circle(d=1);
//rotate([25,-38,-36])cube([16.5,3.5,3.5],true);
//cube([11.5,11.5,11.5], true);

//translate([0,0,1])rotate([0,0,0])rotate_extrude(angle = 90)translate([8,0,0])circle(d=1);
//translate([1,0,0])rotate([0,-90,0])rotate_extrude(angle = 90)translate([8,0,0])circle(d=1);

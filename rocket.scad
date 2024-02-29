$fn = 30;
module sidelance(){
cylinder(60,2,0);
translate([0,0,-2.5])cylinder(2.5,1,2);
translate([0,0,-12.5])cylinder(10,1,1);
}
module enginesideshape(){
difference(){scale([1,3,1])circle( 6 );
translate([6,1,0])color("red")circle( 3 );
translate([-6,1,0])color("red")circle( 3 );
translate([0,11,0])square([15,15],true);
}
difference(){translate([0,4,0])scale([2.25,1,1])circle( 3 );

translate([6,1,0])color("red")circle( 3 );
translate([-6,1,0])color("red")circle( 3 );
}
}
module ESideOutline(){
scale([1,1.05,1.01])enginesideshape();
color("red")scale([1.1,1.1,1])enginesideshape();
}
module vents_1(){
scale([1,1,2])union(){
translate([0,-15,0])color("blue")cube([5,1,1],true);
translate([0,-13,0])color("blue")cube([7,1,1],true);
translate([0,-11,0])color("blue")cube([8.5,1,1],true);
translate([0,-9,0])color("blue")cube([10,1,1],true);
translate([0,-1,-.5])color("blue")cylinder(1,1.5,1.5);
translate([0,-5,-.5])color("blue")cylinder(1,.75,.75);
translate([2,-7,-.5])color("blue")cylinder(1,.75,.75);
translate([-2,-7,-.5])color("blue")cylinder(1,.75,.75);

}
}
translate([0,0,-1.5])ESideOutline();
difference(){
ESideOutline();
translate([0,0,.5])vents_1();
}


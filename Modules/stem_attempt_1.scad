$fn=30;
translate([17,0,0])rotate([90,0,0])straight_stem();
difference(){
    translate([10.5,18,.50])rotate([90,0,20])straight_stem();
translate([0,10,-2.5])cube([20,20,7]);
}
rotate([0,0,40])translate([0,5,0])difference(){
    translate([10.5,18,.50])rotate([90,0,20])straight_stem();
translate([0,10,-2.5])cube([22,22,7]);
}

//straight_stem();
module straight_stem(){
linear_extrude(height = 19, twist = 360) translate([2,0,0]) circle(d=1);
linear_extrude(height = 19, twist = 360) translate([-2,0,0]) circle(d=1);
scale([1,2,1])linear_extrude(height = 19, twist = 360) translate([0,1,0]) scale([1,.5,1])circle(d=1);
difference(){
union(){linear_extrude(height = 19, twist = 360) translate([2,0,0]) circle(d=1.5);
linear_extrude(height = 19, twist = 360) translate([-2,0,0]) circle(d=1.5);
scale([1,2,1])linear_extrude(height = 19, twist = 360) translate([0,1,0]) scale([1,.5,1])circle(d=1.5);
    
    
}
translate([0,0,0])cube([6,6,5],true);
//color("blue")translate([0,0,3.25]) cube([7,5,1.5],true);

translate([0,0,6.5]) cube([6,6,5],true);
//color("blue")translate([0,0,9.75]) cube([7,5,1.5],true);

translate([0,0,13]) cube([6,6,5],true);
//color("blue")translate([0,0,16]) cube([7,5,1.5],true);

translate([0,0,18.5]) cube([6,6,4],true);

}}

translate([9,14.75,-0.5])  rotate([10, -80, 40])scale([1,1,1])rotate_extrude(angle= -50)  translate([3,0,0]) scale([1,1,1])circle(d=1);


translate([10.2,11.5,1])  rotate([15, 45, -10])scale([1,1,1])rotate_extrude(angle= 70)  translate([2,0,0]) scale([1,1,1])circle(d=1);

translate([7.6,10,2.])  rotate([5, 30, 0])scale([1,1,1])rotate_extrude(angle= 50)  translate([7,0,0]) scale([1,1,1])circle(d=1);

color("red")translate([13.5,10.75,2])  rotate([10, 35, 30])scale([1,1,1])rotate_extrude(angle= 90)  translate([2,0,0]) scale([1,1,1])circle(d=1);

color("red")translate([12,16,-.5])  rotate([10, -40, -80])scale([1,1,1])rotate_extrude(angle= -60)  translate([4.5,0,0]) scale([1,1,1])circle(d=1);

color("green")translate([11.6,10,-.5]) rotate([-85,0,0])cylinder(d1=1.25,d2=1.25,1.5);
color("green")translate([11.4,13,.7]) rotate([-45,0,40])cylinder(d1=1.25,d2=1.25,1.5);
color("green")translate([10.2,14.5,2.3]) rotate([-80,0,60])cylinder(d1=1.25,d2=1.25,1);
color("green")translate([19,-1,-.5]) rotate([-60,0,5])scale([1,1,1])cylinder(d1=1.25,d2=1.25,2.5);

color("blue")translate([8.05,13.55,.0]) rotate([55,0,55])cylinder(d1=1.25,d2=1.25,1.5);
color("blue")translate([12,12.5,2.41]) rotate([110,0,100])cylinder(d1=1.25,d2=1.25,1.5);
color("blue")translate([14.8,11.75,.87]) rotate([100,0,22])cylinder(d1=1.25,d2=1.25,2.5);
color("blue")translate([15.1,-1,.55]) rotate([-115,0,5])scale([1,1,1])cylinder(d1=1.25,d2=1.25,2.5);


color("brown")translate([10.25,17,.8]) rotate([105,0,42])cylinder(d1=1.25,d2=1.25,2.5);
color("brown")translate([13.55,11.25,-1.3]) rotate([95,0,5])cylinder(d1=1.25,d2=1.25,2.5);
color("brown")translate([17.35,-1,1.85]) rotate([-80,0,25])scale([1.25,1.5,1])cylinder(d1=1.25,d2=1.25,2.5);


translate([0,19.5,0.75])  rotate([0, 0,40])scale([1,1,1])rotate_extrude(angle= 50)  translate([3,0,0]) scale([1,1,1])circle(d=1);


translate([0,18.3,0-1.4])  rotate([0, 0,40])scale([1,1,1])rotate_extrude(angle= 50)  translate([2,0,0]) scale([1,1,1])circle(d=1);
$fn = 30;


module multi_axxess_peg(){
translate([0,0,-4.15])cylinder(d1=4.8,d2=4.8,8.3);
color("red")translate([9.95,0,0])sphere(d=4.9);
color("red")translate([-9.95,0,0])sphere(d=4.9);

translate([-10,0,0])rotate([0,90,0])cylinder(d1=4.9,d2=4.9, 20);
translate([-3.55,0,0])rotate([0,90,0])cylinder(d1=6,d2=6,7.1);

translate([0,4.15,0])rotate([90,0,0])cylinder(d1=4.8,d2=4.8,8.3);
translate([0,0,-12])cylinder(d1=2.8,d2=2.8,24);
translate([0,12,0])rotate([90,0,0])cylinder(d1=2.8,d2=2.8,24);
color("red")translate([0,0,10.11])sphere(d=5.1);
color("red")translate([0,0,-10.11])sphere(d=5.1);
color("red")translate([0,10.11,0])sphere(d=5.1);
color("red")translate([0,-10.11,0])sphere(d=5.1);
sphere(d=7.8);
}
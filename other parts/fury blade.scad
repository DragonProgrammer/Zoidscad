//angle 1.91 degrees
include <trapazoid test.scad>
//cube([4,105,1],true);
//translate([0,-1,-2.5])cube([1,121,6],true);
//translate([0,-52,-4.5])cube([4,1,10],true);
//translate([0,-56.5,-6])cube([4,10,7],true);
difference(){
translate([0,-52,-9.398])rotate([0,0,90])
    angle_prism(1, 9.398, 1.91, 90);
 //  color("Green")translate([0,89.5,0])rotate([180,0,-90]) angle_prism_W( 281.814,  .5, 9.398, 1.91, 90);
    translate([0,11,-7.3 ])rotate([0,-1.91,90])   trapazoidal_prism_B(95,3,91,3,1);
    }
//translate([0,-52,-8.398])color("green")rotate([0,0,-90])angle_prism(1, 9.398, 90, 1.91);
module seration(){
angle_prism_W(8,2,1.35,45,45);
translate([0,0,-1.5])angle_prism_W(8,2,-1.35,-45,-45);
translate([0,0,-.75])cube([8,2,1.5],true);
translate([0,0,1])cube([2,2.5,4],true);
}


function compute(last_value, iteration=0) =  
    iteration == 0 ? 
        last_value : 
        compute(last_value + 4 + 8*(1.0571428-iteration*.0571428), iteration-1);

function compute2(last_value, iteration=0) =  
    iteration == 0 ? 
        last_value : 
        compute2(last_value +6-(6*(1.0571428-iteration*.0571428)/2), iteration-1);

module sarate(){
    for (i = [1:1:7]){
        offset = compute(0, i-1);
        offset_down = ((6-6*(1.0571428-i*.0571428))/2)/2;
        translate([offset,0,-offset_down])scale([1.0571428-i*.0571428,1,1.0571428-i*.0571428])seration();
   }
   }
translate([0,0,-6.2 ])color("red")rotate([0,-1.91,90]) sarate();
//translate([0,-44,-5])cube([4,15,10],true);   
//translate([0,11,-7.3 ])rotate([0,-1.91,90])   trapazoidal_prism_B(95,3,91,3,1);

include <bracketendb.scad>;
module acutebracket() { 
     translate([-1,,-1.25,-2])rotate([0,45,0]) cube([1,2.5,1]);
    rotate([0,90,180]) bracketendb();
translate([.75,0,-.75]) rotate([0,135,0])  bracketendb();
}
//bracket for flat to angled wings

//requires shaving

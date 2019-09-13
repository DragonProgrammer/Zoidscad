include <longside.scad>;
module hexlong(){
longside();
translate([-base,0,0]) rotate([0,180,0]) longside();
}
// long side in the combined form, usable as piece

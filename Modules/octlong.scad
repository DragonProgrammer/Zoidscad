include <oct.scad>;
module long(){
    oct();
translate([0,base,0]) oct();
translate([0,-base,0]) oct();
}
// octoganal tube with solid fill

module longhollow(){
difference(){
long();
cube([10,10,base], true);
cube([base,10,10], true);
}
}
// lighter octoganal tube
longhollow();
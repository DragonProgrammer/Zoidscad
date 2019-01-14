$fn =30;
module peghole(){
    color("Blue")cylinder (6, .8, .8, true);
}
// the peg hole template, a change in size here changes hole everywhere
module peg(){
    cylinder (6, .8, .8, true);
}

module edge(){
cylinder (5, 3.25, 3.25, true);
}
// a cylinder for making block


module block(){
    intersection(){
edge();
rotate([90,0,0]) edge();
rotate([0, 90, 0]) edge();
}
}
// create the base cube without the holes


module blox(){
difference(){ 
block();
   peghole();
rotate ([90, 0, 0]) peghole();
rotate ([0, 90, 0]) peghole();
}
}
//unembeleshed blox cube

module cross(){
blox();
translate([5,0,0]) blox();
translate([-5,0,0]) blox();
translate([0,0,5]) blox();
translate([0,0,-5]) blox();
}
// central blox cross

module corner(){difference(){
    block();
   translate([-3,-3,3])rotate([0,45,0])
cube([8,6
   ,4]) color("Red");
 rotate([0,90,0])
   translate([0,0,-4]) peghole();
 translate([0,0,-4]) peghole();   
 rotate([0,45,0]) translate([0,0,1])peghole();   
}
}
    
//anled blox piece

module side(){
    blox();
    translate([0,0,5])corner();
translate([0,0,-5]) rotate([0,90,0]) corner();
}
// Pentagram side of octagon, can be own piece

module 3long() {
    blox();
    translate([0,0,5]) blox();
    translate([0,0,-5]) blox();
}

module opcorner(){
    translate([5,0,5]) corner();
translate([-5,0,-5]) rotate([0,180,0])corner();
}
// unused now

module oct() {
3long();
translate([5,0,0]) side();
translate([-5,0,0]) rotate([0,180,0]) side();
}
// one octagon of blox, can be used as own piece

module longside() {
side();
translate([0,5,0]) side();
translate([0,-5,0]) side();
}
// long side can be used as own piece

module hexlong(){
longside();
translate([-5,0,0]) rotate([0,180,0]) longside();
}
// long side in the combined form, usable as piece

module 3X3() {
3long();
translate([0,5,0]) 3long();
translate([0,-5,0]) 3long();
}
// plate of 3X3 blox can be used as own piece

module long(){
    oct();
translate([0,5,0]) oct();
translate([0,-5,0]) oct();
}
// octoganal tube with solid fill

module longhollow(){
difference(){
long();
cube([10,10,5], true);
cube([5,10,10], true);
}
}
// lighter octoganal tube

module test(){
translate([0,0,10]) blox();
rotate([0,45,0]) translate([0,0,9.5]) blox();
}
// set up angle for bracket design
module core() {
    color("Red") translate([0,0,2.5]) blox();
    color("Red");
}
//core();
module caplower(){
CapPoints = [ [0,7.5,0],[5,2.5,0],[5,-2.5,0],[0,-7.5,0],[0,2.35,4.6],[2.35,2.35,4.6],[2.35,-2.35,4.6],[0,-2.35,4.6] ];
CapFaces = [ [0,1,2,3],[1,0,5],[3,2,6],[3,6,7],[3,7,4,0],[2,1,5,6],[5,4,7,6],[4,5,0] ];
polyhedron(CapPoints, CapFaces,convexity = 1);
}
// creates a cap with a petruding blox, needs finetuning
module halfflatcap() {
    CapPoints = [ [0,7.5,0],[5,2.5,0],[5,-2.5,0],[0,-7.5,0],[0,2.5,5],[2.5,2.5,5],[2.5,-2.5,5],[0,-2.5,5] ];
CapFaces = [ [3,2,1,0],[5,0,1],[6,2,3],[7,6,3],[0,4,7,3],[6,5,1,2],[6,7,4,5],[0,5,4] ];
difference(){
    polyhedron(CapPoints, CapFaces,convexity = 1);
translate([2.5,0,-1]) peghole();
translate([0,0,4]) peghole();
}
}
// make half a cao for hex with sides flush with top of blox
module fulflatcap() {
    halfflatcap();
rotate ([0,0,180]) halfflatcap();
}

// make cap for hex with sides flush with top of blox
//no holes yet

module bracketbase(){
    difference(){
rotate([0,30,0])translate([1,0,-1]) cube([5,3,5], true);
translate([-2.5,0,-10]) test();
 translate([-4,-3,-3])cube([3,5,5]);translate([-.5,0,-4.5])rotate([0,30,0]) cube(4.1, true);translate([-4,-2,-5])cube(4);    
  }
}
// bracket for between wings

module prism() {
    polyhedron(
               points=[[0,0,0], [5,0,0], [5,5,0], [0,5,0], [0,5,5], [5,5,5]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}
module edgeshape(){
    cube(5);
    translate([0,-5,0]) prism();
    translate ([0,5,5]) rotate ([-90,0,0]) prism();
}
//translate([0,0,3]) blox();
module bracketend(){
cylinder(1,1.25,1.25);
translate([0,-1.25,0]) cube([5,2.5,1]);
}
rotate ([0,-45,0]) bracketend();
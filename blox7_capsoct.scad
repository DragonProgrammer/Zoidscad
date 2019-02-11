$fn =30;
base =5;
module peghole(){
    color("Blue")cylinder (6, .8, .8, true);
}
// the peg hole template, a change in size here changes hole everywhere
module peg(){
    cylinder (2, .8, .8);
}

module edge(){
cylinder (base, 3.25, 3.25, true);
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
blox();
//unembeleshed blox cube
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
    translate([0,0,base])corner();
translate([0,0,-base]) rotate([0,90,0]) corner();
}
// Pentagram side of octagon, can be own piece

module 3long() {
    blox();
    translate([0,0,base]) blox();
    translate([0,0,-base]) blox();
}
module oct() {
3long();
translate([5,0,0]) side();
translate([-5,0,0]) rotate([0,180,0]) side();
}
// one octagon of blox, can be used as own piece

module longside() {
side();
translate([0,base,0]) side();
translate([0,-base,0]) side();
}
// long side can be used as own piece

module hexlong(){
longside();
translate([-base,0,0]) rotate([0,180,0]) longside();
}
// long side in the combined form, usable as piece

module 3X3() {
3long();
translate([0,base,0]) 3long();
translate([0,-base,0]) 3long();
}
// plate of 3X3 blox can be used as own piece

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

module test(){
translate([0,0,10]) blox();
rotate([0,45,0]) translate([0,0,9.5]) blox();
}
// set up angle for bracket design
module core() {
    color("Red") translate([0,0,2.5]) blox();
    color("Red");
}
// a test blox to position in cap
module caplower(){
CapPoints = [ [0,1.5*base,0],[base,.5*base,0],[base,-.5*base,0],[0,-1.5*base,0],[0,2.35,4.6],[2.35,2.35,4.6],[2.35,-2.35,4.6],[0,-2.35,4.6] ];
CapFaces = [ [0,1,2,3],[1,0,5],[3,2,6],[3,6,7],[3,7,4,0],[2,1,5,6],[5,4,7,6],[4,5,0] ];
polyhedron(CapPoints, CapFaces,convexity = 1);
}
// creates a cap with a petruding blox, needs finetuning
module thirdoctcap() {
    CapPoints = [ [0,1.5*base,0],[base,.5*base,0],[base,-.5*base,0],[0,-1.5*base,0],[0,.5*base,base],[0,-.5*base,base] ];
CapFaces = [ [3,2,1,0],[4,0,1],[5,2,3],,[0,4,5,3],[5,4,1,2]];
difference(){
    polyhedron(CapPoints, CapFaces,convexity = 1);
translate([.5*base,0,-1.5]) peghole();
}
}
//side();
//thirdoctcap();
//translate([-5,0,0]) rotate([0,0,180]) thirdoctcap();
module halfflatcap() {
    CapPoints = [ [0,1.5*base,0],[base,.5*base,0],[base,-.5*base,0],[0,-1.5*base,0],[0,.5*base,base],[.5*base,.5*base,base],[2.5,-.5*base,base],[0,-2.5,base] ];
CapFaces = [ [3,2,1,0],[5,0,1],[6,2,3],[7,6,3],[0,4,7,3],[6,5,1,2],[6,7,4,5],[0,5,4] ];
difference(){
    polyhedron(CapPoints, CapFaces,convexity = 1);
translate([.5*base,0,-1]) peghole();
translate([0,0,4]) peghole();
}
}
// make half a cao for hex with sides flush with top of blox
module fulflatcap() {
    halfflatcap();
rotate ([0,0,180]) halfflatcap();
}
// make cap for hex with sides flush with top of blox
//difference(){
module wingspots(){
    rotate([0,-90,0]) side();
translate([0,0,-base])
union(){
   test();
rotate([0,0,180]) test();
}
}
// test of wing spots,
//why does diference with core not work

module test2() {
difference(){
    wingspots();
translate([0,0,base
   ]) cube(5.005
   ,true);
    //messing with a hairs breadth as blox() ads a tiny hight change
}
//blox();
}
// test for bracket between octagon angles
module bracketendb(){
cylinder(1,1.25,1.25);
translate([0,-1.25,0]) cube([2,2.5,1]);
    peg();
}
module bracketpegs() {
    translate([-4.5,0,2]) rotate ([180,45,0]) bracketendb();
translate([4.5,0,2]) rotate ([0,135,0]) bracketendb();
translate([0,0,.5]) cube([7,2.5,1], true);
translate([0,0,-2]) peg();
}
module acutebracket() { 
     translate([-1,,-1.25,-2])rotate([0,45,0]) cube([1,2.5,1]);
    rotate([0,90,180]) bracketendb();
translate([.75,0,-.75]) rotate([0,135,0])  bracketendb();
}
//bracket for flat to angled wings
module hexwings() {
    translate([0,0,2.5]) wingspots();
rotate([0,180,0]) translate([0,0,2.5]) wingspots();
}
//test rig for hexbody wing placement
module smallrightbrace() {
    translate([-1.7,0,1.7]) rotate([0,135,180]) bracketendb();
translate([1.7,0,1.7])rotate([180,45,180]) bracketendb();
translate([0,0,.3]) cube([2,2.5,1], true);
}
// bracket for angled wings on hex body
//some trimming could be done

//translate([-.5*base,-1.5*base,0]) rotate([90,0,0]) fulflatcap();
//hexlong();
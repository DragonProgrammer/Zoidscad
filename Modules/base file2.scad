//**
//
//@author Michael peterson
//
//@section DESCRIPTION
//
//This base file tries to replicate the actual block by creating a 3 part block
//

//@section CHANGES
// 
//It is noted that the Blox edges are angled not round. Made blox be a cube from cyinder.
// 2/27/20: Noted that file corner()  would need a different core() then this.
// Added editing capabilities to many components to facilitate this.
//@section TEST
//
//
//@section TEST RESULTS
// 
//From test of ball and socket
//Hole size .18in needs to be .205 atleast; peg is .2
//Blox size .598in/~1.5cm compared to the .582in of the blox's un embelished side
//@section IMPROVEMENTS
//
// Add the texturing to the faces and the corner extensions.
//
//@section ALTERNITIVE
//this is the atlernitive.
  



//** 
//@section DEFINES
// 
//Here are the defines used trought the project.
//fn =30 makes the cylinders for the holes be quite round.
//base defines a set size of each BLox face.
$fn =30;
base =15;// enlarged from 5, to allow corect  printing size
Peg =2.5;
//**
//@section DESCRIPTION
//
//This function creates a cylinder, and colors it blue. This is the base used for all future pegs and holes in Blox.
//
module peghole(){
    color("Blue")cylinder (18, 2.5, 2.5, true);
}

module Editpeghole(x){
    color("Blue")
    cylinder(x,2.5,2.5, true);
}
//**
//@section DESCRIPTION
//
// A cylinder for use as bulding block for interior rubber tube
// 1 mm shorter then blox to alow cover over end of ruber by blox
//

module rubber(){
    color("Red")
    cylinder (14, 2.8, 2.8, true);
}
//**
//@section DESCRIPTION
//
// rubber() with a variable legth.
//
module Editrubber(x){
    color("Red")
    cylinder (x, 2.8, 2.8, true);
}

//**
//@section DESCRIPTION
//
//This function makes a hollow tube
//  x long
//  y inner radius
//  z wall width
//
module Editpipe(x,y,z){
    difference(){
cylinder(x, y+z, y+z, true);
cylinder(x+1, y, y, true);
    }
}


//**
//@section DESCRIPTION
//
// Cylinder for creating the void for rubber to sit an and allow peg movement
// 1 shorter then blox width to alow cover over ruber and centering of ruber 
//
module spacer(){
cylinder(14, 3.5,3.5, true);
}
//**
//@section DESCRIPTION
//
// Cylinder for creating the void for rubber to sit and allow peg movement
//  removed 1.2 shortening, hardcode per use
//
module cover(x){
translate([x+.1,0,0])cube([1,15,15], true);
}
module sides(){
    y = 7.5;
    cover(y);

rotate([0,90,0])cover(y);
rotate([0,180,0])cover(y);
rotate([0,-90,0])cover(y);
rotate([0,0,-90])cover(y);
rotate([0,0,90])cover(y);
}


module Editspacer(x){
cylinder(x, 3.5,3.5, true);
}

//**
//@section DESCRIPTION
//
// Spacer on the 3 axis
//
module give(){
    spacer();
rotate ([90, 0, 0]) 
    spacer();
rotate ([0, 90, 0]) spacer();
}
//**
//@section DESCRIPTION
//
// A 2 ended rubber tube for peg insertion. Not al the way hollow to allow conetion between axis.
//
module tube() {
difference(){
rubber();
color("Purple")translate ([0, 0, 2]) peg();
    color("Purple")translate([0,0,-7.5]) peg();
}
}

//@section DESCRIPTION
//
// a cylinder the width of peg to allow Edittube() to be at all legths
module tubecenter(x){
 cylinder (x, 2.4, 2.4, true);
    //true added to open bottom (-Z)of tube, 
}   

module Edittube(x) {
difference(){
Editrubber(x);
    tubecenter(x+.5);
//.5 added to remove tip (+Z) of tube being covered by layer casuse buy tubecenter being trued
}
}

//**
//@section DESCRIPTION
//
// A test peg used for possible later pegged Blox.
//
module peg(){
    cylinder (6, 2.4, 2.4);
}

//**
//@section DESCRIPTION
//
// A peg with a variable legth.
//

module Editpeg(x) {
    cylinder(x, 2.4, 2.4, true);
}

//**
//@section DESCRIPTION
//
// A cylinder that gives the proper edges to the Blox cube.

module edge(){
cylinder (base, 9.75, 9.75, true);
}


//**
//@section DESCRIPTION
//
//This creates the Bloxes cube shape and rounded edges.

module block(){
    intersection(){
edge();
rotate([90,0,0]) edge();
rotate([0, 90, 0]) edge();
}
}


module core(){
    tube();
rotate ([90, 0, 0]) tube();
rotate ([0, 90, 0]) tube();
}
   // core();
//**
//@section DESCRIPTION
//
//The axial holes are added to the block giving it the iconic Blox look. This is the base all other parts stem from.
module blox(){
difference(){ 
block();
   peghole();
rotate ([90, 0, 0]) peghole();
rotate ([0, 90, 0]) peghole();
    give();
}
}

module half(){
    difference(){
        blox();
        rotate([-90,0,0])translate([0, 0,4]) cube([16, 16, 8], true);
    
    }
}
module whole(){
    half();
    rotate([0,0,180])half();
    //core();
}
// set up a vies of object

// souced label funtion from user Parkinbot at http://forum.openscad.org/Display-label-options-td25514.html




module label (text = "label", textsize = 3, pos=[0,0,0], dpos=[10,0,10],
linesize = .2, length =20, anglexyz=[0,45,90])
{
  p1 = pos + dpos;
  //line(pos, p1, linesize);
  translate(p1)rotate([90,0,$vpr[2]])text(text, size = textsize);
}

module labeledBlox(){
label("Case Halfs", pos = [5, 10, 20]);
label("Assembled", pos = [-30, 10, 20]);
label("With Insert", pos = [40, 10, -15]);
label("Insert", pos = [5, 10, -38]);


translate([base, 0, -.5* base]){
core();
half();
}
translate([.5*-base, 0, -.5* base])rotate([0, 0, 90]){
core();
half();
}
translate([-2*base, 0, -.5* base]){whole(); core();}
translate([base, 0, base]) half();
translate([.5*-base, 0, base]) rotate([0, 0, 90]) half();
translate([-2*base, 0, base]) whole();

translate([.5*-base, 0, 2*-base]) core();
}
module peggedHalf(){
translate([.35*base,0, .35*base])cube([1,3,1], true);
translate([.35*-base,0, .35*-base])cube([1,3,1], true);
difference(){
half();
translate([.35*-base,0, .35*base])cube([1.5,3.5,1.5], true); // at 1.1 and 3.1 hole too small when printed
translate([.35*base,0, .35*-base])cube([1.5,3.5,1.5], true);
}
}
//peggedHalf();
//labeledBlox();
//peghole();
//rubber();
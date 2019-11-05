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

module rubber(){
    color("Red")
    cylinder (14, 2.8, 2.8, true);
}
module spacer(){
cylinder(13.8, 3.5,3.5, true);
}    
module give(){
    spacer();
rotate ([90, 0, 0]) 
    spacer();
rotate ([0, 90, 0]) spacer();
}

module tube()
difference(){
rubber();
translate ([0, 0, 2]) peg();
    translate([0,0,-7.5]) peg();
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
}
}

module half(){
    difference(){
        blox();
        translate([0, 0,4]) cube([16, 16, 8], true);
        give();
    }
}
half();
core();
//unembeleshed blox cube
//%blox();
//peghole();
//rubber();
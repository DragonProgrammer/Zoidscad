//**
//
//@author Michael peterson
//
//@section DESCRIPTION
//
//The base file all the others are biult from. THis creates the basic Blox Piece, a cube with cylindrical holes going down its central axises.
//
//@section TEST
//
//Have done one test print. Due to nozzle blocage only got a thin face of Blox printed. Not ennough to do full proof of concept. Hole had to be rounded out due to printer debri.
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
//
//Three part print. Two outer parts and a 'rubbery' internals




//** 
//@section DEFINES
// 
//Here are the defines used trought the project.
//fn =30 makes the cylinders for the holes be quite round.
//base defines a set size of each BLox face.
$fn =30;
base =15; // enlarged from 5, to allow corect  printing size

//**
//@section DESCRIPTION
//
//This function creates a cylinder, and colors it blue. This is the base used for all future pegs and holes in Blox.
//
//@section TESTS
//
// Have done one test print. THin wafer shoed hole to probably be right size. Printing debre needed to be shaved off. Future verification needed.
//
//@section IMPROVEMENTS
//
//See if i can get hole diameter to be a factor of base, instead of hard coding value.
module peghole(){
    color("Blue")cylinder (18, 2.5, 2.5, true);
}
//peg hole enlarged, used to be 6, .8, .8)
//After test print changed from 2.4 to 2.5, need to add slightly more if depending on use ruber inards.

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
//
//@section TEST
//
//Test print showed that Blox face should be the right size. Print was to thin to determine if edges had the right curve.
module edge(){
cylinder (base, 9.75, 9.75, true);
}
//enlarged, used to be base, 3.25,3.25

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
//unembeleshed blox cube
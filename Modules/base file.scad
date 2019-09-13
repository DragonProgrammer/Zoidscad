$fn =30;
base =15; // needs to be 3 larger, used to be 5
module peghole(){
    color("Blue")cylinder (18, 2.4, 2.4, true);
}
// the peg hole template, a change in size here changes hole everywhere
//peg hole enlarged, used to be 6, .8, .8)

module peg(){
    cylinder (6, 2.4, 2.4);
}

module edge(){
cylinder (base, 9.75, 9.75, true);
}
// a cylinder for making block
//enlarged, used to be base, 3.25,3.25


module block(){
    intersection(){
edge();
rotate([90,0,0]) edge();
rotate([0, 90, 0]) edge();
}
}
// create the base cube without the holes
//block();

module blox(){
difference(){ 
block();
   peghole();
rotate ([90, 0, 0]) peghole();
rotate ([0, 90, 0]) peghole();
}
}
//blox();
//unembeleshed blox cube
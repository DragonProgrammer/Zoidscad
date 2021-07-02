include <base file2.scad>
module top(){
intersection(){
rotate([-90,0,0])half();
translate([-10,-10,5.5])cube([20,20,10]);
}
}

difference(){
//blox();
//translate([-10,-10,3])cube([20,20,10]);
//translate([-10,-10,-13])cube([20,20,10]);
}
//**
//@section DESCRIPTION
//
//This function creates the the shape that with difference() will make the void in the center of the blox, edited to work at half blox hieght
//
module removal(){
Editrubber(7);
rotate ([90, 0, 0]) rubber();
rotate ([0, 90, 0]) rubber();
Editspacer(7);
rotate ([90, 0, 0]) Editspacer(13);
rotate ([0, 90, 0]) Editspacer(13);
peghole();
rotate ([90, 0, 0]) peghole();
rotate ([0, 90, 0]) peghole();
}

//**
//@section DESCRIPTION
//
//This seperates the peg insert into seprate parts
//  with the 'vertical' piece straight throu,
//
//@section TODO
//
//This central wall -- added to suport a vertical
//  pass throu as just removal did not have any area
//  to suport vertical rubber -- may cause the
//  'horazontal' pegs to not fully insert
//
//Need to run tests once i get a rubberizing method 
//
//@section NOTE
//
//ToDo still relevent, function not used as method of 
//  creating T_B_surfaces() preseves old spacers,
//  leaving vertical pipe supened in air

module seperated_core_area(){
    difference(){
        removal();
       Editpipe(7.5,3,.5);
    }
}


module middle(){
intersection(){
cube([base,base,.5*base], true);
    block();
}
}

//**
//@section DESCRIPTION
//
//This 1/2 sized blox doesn't have vertial peg use;
// left to show show why seperated_core_area() made
//
module blox_half_sized(){
difference(){
    block_half_sized();
    removal();
}
}
//**
//@section DESCRIPTION
//
//This 1/2 sized blox allows vertical peg use;
// left to show show why seperated_core_area() made
//
module blox_half_sized_vertical(){
difference(){
    block_half_sized();
    removal();
}
 Editpipe(7.5,3,.5);
}


module block_half_sized(){    
intersection(){
    middle();
    union(){
        T_B_surfaces();
        cube([base,base,5], true);
    }
}
}

module T_B_surfaces(){
union(){
 intersection(){
  union(){
   translate([0,0,2.75])cube([base,base,2], true);
   translate([0,0,-2.75])cube([base,base,2], true);
}
 union(){
  translate([0,0,-3.75])top();
  translate([0,0,3.75])rotate([180,0,0])top();
}
}
}
}

blox_half_sized_vertical();

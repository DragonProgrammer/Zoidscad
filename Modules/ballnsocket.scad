//**
//@author Michael peterson
//
//@section DESCRIPTION
//
// THis creates a Blox with a ball and socket joint. It takes two of these to make the joint as each has a socket on one end and a ball on the other.
//
//@section TEST
//
// Need to test how big the spacing is between Blox. Want to try and get it to normal 2 or three legths at most.
// Need to see if socket has enough give.

include <base file.scad>;
//**
//@section DESCRIPTION
//
//This section sets up what is rememved to make the fingers of the socket. THe socket iself is built in another function.
module Remove() {translate([-7.5,-2,0]) cube([15,4,7], 0);
translate([-2,-7.5,0]) cube([4,15,7], 0);
translate([-7.5,-7.5,5] )cube([15,15,4],0);
}
//**
//
//@section DESCRIPTION
//
//THis createds the soket for the joint.
module socket() {
    difference(){
sphere(6);
translate([0,0,-3]) Remove();
sphere(5);    
}
}
//**
//
//@section DESCRIPTION
//
//THis is the complete ball and socket. The ball just fitits into the socket.
module balljoint(){
    rotate([0,0,45]) cylinder(5,8,0,0,$fn=4);
difference(){
    translate([0,0,-7.5]) blox();
    translate([0,0,-18]) sphere(5);
}
translate([0,0,6]) sphere(5);
translate([0,0,-18])rotate([180,0,0]) socket();
}
//balljoint();
//translate([0,0,24]) color("red") balljoint();
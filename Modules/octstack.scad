include <octfilled.scad>

//research into printing rubbery insert caused redesign of method. New design aimed toward painting rubery urathane onto frame.

// new design explored in octStackCup.scad
module halfstack(){
difference(){
    halfoct();
    cube([30,20,15], true);
rotate([0,90,0])cube([30,20,15], true);
rotate([0,45,0])cube([30,20,15], true);
    rotate([0,-45,0])cube([30,20,15], true);
}
}
module stack(){
halfstack();
rotate([180,0,0])translate([0,base,0])halfstack();
}

module stackpeg2(){
translate([1.35*base,3,.4*base])rotate([90,0,0])cylinder(20,1,1);
;}
module stackpeg(){
translate([1.35*base,3,-.4*base])rotate([90,0,0])cylinder(20,1.1,1.1);
;}
module stackpegger(){
    rotate([0,90,0])color("Green")stackpeg2();
rotate([0,-90,0])color("Green")stackpeg2();
rotate([0,180,0])color("Green")stackpeg2();

color("Green")stackpeg2();
}
module stackholes(){
    rotate([0,90,0])color("Red")stackpeg();
rotate([0,-90,0])color("Red")stackpeg();
rotate([0,180,0])color("Red")stackpeg();

color("Red")stackpeg();
}
module peggedStack(){
stackpegger();
difference(){ 
stack();
stackholes();
}
}
module croppedOctCore(){
difference(){
    octedgecore();
    cube([28,20,15], true);
rotate([0,90,0])cube([28,20,15], true);
rotate([0,45,0])cube([28,15,10], true);
    rotate([0,-45,0])cube([28,20,10], true);
}
}
module labeled_display(){ //WIP
label("Stackable Octogans", pos = [5, 10, 20]);
translate([2.5*base,0,0]){croppedOctCore();
translate([5*-base,0,0]) peggedStack();
peggedStack();
translate([2.5*-base,0, 2.5*-base]) croppedOctCore();
}
}


module coolShape(){
cylinder(5,5,1);
    rotate([0,90,0])color("Red")cylinder(5,5,1);
rotate([0,-90,0])color("Red")cylinder(5,5,1);
rotate([0,180,0])cylinder(5,5,1);
}


//coolShape();
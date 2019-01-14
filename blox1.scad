$fn =30;
module peghole(){
    color("Blue")cylinder (6, 1, 1, true);
}

module edge(){
cylinder (5, 3.25, 3.25, true);
}
module block(){
    intersection(){
edge();
rotate([90,0,0]) edge();
rotate([0, 90, 0]) edge();
}
}
module blox(){
difference(){ 
block();
   peghole();
rotate ([90, 0, 0]) peghole();
rotate ([0, 90, 0]) peghole();
}
}
module cross(){
blox();
translate([5,0,0]) blox();
translate([-5,0,0]) blox();
translate([0,0,5]) blox();
translate([0,0,-5]) blox();
}

blox();
//cross();
//rotate([0,45,0]) cross();
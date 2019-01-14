$fn =30;
module peghole(){
    color("Blue")cylinder (6, .8, .8, true);
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
module corner(){difference(){
    block();
   translate([-3,-3,3])rotate([0,45,0])
cube([8,6
   ,4]) color("Red");
 rotate([0,45,0]) peghole();   
}
}
module opcorner(){
    translate([5,0,5]) corner();
translate([-5,0,-5]) rotate([0,180,0])corner();
}
module oct() {
    opcorner();
rotate([0,90,0]) opcorner();
    cross();
}
module long(){
    oct();
translate([0,5,0]) oct();
translate([0,-5,0]) oct();
}
//difference(){
//long();
//cube([10,10,5], true);
//cube([5,10,10], true);
//}
module test(){
translate([0,0,10]) blox();
rotate([0,45,0]) translate([0,0,9.5]) blox();
}
module bracketbase(){
    difference(){
rotate([0,30,0])translate([1,0,-1]) cube([5,3,5], true);
translate([-2.5,0,-10]) test();
 translate([-4,-3,-3])cube([3,5,5]);translate([-.5,0,-4.5])rotate([0,30,0]) cube(4.1, true);translate([-4,-2,-5])cube(4);    
  }
}
bracketbase();



//translate([3.25,0,3.25]) rotate([0,45,0]) block();
//difference(){
    //translate([2.5,0,10]) bracketbase();
//test();
//oct();

//rotate([0,45,0]) cross();
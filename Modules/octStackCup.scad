include <octstack.scad>
//this design changes how the rubber insert are implemented.

//Past designs have had each insert be one piece for the layer. With these inserts being conected versions of the core() from the base file2, edited as needed for new angles

//In Octstack the unused frame, and insert interiors were removed to reduce wieght and material cost, this oppened the problem for the insert to be pushed into the empty interior.

//Several fixes that added parts post print and a few that anded braces within print to grip the insert.

//It was noted that the Z axis of the inser was not being used so nessesitated a streamlinging of the insert.

    //As each hole only need a short legth going along its axis much of the insert is unneeded
    //Removeing the unused portions leaves us with 8 uncontected tubes.

    //As we do not want to accidentily push are pins into the center of the stack we need to cap an end of the tubes, either with resin plate or rubber.
    //TO avoide the plate from craking under prolonged abuse both are desinged into this implimentation.
    

//While researching how to print flexible inserts it was noted that those material were known to be hard to print in resin or filiment.

//A fix to this would be coating the areas for the pegs in polyurathane. 
//This implementation will be designed for being painted, but will have the inserts designed in case a method is found for printing them.
module cupPainted(){difference(){
            union(){
        translate([0,0,-2.11])Editrubber(.5);    
        translate([0,0,.4])color("red")Edittube(4.5);
            } 
            translate([0,.25*base,.4])cube([5.6,.5*base,7.01], true);
        }}
        
module cupHolderPaint(){ //this version ignores the space for ruber mover implemented with the insert
        difference(){
        translate([0,.25*-base,0])color("black")cube([.5*base,.5*base,6], true);  
          translate([0,-6,4])cube([15,5,5], true); 
        translate([0,0,.57])color("green")Editrubber(6);
         
        }
        
        }
module cupsPainted(){
rotate([0,180,0])union(){
rotate([0,90,0]) union(){
translate([0,0,1.28*base])cupPainted();
rotate([0,45,0])translate([0,0,1.2*base])cupPainted();
}
translate([0,0,1.28*base])cupPainted();
rotate([0,45,0])translate([0,0,1.2*base])cupPainted();
}

union(){
rotate([0,90,0]) union(){
translate([0,0,1.28*base])cupPainted();
rotate([0,45,0])translate([0,0,1.2*base])cupPainted();
}
translate([0,0,1.28*base])cupPainted();
rotate([0,45,0])translate([0,0,1.2*base])cupPainted();
}
}
module holdersPlaced(){
//core();translate([0,0,2.7])cube([3,3,4.5]);
rotate([0,180,0])union(){
rotate([0,90,0]) union(){
translate([0,0,1.28*base])cupHolderPaint();
rotate([0,45,0])translate([0,0,1.2*base])cupHolderPaint();
}
translate([0,0,1.28*base])cupHolderPaint();
rotate([0,45,0])translate([0,0,1.2*base])cupHolderPaint();
}

union(){
rotate([0,90,0]) union(){
translate([0,0,1.28*base])cupHolderPaint();
rotate([0,45,0])translate([0,0,1.2*base])cupHolderPaint();
}
translate([0,0,1.28*base])cupHolderPaint();
rotate([0,45,0])translate([0,0,1.2*base])cupHolderPaint();
}
}
//halfstack();
difference(){
//croppedOctCore();
//translate([0,3,0])cube([50,5,50], true);
}

//cupHolderPaint();
//tube();
//spacer();
//holdersPlaced();
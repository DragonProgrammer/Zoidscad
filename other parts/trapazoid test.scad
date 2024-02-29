module a(){
polyhedron(
points=[ 
//lower layer
[-10,10,0], //0 -X +Y
[10,10,0], //1 +X +Y
[10,-10,0], //2 +X -Y
[-10,-10,0], //3 -X -Y 


// uper layer
[-5,5,5], //4 -X +Y
[5,5,5], //5 +X +Y
[5,-5,5], //6 +X -Y
[-5,-5,5] //7 -X -Y 
],
 
faces=[ 
 [0,3,2,1],  // bottom  K
  [5,4,0,1],  // front K
  [4,5,6,7],  // top
  [1,2, 6,5],  // right K
  [7,6,2,3],  // back K
  [4,7,3,0]] // left K
  );
  }
  module a_vertex(){
  translate([-10,10,0])color("white")cube([.5,.5,.5],true); //0
  translate([10,10,0])color("blue")cube([.5,.5,.5],true); //1
  translate([10,-10,0])color("green")cube([.5,.5,.5],true); //2
  translate([-10,-10,0])color("black")cube([.5,.5,.5],true); //3
  translate([-5,5,5])color("red")cube([.5,.5,.5],true); //4
  translate([5,5,5])color("teal")cube([.5,.5,.5],true); //5
  translate([5,-5,5])color("maroon")cube([.5,.5,.5],true); //6
  translate([-5,-5,5])color("grey")cube([.5,.5,.5],true); 
  }
  module b(){
  polyhedron(
points=[ 
//lower layer
[-10,7,0], //0 -X +Y
[-7,10,0], //1
[7,10,0], // 2 +X +Y
[10,7,0], // 3 
[10,-7,0], //4 +X -Y
  [7,-10,0],//5
[-7,-10,0], //6 -X -Y
 [-10,-7,0], //7


// uper layer
[-7,7,5], //8 -X +Y  was 4
[7,7,5], //9 +X +Y   was 5
[7,-7,5], //10 +X -Y
[-7,-7,5] //11 -X -Y 
],
 
faces=[ 
 [0,7,6,5,4,3,2,1],  //K
 [0,1,8], //K
 [2,3,9], //K
 [4,5,10], //K
 [6,7,11], //K
  [1,2,9,8],  //K
  [8,9,10,11],  // K
  [10,9,3,4],  // K
  [11,10,5,6],  // K
  [0,8,11,7] //K
  ] // left
  );
  }
 // b();
 module c_vertex(){
  translate([-10,7,0])color("white")cube([.5,.5,.5],true); //0
  translate([-7,10,0])color("blue")cube([.5,.5,.5],true); //1
  translate([7,10,0])color("green")cube([.5,.5,.5],true); //2
  translate([10,7,0])color("black")cube([.5,.5,.5],true); //3
  translate([10,-7,0])color("red")cube([.5,.5,.5],true); //4
  translate([7,-10,0])color("teal")cube([.5,.5,.5],true); //5
  translate([-7,-10,0])color("maroon")cube([.5,.5,.5],true); //6
  translate([-10,-7,0])color("grey")cube([.5,.5,.5],true); //7
  
    translate([-7,7,5])color("pink")cube([.5,.5,.5],true);
  translate([7,7,5])color("purple")cube([.5,.5,.5],true);
  translate([7,-7,5])color("cyan")cube([.5,.5,.5],true); //10
  translate([-7,-7,5])color("orange")cube([.5,.5,.5],true); //11
 }
  
  module trapazoidal_prism(X1, Y1, X2, Y2, Z){
      polyhedron(
points=[ 
//lower layer
[-.5*X1,.5*Y1,0], //0 -X +Y
[.5*X1,.5*Y1,0], //1 +X +Y
[.5*X1,-.5*Y1,0], //2 +X -Y
[-.5*X1,-.5*Y1,0], //3 -X -Y 


// uper layer
[-.5*X2,.5*Y2,Z], //4 -X +Y
[.5*X2,.5*Y2,Z], //5 +X +Y
[.5*X2,-.5*Y2,Z], //6 +X -Y
[-.5*X2,-.5*Y2,Z] //7 -X -Y 
],
 
faces=[ 
 [0,3,2,1],  // bottom  K
  [5,4,0,1],  // front K
  [4,5,6,7],  // top
  [1,2, 6,5],  // right K
  [7,6,2,3],  // back K
  [4,7,3,0]] // left
  );
  
  }
  
   module trapazoidal_prism_B(X1, Y1, X2, Y2, Z){
      //lower layer
        polyhedron(
points=[ 
[-.5*X1,.5*Y1-((Y1-Y2)/2),0], //0 -X +Y
[-1*(.5*X1-((X1-X2)/2)),.5*Y1,0], //1
[.5*X1-((X1-X2)/2),.5*Y1,0], // 2 +X +Y
[.5*X1,.5*Y1-((Y1-Y2)/2),0], // 3 
[.5*X1,-1*(.5*Y1-((Y1-Y2)/2)),0], //4 +X -Y
  [.5*X1-((X1-X2)/2),-.5*Y1,0],//5
[-1*(.5*X1-((X1-X2)/2)),-.5*Y1,0], //6 -X -Y
 [-.5*X1,-1*(.5*Y1-((Y1-Y2)/2)),0], //7


// uper layer
       

[-.5*X2,.5*Y2,Z], //8 -X +Y  was 4
[.5*X2,.5*Y2,Z], //9 +X +Y   was 5
[.5*X2,-.5*Y2,Z], //10 +X -Y
[-.5*X2,-.5*Y2,Z] //11 -X -Y 
],
 
faces=[ 
 [0,7,6,5,4,3,2,1],  //K
 [0,1,8], //K
 [2,3,9], //K
 [4,5,10], //K
 [6,7,11], //K
  [1,2,9,8],  //K
  [8,9,10,11],  // K
  [10,9,3,4],  // K
  [11,10,5,6],  // K
  [0,8,11,7] //K
  ]  // left
  );
  }
  
     module octogon_extrude(X1, Y1, X2, Y2, Z){
      //lower layer
linear_extrude(Z)
        polygon(
points=[ 
[-.5*X1,.5*Y1-((Y1-Y2)/2)], //0 -X +Y
[-1*(.5*X1-((X1-X2)/2)),.5*Y1], //1
[.5*X1-((X1-X2)/2),.5*Y1], // 2 +X +Y
[.5*X1,.5*Y1-((Y1-Y2)/2)], // 3 
[.5*X1,-1*(.5*Y1-((Y1-Y2)/2))], //4 +X -Y
  [.5*X1-((X1-X2)/2),-.5*Y1],//5
[-1*(.5*X1-((X1-X2)/2)),-.5*Y1], //6 -X -Y
 [-.5*X1,-1*(.5*Y1-((Y1-Y2)/2))], //7
]
 
      );
  }
  module offset_trapazoidal_prism(X1, Y1, X2, Y2, X3, Y3, Z){
      polyhedron(
points=[ 
//lower layer
[-.5*X1,.5*Y1,0], //0 -X +Y
[.5*X1,.5*Y1,0], //1 +X +Y
[.5*X1,-.5*Y1,0], //2 +X -Y
[-.5*X1,-.5*Y1,0], //3 -X -Y 

// uper layer
[-.5*X2+X3,.5*Y2+Y3,Z], //4 -X +Y
[.5*X2+X3,.5*Y2+Y3,Z], //5 +X +Y
[.5*X2+X3,-.5*Y2+Y3,Z], //6 +X -Y
[-.5*X2+X3,-.5*Y2+Y3,Z] //7 -X -Y 
],
 
faces=[ 
 [0,3,2,1],  // bottom  K
  [5,4,0,1],  // front K
  [4,5,6,7],  // top
  [1,2, 6,5],  // right K
  [7,6,2,3],  // back K
  [4,7,3,0]] // left
  );
  
  }
  
module simplified_offset_trapazoidal_prism(D1, D2, X1, Y1, Z){
      polyhedron(
points=[ 
//lower layer
[-.5*D1,.5*D1,0], //0 -X +Y
[.5*D1,.5*D1,0], //1 +X +Y
[.5*D1,-.5*D1,0], //2 +X -Y
[-.5*D1,-.5*D1,0], //3 -X -Y 

// uper layer
[-.5*D2+X1,.5*D2+Y1,Z], //4 -X +Y
[.5*D2+X1,.5*D2+Y1,Z], //5 +X +Y
[.5*D2+X1,-.5*D2+Y1,Z], //6 +X -Y
[-.5*D2+X1,-.5*D2+Y1,Z] //7 -X -Y 
],
 
faces=[ 
 [0,3,2,1],  // bottom  K
  [5,4,0,1],  // front K
  [4,5,6,7],  // top
  [1,2, 6,5],  // right K
  [7,6,2,3],  // back K
  [4,7,3,0]] // left
  );
  
  }

  module trig_test(Ang, Op, Base){
      polygon([ [-1*(.5*Base-(Op/tan(Ang))),Op],
      [.5*Base-Op/tan(Ang),Op], 
      [.5*Base,0],
      [-.5*Base,0]]);
  }
    module trig_test_2(Ang, Ang2, Op, Base){
      polygon([ [-1*(.5*Base-(Op/tan(Ang))),Op],
      [.5*Base-Op/tan(Ang2),Op], 
      [.5*Base,0],
      [-.5*Base,0]]);
  }

  
  
  module angle_prism(D, Z, Ang1, Ang2){
            polyhedron(
points=[ 
//lower layer
[-.5*D,.5*D,0], //0 -X +Y
[.5*D,.5*D,0], //1 +X +Y
[.5*D,-.5*D,0], //2 +X -Y
[-.5*D,-.5*D,0], //3 -X -Y 

// uper layer
[-1*(.5*D-(Z/tan(Ang1))),.5*D,Z], //4 -X +Y
[.5*D-(Z/tan(Ang2)),.5*D,Z], //5 +X +Y
[.5*D-(Z/tan(Ang2)),-.5*D,Z], //6 +X -Y
[-1*(.5*D-(Z/tan(Ang1))),-.5*D,Z] //7 -X -Y 
],
 
faces=[ 
 [0,1,2,3],  // bottom  K
  [0,4,5,1],  // front K
  [4,7,6,5],  // top
  [1,5, 6,2],  // right K
  [7,3,2,6],  // back K
  [4,0,3,7]] 
  );
  
  }
  
  module angle_prism_W(X, Y, Z, Ang1, Ang2){
            polyhedron(
points=[ 
//lower layer
[-.5*X,.5*Y,0], //0 -X +Y
[.5*X,.5*Y,0], //1 +X +Y
[.5*X,-.5*Y,0], //2 +X -Y
[-.5*X,-.5*Y,0], //3 -X -Y 

// uper layer
[-1*(.5*X  -(Z/tan(Ang1))),.5*Y,Z], //4 -X +Y
[.5*X-(Z/tan(Ang2)),.5*Y,Z], //5 +X +Y
[.5*X-(Z/tan(Ang2)),-.5*Y,Z], //6 +X -Y
[-1*(.5*X-(Z/tan(Ang1))),-.5*Y,Z] //7 -X -Y 
],
 
faces=[ 
 [0,1,2,3],  // bottom  K
  [0,4,5,1],  // front K
  [4,7,6,5],  // top
  [1,5, 6,2],  // right K
  [7,3,2,6],  // back K
  [4,0,3,7]] 
  );
  
  }
  
  
  module 4_angle_prism_W(X, Y, Z, Ang1, Ang2, Ang3, Ang4){
      //(Width, depth, heith, angle -x side, angle +x side, angle +y side, angle - y side
            polyhedron(
points=[ 
//lower layer
[-.5*X,.5*Y,0], //0 -X +Y
[.5*X,.5*Y,0], //1 +X +Y
[.5*X,-.5*Y,0], //2 +X -Y
[-.5*X,-.5*Y,0], //3 -X -Y 

// uper layer
[-1*(.5*X  -(Z/tan(Ang1))),.5*Y-(Z/tan(Ang3)),Z], //4 -X +Y
[.5*X-(Z/tan(Ang2)),.5*Y-(Z/tan(Ang3)),Z], //5 +X +Y
[.5*X-(Z/tan(Ang2)),-1*(.5*Y  -(Z/tan(Ang4))),Z], //6 +X -Y
[-1*(.5*X-(Z/tan(Ang1))),-1*(.5*Y  -(Z/tan(Ang4))),Z] //7 -X -Y 
],
 
faces=[ 
// [0,3,2,1],  // bottom  K
  [5,4,0,1],  // front K
  [4,5,6,7],  // top
 // [1,2, 6,5],  // right K
  [7,6,2,3],  // back K
  [4,7,3,0]] // left
  );
  
  }
  
  //4_angle_prism_W(25, 10, 5, 80, 45, 60, 90);
  difference(){
  //translate([0,-52,-9.398])rotate([0,0,-90])angle_prism(10, 9.398, 90, 90);
    //translate([0,11,-7.3 ])rotate([0,-1.91,90])   trapazoidal_prism_B(95,3,91,3,1);
//translate([0,11,-7.3 ])rotate([0,-1.91,90])   cube([95,4,4]);
  }
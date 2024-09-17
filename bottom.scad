 $fn=32;
 
radius = 3; 
height=  12;
width = 66-radius-radius;
length = 123+16-radius-radius;


difference(){
translate([-3,-5,0])
   
    hull(){
            translate([0,0,0]){
            cylinder(r=radius,h=height+2);
            }
            translate([width,0,0]){
            cylinder(r=radius,h=height+2);
            }
            translate([0,length,0]){
            cylinder(r=radius,h=height+2);
            }
            translate([width,length,0]){
            cylinder(r=radius,h=height+2);
            }
        }
        
     //inner cutoff   
     translate([-0.5,-0.5,2])
        difference (){
        cube ([width+3.5, length-10+1,height]); 
     //DSUB 50 support
        cube ([20,74,4]);
     // below support       
        translate([54,26,0])
        cube ([10,123,height-2]); 
        translate([54,0,0])
        cube ([10,123,height-4]);     
      // rs232 support 
        translate([35,90,0])
        cube ([7,123,height-2]);         
        }
        
    //DSUB 50 cutoff   
        
    translate([9,6,0]){
    cylinder(r=4,h=4);
    cylinder(r=1.5,h=6);
    }       
      
    translate([9,6+61.1,0]){
    cylinder(r=4,h=4);   
    cylinder(r=1.5,h=6);   
    }   
    translate([9-13/2,6+(61.1-54)/2,0])
    cube ([13, 54,height]);
   
    translate([9-8/2,6,0])
    cube ([8, 61.1,4]);
    
    translate([1.5,6+(61.1-56)/2,5])
    cube ([15, 56,4]);
    
     // cutoff  for screw (rear of 7075)
    translate ([57,116,0])
    cylinder(r=4,h=3);
    
    translate ([-2.5,116,0])
    cylinder(r=4,h=3);
    
     // cutoff  for screw
    translate([-6,31,0])
    cube ([4, 10,height+2]);   
    
    // hole for screw 
    translate([10,-4,0])
    cylinder(r=1.5,h=20);   
    
    translate([10+30,-4,0])
    cylinder(r=1.5,h=20); 
    
    translate([10,-4+123+8,0])
    cylinder(r=1.5,h=20); 
    
    translate([10+30,-4+123+8,0])
    cylinder(r=1.5,h=20); 
  // hole for nuts  
   
    translate([10,-4,0])
    cylinder(r=3.3,h=5,$fn=6);  
     
    translate([10+30,-4,0])
    cylinder(r=3.3,h=5,$fn=6); 
    
    translate([10,-4+123+8,0])
    cylinder(r=3.3,h=5,$fn=6); 
    
    translate([10+30,-4+123+8,0])
    cylinder(r=3.3,h=5,$fn=6); 
    
   
        
    }
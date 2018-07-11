/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
motor type: 2 Grains 29 mm
part: nozzle
*/
nozzle_length= 21.45;
nozzle_throat= 4.7625;
nozzle_outside_diam = 25;
oring_depth=1.42;
oring_height=2.24;
nozzle_shoulder_diameter = 23.92;
nozzle_shoulder_length = 5;
nozzle_exit_diameter = 9.999;
nozzle_exit_cone_height =9.77;
nozzle_in_diameter = 17;
nozzle_in_height = 5.5;
$fn=150;
difference () {
    union() {
    cylinder(r=nozzle_outside_diam/2, h =nozzle_length-nozzle_shoulder_length);
    translate([0,0,nozzle_length-nozzle_shoulder_length]) cylinder(r= nozzle_shoulder_diameter/2, h=nozzle_shoulder_length);
    }

    //o-ring 
    translate ([0,0, (nozzle_length-nozzle_shoulder_length)/2 ]) difference () {
    cylinder(r= (nozzle_outside_diam/2) , h = oring_height);
    cylinder(r= (nozzle_outside_diam/2) - oring_depth, h = oring_height);
    }
    //nozzle throat
    cylinder(r=nozzle_throat/2, h=nozzle_length);

    //nozzle convergent cone
    translate([0,0,nozzle_length-nozzle_in_height])cylinder(r1 = nozzle_throat/2, r2= nozzle_in_diameter/2, h = nozzle_in_height);
    
    //nozzle exit cone (divergent)
    #cylinder(r1=nozzle_exit_diameter/2, r2 =nozzle_throat/2, h = nozzle_exit_cone_height);
}

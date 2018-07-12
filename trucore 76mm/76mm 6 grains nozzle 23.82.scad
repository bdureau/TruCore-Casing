/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
motor type: 6 grains 76 mm
part: nozzle
*/
nozzle_length= 76.2;
nozzle_throat= 23.82;
nozzle_exit_diameter = 52.48;
nozzle_outside_diam = 69.49;
nozzle_exit_cone_height =53.34;
oring_depth=3;
oring_height=4;
nozzle_shoulder_diameter = 66.23;
nozzle_shoulder_length = 15;
nozzle_in_diameter = 54.23;
nozzle_in_height = 18.36;

$fn=150;
difference () {
    union() {
    cylinder(r=nozzle_outside_diam/2, h =nozzle_length-nozzle_shoulder_length);
    translate([0,0,nozzle_length-nozzle_shoulder_length]) cylinder(r= nozzle_shoulder_diameter/2, h=nozzle_shoulder_length);
    }

    //o-ring 
    translate ([0,0, (13) ]) difference () {
    cylinder(r= (nozzle_outside_diam/2) , h = oring_height);
    cylinder(r= (nozzle_outside_diam/2) - oring_depth, h = oring_height);
    }
    translate ([0,0, (42) ]) difference () {
    cylinder(r= (nozzle_outside_diam/2) , h = oring_height);
    cylinder(r= (nozzle_outside_diam/2) - oring_depth, h = oring_height);
    }
    //nozzle throat
    cylinder(r=nozzle_throat/2, h=nozzle_length);

    translate([0,0,nozzle_length-nozzle_in_height])cylinder(r1 = nozzle_throat/2, r2= nozzle_in_diameter/2, h = nozzle_in_height);
    cylinder(r1=nozzle_exit_diameter/2, r2 =nozzle_throat/2, h = nozzle_exit_cone_height);
}

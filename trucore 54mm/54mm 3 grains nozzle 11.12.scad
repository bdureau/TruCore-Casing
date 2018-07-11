/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
motor type: 3 grains 54 mm
part: nozzle
*/
nozzle_length= 44.45;
nozzle_throat= 11.12;
nozzle_exit_diameter = 23.7;
nozzle_outside_diam = 48.8;
nozzle_exit_cone_height =23.5;
oring_depth=2.9;
oring_height=3.8;
nozzle_shoulder_diameter = 46.5;
nozzle_shoulder_length = 8;
nozzle_in_diameter = 37;
nozzle_in_height = 11.54;

$fn=150;
difference () {
    union() {
    cylinder(r=nozzle_outside_diam/2, h =nozzle_length-nozzle_shoulder_length);
    translate([0,0,nozzle_length-nozzle_shoulder_length]) cylinder(r= nozzle_shoulder_diameter/2, h=nozzle_shoulder_length);
    }

    //o-ring 
    translate ([0,0, (16) ]) difference () {
    cylinder(r= (nozzle_outside_diam/2) , h = oring_height);
    cylinder(r= (nozzle_outside_diam/2) - oring_depth, h = oring_height);
    }
    //nozzle throat
    cylinder(r=nozzle_throat/2, h=nozzle_length);

    translate([0,0,nozzle_length-nozzle_in_height])cylinder(r1 = nozzle_throat/2, r2= nozzle_in_diameter/2, h = nozzle_in_height);
    cylinder(r1=nozzle_exit_diameter/2, r2 =nozzle_throat/2, h = nozzle_exit_cone_height);
}

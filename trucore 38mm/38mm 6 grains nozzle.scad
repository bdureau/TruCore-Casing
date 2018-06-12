/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
motor type: 6 Grains 38 mm
part: nozzle

This need to be double checked
*/

nozzle_length= 34.29;
nozzle_throat= 11.2;
nozzle_outside_diam = 33.60;
oring_depth=2.9;
oring_height=3.8;
nozzle_shoulder_diameter = 32.1;
nozzle_shoulder_length = 7;
nozzle_exit_diameter = 21;
$fn=150;
difference () {
    union() {
    cylinder(r=nozzle_outside_diam/2, h =nozzle_length - nozzle_shoulder_length);
    translate([0,0,nozzle_length - nozzle_shoulder_length]) cylinder(r= nozzle_shoulder_diameter/2, h=nozzle_shoulder_length);
    }

    //o-ring 
    translate ([0,0, (nozzle_length - nozzle_shoulder_length)/2 ]) difference () {
    cylinder(r= (nozzle_outside_diam/2) , h = oring_height);
    cylinder(r= (nozzle_outside_diam/2) - oring_depth, h = oring_height);
    }
    //nozzle throat
    cylinder(r=nozzle_throat/2, h=nozzle_length);

    //translate([0,0,21+ 13])sphere(r= 13);
    translate([0,0,25])cylinder(r1 = nozzle_throat/2, r2= 26/2, h = nozzle_length -25);
    cylinder(r1=nozzle_exit_diameter/2, r2 =nozzle_throat/2, h = 16);
}

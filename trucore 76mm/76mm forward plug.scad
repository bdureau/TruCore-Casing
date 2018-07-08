/*
Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 10/06/2018
motor type: 76 mm 
part: standard forward closure
This is used for all the 76mm motors
closure outside diameter: 69.47 mm
closure Lenght: 32.26 mm
closure shoulder diameter: 66.26 mm
shoulder lenght: 9 mm
*/

closure_diameter = 69.47;
closure_lenght= 32.26;
closure_shoulder_diameter = 66.26;
closure_shoulder_lenght = 9;
oring_depth=2.9;
oring_height=3.6;
$fn=150;

difference () {union() {
    cylinder(r=closure_diameter/2, h =closure_lenght-closure_shoulder_lenght);
    translate([0,0,closure_lenght-closure_shoulder_lenght]) cylinder(r= closure_shoulder_diameter/2, h=closure_shoulder_lenght);
}
translate ([0,0, (5.17) -(oring_height/2)]) difference () {
    cylinder(r= (closure_diameter/2) , h = oring_height);
    cylinder(r= (closure_diameter/2) - oring_depth, h = oring_height);
}
translate ([0,0, (13.5) -(oring_height/2)]) difference () {
    cylinder(r= (closure_diameter/2) , h = oring_height);
    cylinder(r= (closure_diameter/2) - oring_depth, h = oring_height);
}
}
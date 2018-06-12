/*
Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 10/06/2018
motor type: 54 mm 4 grains
part: standard forward closure
This is used for all the 54mm motors
closure outside diameter: 48.50 mm
closure Lenght: 16,51 mm
closure shoulder diameter: 47 mm
shoulder lenght: 7 mm
*/

closure_diameter = 48.8;
closure_lenght= 17.78;
closure_shoulder_diameter = 46.5;
closure_shoulder_lenght = 7;
oring_depth=2.9;
oring_height=3.8;
$fn=150;

difference () {union() {
    cylinder(r=closure_diameter/2, h =closure_lenght-closure_shoulder_lenght);
    translate([0,0,closure_lenght-closure_shoulder_lenght]) cylinder(r= closure_shoulder_diameter/2, h=closure_shoulder_lenght);
}
translate ([0,0, ((closure_lenght-closure_shoulder_lenght)/2) -(oring_height/2)]) difference () {
    cylinder(r= (closure_diameter/2) , h = oring_height);
    cylinder(r= (closure_diameter/2) - oring_depth, h = oring_height);
}
}
/*

description: This is an attempt to model the truCore casing
motor type: 38 mm
part: standard forward closure
This is used for all the 38mm motors
closure outside diameter: 33.5 mm
closure Lenght: 16,51 mm
closure shoulder diameter: 32 mm
shoulder lenght: 4.5 mm
*/
closure_diameter = 33.5;
closure_lenght= 16.51;
closure_shoulder_diameter = 32;
closure_shoulder_lenght = 4.5;
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
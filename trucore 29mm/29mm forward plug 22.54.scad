/*

description: This is an attempt to model the truCore casing
motor type: 29 mm
part: standard forward closure
This is used for all the 29 mm motors
closure outside diameter: 25 mm
closure Lenght: 15,51 mm
closure shoulder diameter: 23.89 mm
shoulder lenght: 7 mm
*/
closure_diameter = 25;
closure_lenght= 22.54;
closure_shoulder_diameter = 23.9;
closure_shoulder_lenght = 7;
oring_depth=1.42;
oring_height=2.24;
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
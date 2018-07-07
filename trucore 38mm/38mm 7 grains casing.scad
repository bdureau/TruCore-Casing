/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 07/07/2018
motor type: 7 grains 38 mm
part: casing

*/
casing_outside_diameter=38;
casing_inside_diameter=33.7;
casing_lenght=501.65;
casing_retainer_height=10;
$fn= 150;
difference() {
    difference () {
        //tube
        cylinder (r=casing_outside_diameter/2, h = casing_lenght);
        cylinder(r=casing_inside_diameter/2, h = casing_lenght);
        
        // Circlip for the casing retainer 
        translate([0,0,(casing_lenght -casing_retainer_height )]) 
        difference(){
            cylinder (r=casing_outside_diameter/2, h = 1.5);
            cylinder (r=(casing_outside_diameter-1)/2, h = 1.5);
        }
    }
    // Circlip for the nozzle and forward plug
    translate([0,0,(casing_lenght -6 )]) cylinder(r =(casing_outside_diameter-2)/2, h= 1.5);
    translate([0,0,4 ]) cylinder(r =(casing_outside_diameter-2)/2, h= 1.5);
}
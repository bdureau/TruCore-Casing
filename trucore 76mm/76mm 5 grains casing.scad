/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 12/07/2018
motor type: 5 grains 76 mm
part: casing

*/
casing_outside_diameter=76;
casing_inside_diameter=69.7;
casing_lenght=764.54;
casing_retainer_height=19;
$fn= 150;
difference() {
    difference () {
        //tube
        cylinder (r=casing_outside_diameter/2, h = casing_lenght);
        cylinder(r=casing_inside_diameter/2, h = casing_lenght);
        
        // Circlip for the casing retainer 
        translate([0,0,(casing_lenght -casing_retainer_height )]) 
        difference(){
            cylinder (r=casing_outside_diameter/2, h = 2);
            cylinder (r=(casing_outside_diameter-1)/2, h = 2);
        }
    }
    // Circlip for the nozzle and forward plug
    translate([0,0,(casing_lenght -10 )]) cylinder(r =(casing_outside_diameter-3)/2, h= 3);
    translate([0,0,8 ]) cylinder(r =(casing_outside_diameter-3)/2, h= 3);
}
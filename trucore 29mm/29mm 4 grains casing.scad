/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 10/06/2018
motor type: 4 Grains 29 mm
part: casing
*/
$fn= 150;
casing_outside_diameter=29;
casing_inside_diameter=25.5;
casing_lenght=218;
casing_retainer_height=10;

difference() {
    difference () {
        //tube
        cylinder (r=casing_outside_diameter/2, h = casing_lenght);
        cylinder(r=casing_inside_diameter/2, h = casing_lenght);
        
        // Circlip for the casing retainer 
        translate([0,0,(casing_lenght -casing_retainer_height )]) 
        difference(){cylinder (r=casing_outside_diameter/2, h = 1.5);
            cylinder (r=(casing_outside_diameter-1)/2, h = 1.5);
            }
        
    }

    // Circlip for the nozzle and forward plug
    translate([0,0,(casing_lenght -4 )]) cylinder(r =(casing_inside_diameter+1)/2, h= 2);
    translate([0,0,4 ]) cylinder(r =(casing_inside_diameter+1)/2, h= 2);
}
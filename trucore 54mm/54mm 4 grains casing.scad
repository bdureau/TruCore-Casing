/*

Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
motor type: 4 grains 54 mm
part: casing
*/
$fn= 150;
casing_outside_diameter=54;
casing_inside_diameter=49;
casing_lenght=412;
casing_retainer_height=9.5;
casing_retainer_diameter=58;
difference() {
    union () {
        cylinder (r=casing_outside_diameter/2, h = casing_lenght);
        translate([0,0,(casing_lenght -casing_retainer_height )]) cylinder (r=casing_retainer_diameter/2, h = casing_retainer_height);
    }
cylinder(r=casing_inside_diameter/2, h = casing_lenght);
    translate([0,0,(casing_lenght -7.5 )]) cylinder(r =(casing_inside_diameter+2)/2, h= 2.5);
    translate([0,0,5 ]) cylinder(r =(casing_inside_diameter+2)/2, h= 2.5);
}
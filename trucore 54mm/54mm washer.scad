/*
Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 23/07/2018
motor type: 54 mm 
part: Washer
This is used for all the 54mm motors
washer outside diameter: 48.90 mm
washer height: 2.5 mm
washer inside diameter: 34.80 mm
*/
$fn=100;
difference () {cylinder (r= 48.90/2, h = 2.5);
cylinder (r=34.80/2, h = 10);
}
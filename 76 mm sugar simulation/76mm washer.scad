/*
Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 23/07/2018
motor type: 76 mm 
part: Washer
This is used for all the 76mm motors
washer outside diameter: 69.28 mm
washer height: 3.02 mm
washer inside diameter: 53.23 mm
*/

$fn=100;
difference () {cylinder (r= 69.28/2, h = 3.02);
cylinder (r=53.23/2, h = 10);
}
/*
Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 23/07/2018
motor type: 29 mm 
part: Washer
This is used for all the 29mm motors
washer outside diameter: 25.14 mm
washer height: 0.89 mm
washer inside diameter: 18.85 mm
*/

$fn=100;
difference () {cylinder (r= 25.14/2, h = 0.89);
cylinder (r=18.85/2, h = 10);
}
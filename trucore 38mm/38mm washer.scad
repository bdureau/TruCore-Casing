/*
Description: As it looks like Trucore hardware is no longer available, this is an attempt to model the truCore motors so that rocketers can get spare parts with help from a machinist
Author: Boris du Reau
Date: 23/07/2018
motor type: 38 mm 
part: Washer
This is used for all the 38mm motors
washer outside diameter: 33.37 mm
washer height: 2.79 mm
washer inside diameter: 24.27 mm
*/

$fn=100;
difference () {cylinder (r= 33.37/2, h = 2.79);
cylinder (r=24.27/2, h = 10);
}
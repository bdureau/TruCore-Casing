
difference() {
cylinder (r= 53/2, h= 15, $fn = 100, center = true );
  translate([0,0,3])  cylinder (r= 48.25/2, h= 10, $fn = 100, center = true );
cylinder (r= 13/2, h= 30, $fn = 100, center = true );
  translate([15,0,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
    translate([-15,0,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
    translate([0,15,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
    translate([0,-15,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
}

difference() {
cylinder (r= 40/2, h= 10, $fn = 100, center = true );
  translate([0,0,3])  cylinder (r= 32.8/2, h= 10, $fn = 100, center = true );
cylinder (r= 9/2, h= 30, $fn = 100, center = true );
  translate([10,0,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
    translate([-10,0,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
    translate([0,10,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
    translate([0,-10,0])  cylinder (r= 4/2, h= 30, $fn = 100, center = true );
}
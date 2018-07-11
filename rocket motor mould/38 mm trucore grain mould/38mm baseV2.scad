$fn=100;
difference() {
    union () {cube ([50,50,15], center = true);
        cylinder(r=36/2, h= 15, $fn=50);
        sphere (r=48/2, center = true);
    }
    cylinder (r= 9/2, h= 30, $fn = 50, center = true );
    
    translate ([0,0,5]) cylinder(r=32.5/2, h= 25, $fn=50);
    translate ([0,0,24])cube ([50,50,15], center = true);
    translate ([0,0,-17])cube ([50,50,19], center = true);
}

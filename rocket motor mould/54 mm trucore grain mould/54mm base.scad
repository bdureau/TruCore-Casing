$fn=100;
difference() {
    union () {cube ([70,70,15], center = true);
        cylinder(r=48.25/2, h= 15, $fn=50);
        sphere (r=62/2, center = true);
    }
    cylinder (r= 13/2, h= 30, $fn = 50, center = true );
    
    translate ([0,0,5]) cylinder(r=48.25/2, h= 25, $fn=50);
    translate ([0,0,24])cube ([70,70,15], center = true);
    translate ([0,0,-19])cube ([70,70,24], center = true);
    //translate ([0,0,-19])cube ([70,70,46], center = true);
}

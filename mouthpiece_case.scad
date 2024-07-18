$fn=360;

module body() {
    translate([0, 0 ,3]) {
        minkowski() {
            cylinder(1.5, 32, 32);
            sphere(3);
        }
    }
    translate([0, 0, 7.5/2])
        cylinder(7.5/2, 35, 35);
}

module mouthpiece_case () {
    difference() {
        body();
        translate([0, 0, 3])
            cylinder(7.5-3, 32, 32);
        rotate([0, 90, 0])
            translate([-7.5, 0, 34])
                cylinder(2, 5, 5);
        rotate([0, -90, 0])
            translate([7.5, 0, 34])
                cylinder(2, 5, 5);
    }
    difference() {
        cylinder(7.5, 15, 15);
        translate([0, 0, 5.5])
            cylinder(7.5, 11.5, 11.5);
    }
    difference() {
        cylinder(8.5, 32, 32);
        cylinder(8.5, 30, 30);
        translate([-35, 0, 0])
            cube([70, 35, 10]);
    }
}

mouthpiece_case();

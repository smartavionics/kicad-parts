

module VBH2032_1() {
  $fn = 50;
  color("black") {
    translate([0, 0, 9.15]) {
      difference() {
        cube([23, 6.1, 18.3], center=true);
        translate([0, 0, 5])
          cube([21, 4, 17], center=true);
        translate([0, 5, 20])
          rotate([90, 0, 0])
            cylinder(d=30, h=10, $fn=8);
      }
    }
  }
  color("silver") {
    // coin
    translate([0, 1.5, 14])
      rotate([90, 0, 0]) {
        cylinder(d=20, h=2);
        cylinder(d=18, h=3);
    }
  }
  color("white") {
    translate([0, 3, 17])
      cube([5, 0.25, 14], center=true);
    translate([0, 1, 24])
      cube([5, 4, 0.25], center=true);
  }
  color("yellow") {
    translate([0, -2.35, -3.7])
      cube([0.7, 0.25, 3.7]);
    translate([-5.075, 2.35, -3.7])
      cube([0.7, 0.25, 3.7]);
    translate([5.075, 2.35, -3.7])
      cube([0.7, 0.25, 3.7]);
  }
}

scale([0.4, 0.4, 0.4])
  VBH2032_1();


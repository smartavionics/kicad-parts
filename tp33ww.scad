
module tp33ww() {
  $fn = 50;
  translate([-2.5, 0, 0]) {
    color("black")
    {
      translate([0, 0.5, 0.5])
        cube([5, 8, 8.5]);
    }
    color("silver")
    {
      translate([0, 0.5, 0])
        cube([5, 8.5, 0.5]);
      translate([0, 8.5, 0.5])
        cube([5, 0.5, 8.5]);
      translate([2.15, 5.08-0.7, -5.08])
        cube([0.7, 0.7, 5.08]);
    }
    brass = [225/255, 193/255, 110/255];
    color(brass)
    {
      translate([2.15, -0.7, -12]) {
        cube([0.7, 0.7, 15.25]);
        translate([0, 0, 14.55])
          cube([0.7, 2, 0.7]);
      }
      translate([2.15, -(0.7+5.08), -5]) {
        cube([0.7, 0.7, 11.25]);
        translate([0, 0, 11.2])
          cube([0.7, 7, 0.7]);
      }
    }
  }
  {
    translate([0, 10, 4.326])
      rotate([90, 0, 0]) {
        color("black")
          intersection() {
            union() {
              translate([0, 0, -9.2])
                cylinder(d=2.5, h=9.2);
              cylinder(d=4.2, h=1);
              translate([0, 0, -4.7])
                difference() {
                  cylinder(d=3.8, h=5.7);
                  cylinder(d=3.2, h=5.7);
                }
            }
            cube([3.5, 10, 30], true);
        }
      }
  }
}

scaling = 0.3937;
scale([scaling, scaling, scaling])
  translate([0, -14.6, 0])
    tp33ww();

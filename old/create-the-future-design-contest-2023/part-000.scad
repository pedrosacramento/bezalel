module part_000() {
    for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([40*(j-1),40*(i-1),0]) {
            translate([0,0,1]) union() {
                    rotate([0,0,getCrankRotation(i,j)]) 
                    union() {
                            color(color_white) cylinder(d=3, h=80, $fn=16);
                            translate([0,0,58]) {
                                color(color_gray) 
                                    cylinder(d=8, h=5, $fn=16);
                                color(color_black) {
                                translate([0,0,5/2])
                                    rotate([0,-90,0])
                                        cylinder(d=3, h=5, $fn=16);
                                }
                            }
                    }
                    translate([0,0,45])
                        color(color_white) {
                        rotate([0,0,getCrankRotation(i,j)])
                            import("part-000.stl");
                        }
                }
            }
        }
    }
}
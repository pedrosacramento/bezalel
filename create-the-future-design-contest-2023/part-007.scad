module part_007_stl() {
    rotate([0,0,-90]) import("part-007.stl");
    translate([0,0,21]) cube(center=true, size=[17,17,10]);
}

module part_007() {
    color(color_red)
        translate([0,0,64]) {
            for (i=[0:1:2]) {
                for (j=[0:1:2]) {
                    translate([(j-1)*40, (i-1)*40, getPinHeight(i,j)*6])
                        part_007_stl();
                }
            }
        }
}

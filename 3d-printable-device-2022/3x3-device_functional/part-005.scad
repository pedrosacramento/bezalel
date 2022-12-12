module part_005() {
    color([0.2,0.2,0.2]) translate([-50,-50,0]) for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([j*50,i*50,0]) 
                rotate([0,0,getCrankRotation(i,j)]) import("part-005.stl");
        }
    }
}
module part_002() {
    translate([-50,-50,4]) for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([i*50,j*50,getPinHeight(i,j) * 10]) {
                import("part-002.stl");
            }
                
        }
    }
}
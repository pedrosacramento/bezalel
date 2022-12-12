module part_000() {
    translate([-50,-50,-25.5])
    for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([50*i,50*j,getPinHeight(i,j) * 10])
                import("part-000.stl");
        }
    }
}
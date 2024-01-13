module part_000() {
    translate([-50,-50,-25.5])
    for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([50*i,50*j,getPinHeight(j,i) * 10]) {
                import("part-000.stl");
                part_000_simplified_long_nut();
            }
        }
    }
}

module part_000_simplified_long_nut() {
    color([0.5,0.5,0.5]) {
        translate([0,0,90])
            import("part-000-long-nut.stl");
    }  
}
module part_002_bezalel() {
    s = 0.18;
    translate([-0,0,18+1])
        rotate([0,0,0])
            scale([s,s,1])
                import("bezalel.stl");
}

module part_002() {
    translate([55,40,0])
        rotate([0,0,90])
            part_002_bezalel();
    translate([0,0,9.0])
        import("part-002.stl");
}

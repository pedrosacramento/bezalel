module part_006() {
        color(color_yellow) union() {
            rotate([0,0,0*-90])
            translate([0,0,2.25 + 0*-9.5])
                for (i=[0:1:2])
                    translate([(i-1)*40.0,servoColTranslation(i),0])
                        part_006_stl();
        }
        
        color(color_yellow)
        union() {
            rotate([0,0,1*-90]) translate([0,0,2.25 + 1*-9.5])
                for (i=[0:1:2])                
                    translate([(i-1)*40.0,servoRowTranslation(i),0])
                        part_006_stl();
        }
}

module part_006_stl() {
    import("part-006.stl");
}
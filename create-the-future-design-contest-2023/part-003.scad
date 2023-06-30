module part_003() {
    color(color_yellow) {
        part_003_stl();
        
        translate([0,0,-45])
            rotate([0,0,-90])
                part_003_stl();
    }

    for (j=[0:1:2]) {
        translate([(j-1)*40,0,0])
        rotate([0,0,90])
        translate([0,0,14.5])
        translate([95.5,0,0]) {
            rotate([0,0,0])
            rotate([0,180,0]) {
                color (color_black)
                    import("servo9g.stl");
                rotate([0,0,servoColAdjustedRotation(j)-90])
                    color(color_red) translate([0,0,11.2])
                        import("servo-arm.stl");
            }
        }
    }

    translate([0,0,-24]) rotate([0,0,-90])
    scale([1,1,-1]) {    
        for (j=[0:1:2]) 
            translate([(j-1)*40,0,0])
            rotate([0,0,90])
            translate([0,0,14.5])
            translate([95.5,0,0]) {
                rotate([0,0,0])
                rotate([0,180,0]) {
                    color (color_black)
                        import("servo9g.stl");
                    rotate([0,0,servoRowAdjustedRotation(j)])
                        color(color_red) translate([0,0,11.2])
                            import("servo-arm.stl");
                }
            }
    }
}

module part_003_stl() {
    import("part-003.stl");
}
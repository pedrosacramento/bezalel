include<colors.scad>

module vertical_pins() {
    for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([40*(j-1),40*(i-1),0]) {
                translate([0,0,1]) {
                    rotate([0,0,getCrankRotation(i,j)])
                        color(color_white)
                            import("parts/miscellaneous/3mm-rod.stl");
                    rotate([0,0,getCrankRotation(i,j)]) union() {
                        color(color_yellow)
                            import("parts/3dprint/lead-screw.stl");
                        color(color_gray) 
                            import("parts/miscellaneous/shaft-collar.stl");
                        color(color_black)
                            import("parts/miscellaneous/shaft-collar-screw-simplified.stl");
                        color(color_gray)
                            import("parts/miscellaneous/flange-coupling-connector.stl"); 
                        color(color_yellow)
                            import("parts/3dprint/crank.stl");
                    }
                }
            }
        }
    }
    
    color(color_yellow)
        for (i=[0:1:2]) {
            for (j=[0:1:2]) {
                translate([(j-1)*40, (i-1)*40, getPinHeight(i,j)*3.75]){
                    import("parts/3dprint/pin.stl");
                }
            }
        }
}

module sliders() {
    color(color_yellow) {
        for (i=[0:1:2])
            translate([(i-1)*40.0,servoColTranslation(i),0])
                import("parts/3dprint/slider.stl");
        
        rotate([0,0,1*-90]) translate([0,0,-9.5])
            for (j=[0:1:2])                
                translate([(j-1)*40.0,servoRowTranslation(j),0])
                    import("parts/3dprint/slider.stl");
    }
}

module servo_motors() {
    color (color_black) translate([0,0,-12]) {
        for (i=[0:1:2])
                translate([(i-1)*40,0,12])
                    import("parts/miscellaneous/servo-9g.stl");
        
        for (j=[0:1:2])
            rotate([0,0,-90])
                translate([(j-1)*40,0,-12])
                    scale([1,1,-1])
                        import("parts/miscellaneous/servo-9g.stl");
    }
    
    color(color_orange) translate([0,0,-12]) {
        translate([0,95.5,12]) {
            for (i=[0:1:2])
                translate([(i-1)*40,0,0]) rotate([0,0,90])
                    rotate([0,180,0]) rotate([0,0,servoColAdjustedRotation(i)])
                        import("parts/3dprint/servo-arm.stl");
        }
        
        translate([0,0,-12]) rotate([0,0,-90]) scale([1,1,-1])
        translate([0,95.5,0]) {
            for (j=[0:1:2])
                translate([(j-1)*40,0,0]) rotate([0,0,90])
                    rotate([0,180,0]) rotate([0,0,servoRowAdjustedRotation(j)])
                        import("parts/3dprint/servo-arm.stl");
        }
    }
}
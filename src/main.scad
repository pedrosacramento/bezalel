color_white = [1,1,1];
color_black = [0.1,0.1,0.1];
color_gray = [0.5,0.5,0.5];
color_red = [1,0,0];
color_blue = [0,0,1];
color_yellow = [1,1,0];
color_orange = [1,0.5,0];

module vertical_pins() {
    for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([40*(j-1),40*(i-1),0]) {
                translate([0,0,1]) {
                    rotate([0,0,0])
                        color(color_white)
                            import("parts/misc/3mm-rod.stl");
                    rotate([0,0,45]) union() {
                        color(color_yellow)
                            import("parts/pla/lead-screw.stl");
                        color(color_gray) 
                            import("parts/misc/shaft-collar.stl");
                        color(color_black)
                            import("parts/misc/shaft-collar-screw-simplified.stl");
                        color(color_gray)
                            import("parts/misc/flange-coupling-connector.stl"); 
                        color(color_yellow)
                            import("parts/pla/crank.stl");
                    }
                }
            }
        }
    }
    
    color(color_yellow)
        for (i=[0:1:2]) {
            for (j=[0:1:2]) {
                translate([(j-1)*40, (i-1)*40, 0]){
                    import("parts/pla/pin.stl");
                }
            }
        }
}

module static_parts() {
    color(color_yellow) {
        import("parts/pla/main.stl");
        import("parts/pla/structure_bottom.stl");
        import("parts/pla/structure_top.stl");
        import("parts/pla/feet.stl");
        
        for(i=[0:1:3])
            rotate([0,0,90*i])
                import("parts/pla/column.stl");
        
        import("parts/pla/support-for-pins.stl");
    }
    
    color(color_black) 
        import("parts/pla/top-plate.stl");
        
    translate([0,75-7.5,0])
        union() {
            color(color_yellow) import("parts/pla/bezalel.stl");
            color(color_black) import("parts/pla/plate.stl");
        }
}

module stepper() {
    color([0.3,0.3,0.3])
        cube(center=true, size=[42,42,33]);
}

module slider(i) {
    color(color_black) {
        translate([0,-7,0])
            import("parts/pla/slider.stl");
    }
}

module stepper_motors() {   
    union() {
        translate([-40,-2.5,0]) {
            translate([0,-8,0]) {
                for (i=[0:1:2])
                    translate([i*40,+10.5-0,0])
                        slider(i);
            }
        }
    }

    union() {
        translate([0,0,-9.5]) rotate([0,0,90]) {      
            translate([-40,-2.5,-14.5]) {
                translate([0,-8,14.5]) {
                    for (i=[0:1:2])
                        translate([i*40,+8+2.5-0,0])
                            rotate([0,0,180]) slider(i);
                }
            }
        }
    }
    
    support_top();
    support_bottom();
}

module support_top() {
    color(color_yellow)
        import("parts/pla/motor_support_top.stl");
    translate([0,0,-9.5])
        rotate([0,0,-90])
            stepper_and_sliders();
}

module support_bottom() {  
    color(color_yellow)
        import("parts/pla/motor_support_bottom.stl");
    
    stepper_and_sliders();  
}

module stepper_and_sliders() {
    translate([-83,141.75,-7.75])
        rotate([0,90,0]) {
            translate([0,0,15]) color(color_yellow) 
            rotate([0,0,0+45*5])
                import("parts/pla/cam.stl");
            stepper();
        }
        
    translate([0,0,0]) for (i=[-1:1:1])
        translate([i*40,0,0]) slider(i);
}

module main() {
    static_parts();
    vertical_pins();
    stepper_motors();
}

main();
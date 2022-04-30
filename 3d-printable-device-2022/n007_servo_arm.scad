function n007_servo_arm_translation(i) =
    [((i%2)?-1: 1) * 107.2,(i - 3.5)*20,0];

module n007_servo_arm() {
    translate([0,0,-17.5]) {
        for (i=[0:1:7]) {
            n007_servo_arm_item(i);
        }
        
        translate([0,0,-6])
        rotate([0,0,90])
        for (j=[0:1:7]) {
            n007_servo_arm_item(8+j);
        }
    }
    
}

module n007_servo_arm_item(n) {
    hi_low = (n%2)?40:-40;
    state = (n >= 8)? hi_low : 0;
    
    translate(n007_servo_arm_translation(n%8))
    rotate([0,0,(n%2)?0:180])
        rotate([0,180,0]) {
            import("stl/servo9g.stl");
            rotate([0,0,state - 90])
                translate([0,0,11.2])
                    import("stl/n007_servo_arm.stl");
        }
}
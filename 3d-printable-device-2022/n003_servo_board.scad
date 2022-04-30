module n003_servo_board() {  
    
    scale([ 1, 1, 1])
    translate([0,-79.2,-29.0])
        import("stl/n003_servo_board.stl");
    
    scale([-1,-1, 1])
    translate([0,-79.2,-29.0])
        import("stl/n003_servo_board.stl");
    
    translate([0,0,6])
    rotate([0,0,90]) {
        scale([ 1, 1, 1])
        translate([0,-79.2,-29.0])
            import("stl/n003_servo_board.stl");
        
        scale([-1,-1, 1])
        translate([0,-79.2,-29.0])
            import("stl/n003_servo_board.stl");
    }
}
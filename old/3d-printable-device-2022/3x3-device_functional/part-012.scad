module part_012() {
    color([0.5,0.5,0.5])
    translate([0,0,-116/2]) {
        translate([-50,183,0])
            for (j=[0:1:2]) {
                translate([j*50,0,0])
                    rotate([0,0,servoColAdjustedRotation(j)])
                        rotate([0,0,-90]) 
                            scale([1,1,-1])
                                import("part-012.stl");
            }
        
        translate([183,-50,0])
            for (i=[0:1:2]) {
                translate([0,50*i,0])
                    rotate([0,0,servoRowAdjustedRotation(i)])
                        rotate([0,0,-90]) import("part-012.stl");
            }
    }
}
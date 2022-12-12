module n010_lock() {    
    translate([0,0,-44.5]) {
        for (i=[0:1:3]) {
            rotate([0,0,90*i]) {
                translate([90,0,(i%2)?-6:0])
                    import("stl/n010_lock.stl");
            }
        }
    }
}
module part_005() {
    color(color_yellow) {
        translate([0,0,0])
            rotate([0,0,90])
                scale([1,1,-1]) import("part-005-bottom.stl");
        
        translate([0,0,-24])
            import("part-005-top.stl");
    }
    
    color(color_yellow) for (i=[0:1:3])
        rotate([0,0,i*90]) translate([-67.5,-67.5,-64])
            cylinder(d=10, h=40, $fn=16);
        
    color(color_yellow) {
        translate([75+7.5,75-7.5,0]) {
            scale([1,1,-1])
                part_005_spacer();
        }
        
        translate([75+7.5,-(75-7.5),0]) {
            scale([1,1,-1])
                part_005_spacer();
        }
    }
}

module part_005_spacer() {
    import("part-005-spacer.stl");
}
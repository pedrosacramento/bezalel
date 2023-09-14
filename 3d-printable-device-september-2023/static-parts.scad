module static_parts() {
    color(color_yellow) {
        import("parts/3dprint/main.stl");
        import("parts/3dprint/slider-rails-top.stl");       
        import("parts/3dprint/slider-rails-bottom.stl");
        
        for (i=[0:1:3])
            rotate([0,0,i*90])
                import("parts/3dprint/foot.stl");
        
        scale([1,1,1])
            import("parts/3dprint/spacer.stl");
        scale([1,-1,1])
            import("parts/3dprint/spacer.stl");
        
        translate([0,0,0])
            rotate([0,0,0])
                import("parts/3dprint/servo-support.stl");
        translate([0,0,-45])
            rotate([0,0,-90])
                import("parts/3dprint/servo-support.stl");

        for(i=[0:1:3])
            rotate([0,0,90*i])
                import("parts/3dprint/column.stl");
        
        import("parts/3dprint/support-for-pins.stl");
    }
    
    color(color_black) 
        import("parts/3dprint/top-plate.stl");
    
    color(color_yellow)
        import("parts/3dprint/bezalel.stl");
}
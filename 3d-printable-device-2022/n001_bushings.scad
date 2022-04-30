module n001_bushings() {  
    scale([1,1, 1]) translate([0,0,-20])
        import("stl/n001_bushings.stl");
    
    scale([1,1,-1]) translate([0,0,-20])
        import("stl/n001_bushings.stl");
}

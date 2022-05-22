module n001_main_plane() {  
    scale([1,1, 1]) translate([0,0,-20])
        import("stl/n001_main_plane.stl");
    
    scale([1,1,-1]) translate([0,0,-20])
        import("stl/n001_main_plane.stl");
}

module n001_main_plane_acrylic() {
    scale([1,1,-1]) translate([0,0,17])
        import("stl/n001_main_plane_acrylic.stl");

    scale([1,1, 1]) translate([0,0,17])
        import("stl/n001_main_plane_acrylic.stl");    
}

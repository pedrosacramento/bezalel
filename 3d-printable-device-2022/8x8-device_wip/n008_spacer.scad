module n008_spacer() {  
    s = 84.2;
    
    translate([0,0,-10]) {
        translate([ 84.2, 84.2,0]) 
            import("stl/n008_spacer.stl");
        translate([ 84.2,-84.2,0]) 
            import("stl/n008_spacer.stl");
        translate([-84.2, 84.2,0]) 
            import("stl/n008_spacer.stl");
        translate([-84.2,-84.2,0]) 
            import("stl/n008_spacer.stl");
    }
}
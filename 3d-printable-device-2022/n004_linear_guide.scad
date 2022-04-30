module n004_linear_guide() {
    file = "stl/n004_linear_guide.stl";
    
    scale([ 1, 1, 1]) translate([0,79.2,-29])
        scale([ 1, 1,-1])
            import(file);
    
    scale([ 1,-1, 1]) translate([0,79.2,-29])
        scale([ 1, 1,-1])
            import(file);
    
    translate([0,0,6])
    rotate([0,0,90]) {
        scale([ 1, 1, 1]) translate([0,79.2,-29])
            scale([ 1, 1,-1])
                import(file);
        
        scale([ 1,-1, 1]) translate([0,79.2,-29])
            scale([ 1, 1,-1])
                import(file);
    }
}

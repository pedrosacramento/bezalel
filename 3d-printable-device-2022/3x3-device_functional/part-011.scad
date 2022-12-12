include<algorithm.scad>;

module part_011() {
    part_011();
}

module part_011_stl() {
    color([1,0.5,0])
        import("part-011.stl");    
    color([0.2,0.2,0.2])
        import("part-011-wheels.stl");    
}

module part_011(t) {
    translate([0,0,-58.0]) {
        translate([0,-50,0]) for (i=[0:1:2])
            translate([servoRowTranslation(i),50*i,0])
                scale([1,1,-1]) part_011_stl();
        
        translate([-50,0,0]) for (j=[0:1:2])
            translate([50*j,servoColTranslation(j),0])
                rotate([0,0,90])
                    scale([1,1,1]) part_011_stl();  
    }
}
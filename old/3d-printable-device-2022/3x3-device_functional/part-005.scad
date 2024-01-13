module part_005() {
    translate([-50,-50,0]) for (i=[0:1:2]) {
        for (j=[0:1:2]) {
            translate([j*50,i*50,0]) 
                rotate([0,0,getCrankRotation(i,j)]) part_005_stl();
        }
    }
}

module part_005_stl() {
    part_005_flexible_coupling();
    color([0.5,0.5,0.5]) { 
        translate([0,0,-45]) cylinder(d=3, h=90, $fn=20);
    }
    color([0.2,0.2,0.2]) import("part-005.stl");
} 

module part_005_simplified_lead_screw() {
    color([0.5,0.5,0.5]) translate([0,0,50]) {
        cylinder(d=12.9, h=5, $fn=6);
        cylinder(d=5,h=40,$fn=20);   
    }  
}

module part_005_simplified_screw() {
    color([0.1,0.1,0.1]) {
        cylinder(d=5, h=10, $fn=20);
        cylinder(d=10, h=5, $fn=20);
    }
}

module part_005_flexible_coupling() {
    part_005_simplified_lead_screw();    
    
    translate([0,-20,46]) rotate([-90,0,0])     part_005_simplified_screw();
    
    color([1,0.5,0]) translate([0,0,58])
        scale([1,1,-1]) import("part-005-coupling-adapter.stl");
    
    color([0.5,0.5,0.5]) translate([0,0,30]) difference() {
        cylinder(d=19, h=25, $fn=90);
        cylinder(center=true, d=3.3, h=100, $fn=20);
    } 
}
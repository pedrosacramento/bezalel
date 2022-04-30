module n002_crank() {
    for (i=[0:1:7]) {
        for (j=[0:1:7]) {
            n002_crank_item(i,j, $t*360);
        }
    }
}

module n002_crank_item(i,j,state) {
    translate([(i-3.5)*20,(j-3.5)*20,0])
    rotate([0,0,state]) union() {
        translate([0,0,31.5])
            scale([1,1,-1])
                import("stl/n002a_crank.stl");       
        translate([0,0,-40.2])
            scale([1,1,-1]) translate([0,0,-20])
                import("stl/n002b_crank.stl");
    }
}
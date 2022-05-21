module n006_horizontal_slider() {  
    translate([0,0,-47.5]) {
        for (i=[0:1:7]) {
            n006_horizontal_slider_item(i);
        }
        
        translate([0,0,6]) rotate([0,0,90]) for (j=[0:1:7]) {
            n006_horizontal_slider_item(8+j);
        }    
    }
}

module n006_horizontal_slider_item(n) {
    state = (n < 8)?6:0;
    
    translate([((n%8)-3.5)*20,state,0])
        rotate([0,0,((n%2) ? 0 : 180)])
            import("stl/n006_horizontal_slider.stl");
}

module n006_horizontal_slider() {  
    translate([0,0,-47.5])
    for (i=[0:1:7]) {
        n006_horizontal_slider_item(i,0);
    }
    
    translate([0,0,-41.5])
    rotate([0,0,90]) for (j=[0:1:7]) {
        n006_horizontal_slider_item(j,0);
    }    
}

module n006_horizontal_slider_item(i,state) {  
    n = (i%2) ? 1 : -1;
    
    scale([1,n,1])
        translate([(i-3.5)*20,0,0])
            import("stl/n006_horizontal_slider.stl");
}
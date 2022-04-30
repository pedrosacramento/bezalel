module n005_vertical_block() {  
    for (i=[0:1:7]) {
        for (j=[0:1:7]) {
            n005_vertical_block_item(i,j,0);
        }
    }
}

module n005_vertical_block_item(i,j,state) {  
    translate([(i-3.5)*20,(j-3.5)*20,31.5 + state]) {
        import("stl/n005_vertical_block.stl");
    }
}
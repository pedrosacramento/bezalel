include<colors.scad>
include<algorithm.scad>
include<static-parts.scad>
include<moving-parts.scad>

animation = [
    [[1,1,1],[1,0,0]],
    [[1,1,1],[1,0,0]],
    [[1,1,1],[1,0,0]],
    
    [[1,1,1],[0,1,0]],
    [[1,1,1],[0,1,0]],
    [[1,1,1],[0,1,0]],
    
    [[1,1,1],[0,0,1]],
    [[1,1,1],[0,0,1]],
    [[1,1,1],[0,0,1]],
    
    [[2,1,2],[1,0,1]],
    [[2,1,2],[1,0,1]],
    [[2,1,2],[1,0,1]],
    
    [[1,2,1],[0,1,0]],
    [[1,2,1],[0,1,0]],
    [[1,2,1],[0,1,0]],
    
    [[1,2,1],[1,0,0]],
    [[1,2,1],[1,0,0]],
    [[1,2,1],[1,0,0]],
    
    [[2,1,2],[0,1,0]],
    [[2,1,2],[0,1,0]],
    [[2,1,2],[0,1,0]],
    
    [[1,2,1],[0,0,1]],
    [[1,2,1],[0,0,1]],
    [[1,2,1],[0,0,1]],
    
    [[2,2,2],[1,1,1]],
    [[2,2,2],[1,1,1]],
    [[2,2,2],[1,1,1]],
];

module main() {
    static_parts();
    vertical_pins();
    sliders();
    servo_motors();
}

main();
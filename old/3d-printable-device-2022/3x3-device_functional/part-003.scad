module part_003() {
    translate([0,0,-1]) 
    color([0.2,0.2,0.2]) {
        scale([1,1,1]) import("part-003.stl");
        scale([1,-1,1]) import("part-003.stl");
        scale([-1,1,1]) import("part-003.stl");
        scale([-1,-1,1]) import("part-003.stl");
    }
}
include<algorithm.scad>

include<part-000.scad>;
include<part-001.scad>;
include<part-002.scad>;
include<part-003.scad>;
include<part-004.scad>;
include<part-005.scad>;
include<part-006.scad>;
include<part-007.scad>;

color_white = [1,1,1];
color_black = [0.1,0.1,0.1];
color_gray = [0.5,0.5,0.5];
color_red = [1,0,0];
color_blue = [0,0,1];
color_yellow = [1,1,0];
color_orange = [1,0.5,0];

animation = [
    [[1,1,1],[1,0,0]],
    [[1,1,1],[0,1,0]],
    [[1,1,1],[0,0,1]],
    [[2,1,2],[1,0,1]],
    [[1,2,1],[0,1,0]],
    [[1,2,1],[1,0,0]],
    [[2,1,2],[0,1,0]],
    [[1,2,1],[0,0,1]],
    [[2,2,2],[1,1,1]],
];

module model() {
    part_000();
    color(color_yellow) {
        part_001();
        part_002();
        part_004();
        part_005();
        part_006();
    }
    part_003();   
    part_007();
}

model();
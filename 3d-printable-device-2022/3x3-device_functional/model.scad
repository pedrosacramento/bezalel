include<algorithm.scad>

include<part-000.scad>;
include<part-001.scad>;
include<part-002.scad>;
include<part-003.scad>;
include<part-004.scad>;
include<part-005.scad>;
include<part-006.scad>;
include<part-007.scad>;
include<part-008.scad>;
include<part-009.scad>;
include<part-010.scad>;
include<part-011.scad>;
include<part-012.scad>;
include<part-013.scad>;

sampleAnimation = [
    [[1,1,1],[1,0,0]],
    [[1,1,1],[0,1,0]],
    [[1,1,1],[0,0,1]],
    [[2,1,2],[1,0,0]],
    [[1,2,1],[0,1,0]],
    [[2,1,2],[0,0,1]],
];

animation = sampleAnimation;

viewAll = [0,1,2,3,4,5,6,7,8,9,10,11,12,13];
viewPinRotation = [5, 11, 12];

visibleParts = viewAll;

module model(t=time) {
    if (isPartVisible(0)) part_000();
    if (isPartVisible(1)) part_001();
    if (isPartVisible(2)) part_002();
    if (isPartVisible(3)) part_003();   
    if (isPartVisible(4)) part_004();
    if (isPartVisible(5)) part_005();
    if (isPartVisible(6)) part_006();
    if (isPartVisible(7)) part_007();
    if (isPartVisible(8)) part_008();
    if (isPartVisible(9)) part_009();
    if (isPartVisible(10)) part_010();
    if (isPartVisible(11)) part_011();
    if (isPartVisible(12)) part_012();
    if (isPartVisible(13)) part_013();
}

model();
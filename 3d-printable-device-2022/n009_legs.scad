module n009_legs() {  
    translate([ 84.2, 84.2,-32])
        scale([1,1,-1]) import("stl/n009_leg.stl");
    translate([ 84.2,-84.2,-32])
        scale([1,1,-1]) import("stl/n009_leg.stl");
    translate([-84.2, 84.2,-32])
        scale([1,1,-1]) import("stl/n009_leg.stl");
    translate([-84.2,-84.2,-32])
        scale([1,1,-1]) import("stl/n009_leg.stl");
}
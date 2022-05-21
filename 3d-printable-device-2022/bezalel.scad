// Colors
include<colors.scad>
include<n000_square_grid.scad>
include<n001_bushings.scad>
include<n002_crank.scad>
include<n003_servo_board.scad>
include<n004_linear_guide.scad>
include<n005_vertical_pin.scad>
include<n006_horizontal_slider.scad>
include<n007_servo_arm.scad>
include<n008_spacer.scad>
include<n009_legs.scad>
include<n010_lock.scad>

// TODO:
// Make the animation of the prototype
// Rendering a pyramid
module sample_pyramid() {
    color(COLOR_YELLOW)
        n000_square_grid();

    color(COLOR_ORANGE)
        n001_bushings();

    color(COLOR_YELLOW)
        n002_crank();

    color(COLOR_GREEN)
        n003_servo_board();
    
    color(COLOR_ORANGE)
        n004_linear_guide();
    
    color(COLOR_YELLOW)
        n005_vertical_pin();
    
    color(COLOR_ORANGE)
        n006_horizontal_slider();

    color(COLOR_GRAY)
        n007_servo_arm();
    
    color(COLOR_YELLOW)
        n008_spacer();    
    
    color(COLOR_YELLOW)
        n009_legs();        
    
    color(COLOR_GREEN)
        n010_lock();            
}

//
sample_pyramid();

{
    // Initilize our global blood particle
    global.pt_blood = part_type_create();
    var pt = global.pt_blood;
    
    // Settings for blood particle
    part_type_shape(pt, pt_shape_pixel);
    part_type_size(pt, .1, 1, 0, 0);
    part_type_color2(pt, c_red, c_maroon);
    part_type_speed(pt,2,5,-.1,0);
    part_type_direction(pt,0,360,0,0);
    part_type_gravity(pt,.2,270);
    part_type_life(pt,25,50);
}

///scr_draw_shadow(offset)

var offset = argument0;

// Draw the shadow and the obeject
draw_sprite_ext(spr_shadow, 0, x-3, y-offset, sprite_index/10, 1, 0,c_black, .4);
draw_self();


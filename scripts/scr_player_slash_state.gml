///scr_player_slash_state
{
    //Change player sprites to slash animation
    obj_player.sprite_index=spr_player_slash;
    obj_player.image_speed = .3;
    //Slash the weapon
    //Facing Left
    if(obj_player.image_xscale = -1) {
        obj_weapon.image_xscale = -.75;
        obj_weapon.image_yscale = .75;
        obj_weapon.image_speed = .3;
        obj_weapon.sprite_index = spr_sword1_swing;
        obj_weapon.image_angle = 0;
        obj_weapon.y = obj_player.y+10;
        obj_weapon.x = obj_player.x-4;
    //Facing Right
    } else if(obj_player.image_xscale = 1) {
        obj_weapon.image_xscale = -.75;
        obj_weapon.image_yscale = -.75;
        obj_weapon.image_speed = .3;
        obj_weapon.sprite_index = spr_sword1_swing;
        obj_weapon.image_angle = 180;
        obj_weapon.y = obj_player.y+11;
        obj_weapon.x = obj_player.x+4;
    } 
}

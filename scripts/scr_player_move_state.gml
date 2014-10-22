{
    // Moving left and right xscale is direction.
    if (keyboard_check(vk_right) && place_free(x+4,y) && !keyboard_check(vk_left)) {
        if (place_free(x,y+1)) {
            if (place_free(x+4,y+vspeed)) {
                sprite_index = spr_player_run;
                image_speed = .2;
                image_xscale = 1;
                x+=4;
            }
        } else {
            sprite_index = spr_player_run;
            image_speed = .2;
            image_xscale = 1;
            x+=4;
        }
    } else if (keyboard_check(vk_left) && place_free(x-4,y) && !keyboard_check(vk_right)) {
        if (place_free(x,y+1)) {
            if (place_free(x-4,y+vspeed)) {
                sprite_index = spr_player_run;
                image_speed = .2;
                image_xscale = -1;
                x-=4;
            }
        } else {
            x-=4;
            sprite_index = spr_player_run;
            image_speed = .2;
            image_xscale = -1;
        }
    } else {
        sprite_index = spr_player;
        image_speed = .1;
    }

// Jumping
    if (!place_free(x,y+1)) {
        if (keyboard_check_pressed(vk_up)) {
            vspeed = -10;
        }
    } else {
        sprite_index = spr_player_jump;
    }

//Weapon trailing -----------------------------------------------
    // Re-Initialize the weapon
    equipped = -1
if (equipped == 1)  {  
    if(obj_weapon.image_index !=0) {
        object_set_depth(obj_weapon,0);
        obj_weapon.x = obj_player.x;
        obj_weapon.y = obj_player.y;
        obj_weapon.image_xscale = 1;
        obj_weapon.image_yscale = 1;
        obj_weapon.image_angle = -110;
        obj_weapon.sprite_index = spr_sword1;
        obj_weapon.image_speed = 0;
    }
    // Attatch weapon to player's back and keep it there
    if(instance_exists(obj_player)) {
        obj_weapon.x = obj_player.x;
        obj_weapon.y = obj_player.y;
        obj_weapon.hspeed = obj_player.hspeed;
        obj_weapon.vspeed = obj_player.vspeed;
        
    } 
    // If player turns, weapon turns too.
     if (obj_player.image_xscale <= -1) {
        obj_weapon.image_yscale = -1;
        obj_weapon.image_angle = -80;
        
    } else {
       obj_weapon.image_yscale = 1;
       obj_weapon.image_angle = -110;
    } if (obj_player.sprite_index = spr_player_run) {
        obj_weapon.image_yscale = .3;
    } else {
        obj_weapon.image_yscale = .75;
    }
}
}  

    
    


// Toggle fullscreen mode by pressing F4
if (keyboard_check_pressed(vk_f4)) window_set_fullscreen(!window_get_fullscreen())

// Disabling players actions while dialoging
if instance_exists(obj_dialog) exit;

_hor = (keyboard_check(vk_right) + keyboard_check(ord("D"))) - (keyboard_check(vk_left) + keyboard_check(ord("A")))
_ver = (keyboard_check(vk_down) + keyboard_check(ord("S"))) - (keyboard_check(vk_up) + keyboard_check(ord("W")))

if (not (_hor == 0 and _ver == 0)){
    if (_ver > 0) sprite_index = sp_frisk_front_walk
        
    else if (_ver < 0) sprite_index = sp_frisk_back_walk
        
    else if (_hor > 0) sprite_index = sp_frisk_rigth_walk
        
    else if (_hor < 0) sprite_index = sp_frisk_left_walk
}

else {
	if (sprite_index == sp_frisk_back_walk) sprite_index = sp_frisk_back_idle
        
    else if (sprite_index == sp_frisk_front_walk) sprite_index = sp_frisk_front_idle
        
    else if (sprite_index == sp_frisk_rigth_walk) sprite_index = sp_frisk_right
        
    else if (sprite_index == sp_frisk_left_walk) sprite_index = sp_frisk_left
}

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_save], 
                undefined, undefined, undefined, move_speed, move_speed)


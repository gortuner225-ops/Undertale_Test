if ((instance_exists(obj_frisk) and (!instance_exists(obj_save_menu)) and distance_to_object(obj_frisk) < 1)
     and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")))){
    
    var _inst = instance_create_depth(0, 0, 0, obj_save_menu)
}
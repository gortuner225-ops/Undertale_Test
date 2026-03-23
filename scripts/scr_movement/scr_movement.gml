function frisk_set_idle(){
    if instance_exists(obj_frisk){
      if (obj_frisk.sprite_index == sp_frisk_back_walk) obj_frisk.sprite_index = sp_frisk_back_idle
                
      else if (obj_frisk.sprite_index == sp_frisk_front_walk) obj_frisk.sprite_index = sp_frisk_front_idle
          
      else if (obj_frisk.sprite_index == sp_frisk_rigth_walk) obj_frisk.sprite_index = sp_frisk_right
          
      else if (obj_frisk.sprite_index == sp_frisk_left_walk) obj_frisk.sprite_index = sp_frisk_left
    }
}

function frisk_movement(){
    if (instance_exists(obj_frisk)){
      _hor = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))
      _ver = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")))
      
      if (not (_hor == 0 and _ver == 0)){
          if (_ver > 0) obj_frisk.sprite_index = sp_frisk_front_walk
              
          else if (_ver < 0) obj_frisk.sprite_index = sp_frisk_back_walk
              
          else if (_hor > 0) obj_frisk.sprite_index = sp_frisk_rigth_walk
              
          else if (_hor < 0) obj_frisk.sprite_index = sp_frisk_left_walk
      }
      
      else {
        frisk_set_idle()
    }
      
      move_and_collide(_hor * obj_frisk.move_speed, _ver * obj_frisk.move_speed, [obj_frisk.tilemap, obj_save], 
                      undefined, undefined, undefined, obj_frisk.move_speed, obj_frisk.move_speed)
    }
}
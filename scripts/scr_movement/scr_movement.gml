function frisk_set_idle(){
    if instance_exists(obj_frisk){
      if (obj_frisk.sprite_index == sp_frisk_back_walk) obj_frisk.sprite_index = sp_frisk_back_idle
                
      else if (obj_frisk.sprite_index == sp_frisk_front_walk) obj_frisk.sprite_index = sp_frisk_front_idle
          
      else if (obj_frisk.sprite_index == sp_frisk_rigth_walk) obj_frisk.sprite_index = sp_frisk_right
          
      else if (obj_frisk.sprite_index == sp_frisk_left_walk) obj_frisk.sprite_index = sp_frisk_left
    }
}

function player_movement(){
    if (instance_exists(obj_frisk)){
      _hor = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))
      _ver = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")))
      
      if (not (_hor == 0 and _ver == 0)){
          if (_ver > 0) {
            obj_frisk.sprite_index = sp_frisk_front_walk
            direction = 270 
        }
              
          else if (_ver < 0) {
            obj_frisk.sprite_index = sp_frisk_back_walk
            direction = 90
        }
              
          else if (_hor > 0) {
            obj_frisk.sprite_index = sp_frisk_rigth_walk
            direction = 0
        }
              
          else if (_hor < 0) {
            obj_frisk.sprite_index = sp_frisk_left_walk
            direction = 180
        }
      }
      
      else {
        frisk_set_idle()
    }
      
      move_and_collide(_hor * obj_frisk.move_speed, _ver * obj_frisk.move_speed, [obj_sans, obj_save, obj_collider], 
                      undefined, undefined, undefined, obj_frisk.move_speed, obj_frisk.move_speed)
        
        x[0] = round(x[0.1])
        y[0] = round(y[0.1])
    
    }
}

function move_frisk(){
    
}
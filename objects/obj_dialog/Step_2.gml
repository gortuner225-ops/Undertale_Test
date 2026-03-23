if (current_message < 0) exit;
    
_str = messages[current_message].text

show_debug_message("cm: {0}, cr: {1}, cl: {2}", current_message, current_char, current_line)

if (current_line < array_length(_str)){
    str_len = string_length(_str[current_line])
    
    if (keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("X"))){
        draw_message = string_join_ext("", _str)
        current_line = array_length(_str)
        current_char = str_len
    }
    else {
       if (current_char < str_len + 0.1 * (str_len % char_speed == 0)) { 
          current_char += char_speed 
        if (((current_char / char_speed) % floor(1/char_speed)) == 0) audio_play_sound(messages[current_message].voice, 0, false)
          draw_message = string_copy(buffer_message + _str[current_line], 0, 
                      current_char + string_length(buffer_message))
       }
       else if (!alarmed) {
           alarmed = true
           alarm[0] = messages[current_message].delay
       }
    }
}

else if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) {
    if (not is_undefined(messages[current_message].end_script)){
        messages[current_message].end_script()
    }
        
    current_message++;
    if (current_message >= array_length(messages)){
        instance_destroy()
    }
    else {
    	current_char = 0
        current_line = 0
        draw_message = ""
        buffer_message = ""
        
        if (not is_undefined(messages[current_message].start_script)){
            messages[current_message].start_script()
        }
    }
}
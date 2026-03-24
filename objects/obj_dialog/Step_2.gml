if current_message < 0 exit;

var lines = string_split(messages[current_message].text, "[dl]")

if (current_line < array_length(lines)){
    var message = lines[current_line]
    var msg_len = string_length(message)

    if (skippable and (keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("X")))){
        draw_message = string_join_ext("", lines)
        current_line = array_length(lines)
    }
    else if (printing) {
    	if (current_char < msg_len + 0.1 * (msg_len % char_speed == 0)){
            current_char += char_speed
            if ((not is_undefined(messages[current_message].voice)) and (0 <= frac(current_char) and frac(current_char) < 0.3)) audio_play_sound(messages[current_message].voice, 0, false);
        }
        else {
            buffer_message += message
        	current_line++
            current_char = 0
            
            // Delay
            var _time_source = time_source_create(time_source_game, messages[current_message].delay, time_source_units_seconds, dialog_delay)
            time_source_start(_time_source);
            
            printing = false
        }
        draw_message = string_copy(buffer_message + message, 0, 
                          current_char + string_length(buffer_message))
    }
}

else if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) {
    current_message++;
    if (current_message >= array_length(messages)){
        instance_destroy()
    }
    else {
        current_char = 0
        current_line = 0
        draw_message = ""
        buffer_message = ""
        printing = true
    }
}
if (instance_exists(obj_frisk) and distance_to_object(obj_frisk) < 1){
    if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))){
       sprite_index = sp_sans_front
        frisk_set_idle()
           
       create_dialog([
       {
           name: "sans",
           text: "* h[dl]u[dl]m[dl]a[dl]n",
           logo: undefined,
           delay: 1,
           voice: undefined,
           start_script: undefined,
           delay_script: undefined,
           end_script: undefined
       },
       {
           name: "sans",
           text: "* it's just an ordinary test dialogue text",
           logo: sp_sans_dialog_1,
           delay: 1,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: undefined
       },
        {
           name: "sans",
           text: "* hehehehehhehe",
           logo: sp_sans_dialog_1,
           delay: 1,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: increase_talk
       }
       ])
    }
}

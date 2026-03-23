if instance_exists(obj_dialog) exit
    
if (instance_exists(obj_frisk) and distance_to_object(obj_frisk) < 1){
    if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))){
       sprite_index = sp_sans_front
        frisk_set_idle()
           
       create_dialog([
       {
           name: "sans",
           text: ["* heya, kid\n", "  you've been busy, huh?"],
           logo: sp_sans_dialog_1,
           delay: 60,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: undefined
       },
       {
           name: "sans",
           text: ["* you look kinda surprised to see me here"],
           logo: sp_sans_dialog_1,
           delay: 10,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: undefined
       },
       {
           name: "sans",
           text: ["* well, i think i could de-lay my death for some break"],
           logo: sp_sans_dialog_1,
           delay: 10,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: undefined
       },
       {
           name: "sans",
           text: ["* ...\n", "* ......"],
           logo: sp_sans_dialog_2,
           delay: 30,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: undefined
       },
       {
           name: "sans",
           text: ["* are you gonna order something or what?"],
           logo: sp_sans_dialog_1,
           delay: 10,
           voice: snd_voice_sans,
           start_script: undefined,
           script: undefined,
           end_script: start_battle
       }
       /*
       {
           name: "sans",
           text: ["* maybe we should spend one more bad time again?"],
           logo: sp_sans_dialog_4,
           delay: 10,
           voice: sd_voice_sans
       }*/
       ])
    }
}
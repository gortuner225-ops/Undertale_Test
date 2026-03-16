function start_battle(){
    if instance_exists(obj_sans) instance_destroy(obj_sans)
    if instance_exists(obj_frisk) instance_destroy(obj_frisk)
    if instance_exists(obj_save) instance_destroy(obj_save)
    
    audio_stop_sound(global.bg_music_id)
    
    room_goto(BattleRoom)
}
function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog)
    _inst.messages = _messages
    _inst.current_message = 0
}

function check_frisk(_obj){
    var obj = _obj;
    
    var _direction = point_direction(obj.x, obj.y, obj_frisk.x, obj_frisk)
}

function dialog_delay(){
    if (not instance_exists(obj_dialog)) return;
    show_debug_message("Dialog Delay")
    obj_dialog.printing = true
}
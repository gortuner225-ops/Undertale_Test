_lv_message = "LV" + string(obj_frisk.LV)
_name_message = string(obj_frisk.name)
_room_message = ROOM_LABELS[room_get_name(room)]
_exp_message = "EXP" + string(obj_frisk.EXP)

_dx = gui_w * 0.15
_dy = gui_h * 0.25

_box_w = gui_w * 0.65
_box_h = gui_h * 0.35

draw_sprite_stretched(sp_save_menu, 0, _dx, _dy, _box_w, _box_h)

draw_set_font(Font2)

_dx += 20
_dy += 25

draw_text_ext(_dx, _dy, _name_message, -1, _box_w - _dx)
draw_text_ext(_dx + _box_w * 0.3, _dy, _lv_message, -1, _box_w - _dx)

_dy += 40

draw_text_ext(_dx, _dy, _room_message, -1, _box_w - _dx)
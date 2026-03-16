_dx = 20
_dy = gui_h * 0.7 - 10
_box_w = gui_w - _dx - 20
_box_h = gui_h - _dy - 20

draw_sprite_stretched(sp_dialog_box_undertale, 0, _dx, _dy, _box_w, _box_h)

_dx += 26
_dy += 26

draw_set_font(Font1)

_logo = messages[current_message].logo
draw_sprite_stretched(_logo, 0, _dx, _dy, _box_w * logo_scale, _box_w * logo_scale)
_dx += _box_w * logo_scale + 35

draw_text_ext(_dx, _dy, draw_message, -1, _box_w - _dx)
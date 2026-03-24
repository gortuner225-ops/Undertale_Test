_box_w = gui_w - 40
_box_h = gui_h * box_size_v

_dx = 20
_dy = gui_h - _box_h - 10

draw_sprite_stretched(sp_dialog_box_undertale, 0, _dx, _dy, _box_w, _box_h)

show_debug_message(_box_h)

_dx += 0.05 * _box_w
_dy += (0.6 - logo_scale) * _box_h - 35

draw_set_font(Font1)

if not is_undefined(messages[current_message].logo){
  var _logo = messages[current_message].logo
  draw_sprite_stretched(_logo, 0, _dx, _dy, _box_w * logo_scale, _box_w * logo_scale)
  _dx += _box_w * logo_scale + 35 
}

draw_text_ext(_dx, _dy, draw_message, -1, _box_w - _dx)
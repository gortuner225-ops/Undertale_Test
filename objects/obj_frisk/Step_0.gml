// Toggle fullscreen mode by pressing F4
if (keyboard_check_pressed(vk_f4)) window_set_fullscreen(!window_get_fullscreen())

// Disabling players actions while dialoging
if instance_exists(obj_dialog) exit;

player_movement()

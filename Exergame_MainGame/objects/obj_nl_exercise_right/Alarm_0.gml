/// @description change sprite index

//show_debug_message(variable_global_get("eg_num2"));
sprite_index = asset_get_index("spr_nl_exercise_" + string(variable_global_get("eg_num2")));
image_xscale = 1/3 * (window_get_width() / sprite_get_width(sprite_index));
image_yscale = 1/3 * (window_get_width() / sprite_get_width(sprite_index));
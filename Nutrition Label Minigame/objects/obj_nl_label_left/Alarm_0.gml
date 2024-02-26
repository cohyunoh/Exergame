/// @description change sprite index

//show_debug_message(variable_global_get("nl_num1"));
sprite_index = asset_get_index("spr_nl_label_" + string(variable_global_get("nl_num1")));
image_xscale = 3/4 *  (window_get_height() / sprite_get_height(sprite_index));
image_yscale = 3/4 *  (window_get_height() / sprite_get_height(sprite_index));
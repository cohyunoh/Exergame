/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("2"))) {
if (instance_exists(obj_TM_player_2)) {
        instance_destroy(obj_TM_player_2);
        _active_players-=1; // Reduce active players count
    }
}


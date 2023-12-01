/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("4"))) {
if (instance_exists(obj_player_4)) {
        instance_destroy(obj_player_4);
        _active_players-=1; // Reduce active players count
    }
}


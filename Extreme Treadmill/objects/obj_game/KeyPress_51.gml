/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("3"))) {
if (instance_exists(obj_player_3)) {
        instance_destroy(obj_player_3);
        _active_players-=1; // Reduce active players count
    }
}


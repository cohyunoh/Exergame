// obj_game step event

// Check for one player left standing
var _active_count = 0;
var _winning_player = -1;

// Iterate through all players
for (var i = 1; i <= 4; i++) {
    var _player_obj = noone;

    // Use a switch statement to handle different player instances
    switch (i) {
        case 1: _player_obj = obj_TM_player_1; break;
        case 2: _player_obj = obj_TM_player_2; break;
        case 3: _player_obj = obj_TM_player_3; break;
        case 4: _player_obj = obj_TM_player_4; break;
    }

    // Check if the player instance exists, increment the count and set winning player
    if (_player_obj != noone && instance_exists(_player_obj)) {
        _active_count += 1;
        _winning_player = i;
    }
}

_active_players = _active_count;

// Check if only one player is left
if (_active_players == 1) {
    show_message("Player " + string(_winning_player) + " wins!");
    game_over();
}

// Handle timer logic
if (_total_seconds > 0) {
    _total_seconds -= delta_time / 1000000;
} else {
    // Timer has reached 0, handle game over or reset logic here
    // Set monster visibility to false when the timer ends
    if (instance_exists(obj_TM_monster)) {
        obj_TM_monster.visible = false;
    }

    // Optionally, reset the timer here
    _total_seconds = 180; // Reset to 3 minutes * 60 seconds
    show_message("Time's up!");
    game_over();
}

obj_TM_monster.visible = (_active_players > 1); // Show monster if more than one player is active

// Function to handle game over logic
function game_over() {
    game_end(); // Close the game
}












































   





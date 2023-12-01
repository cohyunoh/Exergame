// Check for one player left standing
var _active_count = 0;
var _winning_player = -1;

if (instance_exists(obj_player_1)) {
    _active_count += 1;
    _winning_player = 1;
}
if (instance_exists(obj_player_2)) {
    _active_count += 1;
    _winning_player = 2;
}
if (instance_exists(obj_player_3)) {
    _active_count += 1;
    _winning_player = 3;
}
if (instance_exists(obj_player_4)) {
    _active_count += 1;
    _winning_player = 4;
}

_active_players = _active_count;

// Check if only one player is left
if (_active_players == 1) {
    show_message("Player " + string(_winning_player) + " wins!");
    game_over();
}

// Handle timer logic
if (_total_seconds > 0) {
    _total_seconds -= delta_time/1000000;
} else {
    // Timer has reached 0, handle game over or reset logic here
    // Set monster visibility to false when the timer ends
    if (instance_exists(obj_monster)) {
        obj_monster.visible = false;
    }

    // Optionally, reset the timer here
    _total_seconds = 180; // Reset to 3 minutes * 60 seconds
    show_message("Time's up!");
	game_over();
}

obj_monster.visible = (_active_players > 1); // Show monster if more than one player is active

// Function to handle game over logic
function game_over() {
    // Add your game over actions here
    game_end(); // Close the game
}

if (_exercise_object != noone) {
    _exercise_object.x = x;
    // Other code related to _exercise_object
}

   





_total_seconds = 180;
_timer_speed = 1; // Adjust this if needed
_alarm_speed = 1; // Adjust this if needed
_active_players = 4;

// Set the timer
alarm[0] = _alarm_speed * 1000000; // Set alarm[0] directly with microseconds

fnt_font_game = fnt_font_timer; // Create a new font

// Function to handle game over logic

obj_running.visible = false;
obj_lunges.visible = false;
obj_jumping_jacks.visible = false;
obj_high_knees.visible = false;
obj_butt_kicks.visible = false;

_exercise_object = noone; // Initialize with no instance
exercise_object = instance_create_layer(0, 0, "Background", obj_exercise);

// Declare the _exercise_options variable
global._exercise_options = ds_list_create();
ds_list_add(global._exercise_options, "running");
ds_list_add(global._exercise_options, "lunges");
ds_list_add(global._exercise_options, "jumping_jacks");
ds_list_add(global._exercise_options, "high_knees");
ds_list_add(global._exercise_options, "butt_kicks");

// Shuffle the exercise options
for (var _i = ds_list_size(global._exercise_options) - 1; _i > 0; _i--) {
    var _j = irandom(_i);
    var _temp = global._exercise_options[| _i];
    global._exercise_options[| _i] = global._exercise_options[| _j];
    global._exercise_options[| _j] = _temp;
}

// Initialize the global variable to keep track of the current exercise index
global._current_exercise_index = 0;

// Set the initial exercise for obj_exercise
if (instance_exists(obj_exercise)) {
    obj_exercise.choose_next_exercise();
}









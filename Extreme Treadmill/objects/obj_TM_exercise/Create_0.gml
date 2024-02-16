// obj_exercise create event

// Initialize global variables
global._exercise_options = ds_list_create();
ds_list_add(global._exercise_options, "running");
ds_list_add(global._exercise_options, "lunges");
ds_list_add(global._exercise_options, "jumping_jacks");
ds_list_add(global._exercise_options, "high_knees");
ds_list_add(global._exercise_options, "butt_kicks");

// Initialize _current_exercise_index if it doesn't exist
if (!variable_global_exists("_current_exercise_index")) {
    global._current_exercise_index = 0;
}

randomize();
_global_current_exercise_index = random_range(0,5);
_global_current_exercise = global._exercise_options[| _global_current_exercise_index];

// Set exercise timer duration
_exercise_timer = 30;

// Display the message for the initial exercise only if it hasn't been shown before
if (!global.initial_exercise_message_shown) {
    show_message("The next exercise is " + _global_current_exercise);
    global.initial_exercise_message_shown = true;
}

// Set _current_exercise for the first time
_current_exercise = _global_current_exercise;

// Function to choose the next exercise
function choose_next_exercise() {
    // Choose a random exercise from the list
    _global_current_exercise_index += 1;

    // Wrap around to the beginning if we reach the end of the list
    if (_global_current_exercise_index >= ds_list_size(global._exercise_options)) {
        _global_current_exercise_index = 0;
    }

    _current_exercise = global._exercise_options[| _global_current_exercise_index];

    // Set exercise timer duration
    _exercise_timer = 30;

    // Display the message for the next exercise
    show_message("The next exercise is " + _current_exercise);
}

































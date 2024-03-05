//obj_exercise step event

// Adjust exercise timer using delta_time
_exercise_timer -= delta_time / 1000000;

// Check if the exercise timer has reached 0
if (_exercise_timer <= 0) {
    choose_next_exercise(); // Choose the next exercise when the timer reaches 0
    _exercise_timer = 30; // Reset the exercise timer to 30 seconds
}

// Set visibility for each exercise based on the current exercise
obj_TM_running.visible = (_current_exercise == "running");
obj_TM_lunges.visible = (_current_exercise == "lunges");
obj_TM_jumping_jacks.visible = (_current_exercise == "jumping_jacks");
obj_TM_high_knees.visible = (_current_exercise == "high_knees");
obj_TM_butt_kicks.visible = (_current_exercise == "butt_kicks");
























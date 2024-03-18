// obj_game create event

// Initialize global variables
global.initial_exercise_message_shown = false;
global.timer_zero_exercise_message_shown = false;

_total_seconds = 180;
_timer_speed = 1; // Adjust this if needed
_alarm_speed = 1; // Adjust this if needed
_active_players = 4;

// Set the timer
alarm[0] = _alarm_speed * 1000000; // Set alarm[0] directly with microseconds

fnt_font_game = fnt_TM_font_timer; // Create a new font

// Initialize exercise objects
obj_TM_running.visible = false;
obj_TM_lunges.visible = false;
obj_TM_jumping_jacks.visible = false;
obj_TM_high_knees.visible = false;
obj_TM_butt_kicks.visible = false;

_exercise_object = noone; // Initialize with no instance
exercise_object = instance_create_layer(0, 0, "Background", obj_TM_exercise);

// Show initial exercise message only once
if (!global.initial_exercise_message_shown) {
    if (instance_exists(obj_TM_exercise)) {
        obj_TM_exercise.choose_next_exercise(); // Choose the initial exercise
        global.initial_exercise_message_shown = true;
    }
}








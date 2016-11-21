///scr_play_song(audio_id)
// Assign this song to current song in audio manager
var song = argument[0];

// Stop current song
audio_pause_sound(obj_audioManager.current_song);

obj_audioManager.current_song = song;

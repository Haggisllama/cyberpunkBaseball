if(global.roomTransitionTimer > 0 && !flag) {
	flag = true;
	audio_sound_gain(musicVar,0,(global.roomTimerReferenceVal/60)*1000);
}

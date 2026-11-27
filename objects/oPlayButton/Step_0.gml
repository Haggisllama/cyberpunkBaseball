if (collision_point(mouse_x,mouse_y,oPlayButton,false,false)) {
	if(mouse_check_button_pressed(mb_left)){
		isPressed = true;
		targetSize = shrinkAmount;
	}
	if(mouse_check_button_released(mb_left)){
		if (isPressed) {
			targetSize = growAmount;
			countDown = 20;
			isPressed = false;
		}
	}
}

if(mouse_check_button_released(mb_left)){
	targetSize = 1;
	isPressed = false;
}

if(countDown > 0){
	countDown -= 1;
	if (countDown == 0) room_goto(rCutscene);
}

image_xscale = lerp(image_xscale,targetSize,0.3);
image_yscale = lerp(image_yscale,targetSize,0.3);
timer -= 1;
if (timer < 1){
	if (amountRevealed < string_length(textArray[currentLine]))	{
		amountRevealed += 1;
		timer = 2;
	}
}
if (mouse_check_button_pressed(mb_left)){
	if(amountRevealed < string_length(textArray[currentLine])){
		amountRevealed = string_length(textArray[currentLine]);
	}
	else{
		if(currentLine < lastLine && extraTimer < 0){
			currentLine += 1;
			flag = true;
			amountRevealed = 0;
		}
		else if(extraTimer < 0){
			global.roomTransitionTimer = global.roomTimerReferenceVal;
		}
	}
}

extraTimer -= 1;

if (flag && amountRevealed == string_length(textArray[currentLine])){
	extraTimer = 10;
	flag = false;
}

drawString = "";

for (i = 1; i <= amountRevealed; i++){
	drawString += string_char_at(textArray[currentLine],i);	
}

if (global.roomTransitionTimer = 0) {
	room_goto(rMenu);
}
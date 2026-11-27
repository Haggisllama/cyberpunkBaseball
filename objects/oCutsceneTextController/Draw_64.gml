draw_text(x,y,drawString);
if(global.roomTransitionTimer >= 0){
	alphaVal = (global.roomTimerReferenceVal - global.roomTransitionTimer)/global.roomTimerReferenceVal;
	draw_set_alpha(alphaVal);
	draw_set_colour(c_black);
	draw_rectangle(0,0,854,480,false);
	draw_set_colour(c_white);
	draw_set_alpha(255);
}

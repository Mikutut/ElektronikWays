if mouse_check_button_pressed(mb_left)
{
	if(alarm[0] < 0)
	{
		if(y <= 90)  {
			finishMinigame(true);
		} else {
			vspeed = -5;
			alarm[0] = 10;
			image_speed = 0.15;
		}
	}
}
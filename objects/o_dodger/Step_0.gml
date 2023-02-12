if mouse_check_button_pressed(mb_left)
{
	if(alarm[0] < 0)
	{
		if(y <= 90)  {
			finishMinigame(true);
		} else {
			vspeed = -10;
			alarm[0] = 5;
		}
	}
}
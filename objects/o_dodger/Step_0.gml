 if mouse_check_button_pressed(mb_left)
{
	if(alarm[0] < 0 && (current_time - cooldown) > 150)
	{
		if(y <= 100)  {
			finishMinigame(true);
		} else {
			vspeed = -10;
			alarm[0] = 5;
			cooldown = current_time;
		}
	}
}

if mouse_check_button_pressed(mb_right)
{
	if(alarm[0] < 0 && y < 600)
	{
		vspeed = 10;
		alarm[0] = 5;
	}	
}

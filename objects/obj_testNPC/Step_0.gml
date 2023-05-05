if (place_meeting((x - 1), (y), obj_player) && obj_player.face == RIGHT && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z"))) 
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        face = LEFT
}
if (place_meeting((x), (y + 1), obj_player) && obj_player.face == UP && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        face = DOWN
}
if (place_meeting((x + 1), (y), obj_player) && obj_player.face == LEFT && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        face = RIGHT
}

if (place_meeting((x), (y - 1), obj_player) && obj_player.face == DOWN && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        face = UP
}

//pause
if instance_exists(obj_pauser)
	{
	xspd = 0;
	yspd = 0;
	}

//set sprite
mask_index = sprite[DOWN];
sprite_index = sprite[face];


//animate
if xspd == 0 && yspd == 0
{
	image_index = 0;
}	


//depth
depth = -bbox_bottom;

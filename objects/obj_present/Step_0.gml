
if (place_meeting((x - 1), (y - 1), obj_player) &&  (!instance_exists(obj_textbox)) && keyboard_check(ord("Z"))) || (place_meeting((x + 1), (y + 1), obj_player)  && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
		if (image_index != 1)
        create_textbox(text_id)
		move_spd = 0;
}


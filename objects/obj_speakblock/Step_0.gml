

if (place_meeting((x + 1), (y + 1), obj_player) && obj_player.face == UP && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z"))) || (place_meeting((x + 1), (y + 1), obj_player) && obj_player.face == UP && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
		move_spd = 0;
}
if (!instance_exists(obj_textbox))
{
	move_spd = 1;
}	
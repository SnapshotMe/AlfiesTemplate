if (place_meeting((x - 1), (y), obj_player) && obj_player.face == RIGHT && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z"))) 
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        face = LEFT
        move_spd = 0;
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

//depth
depth = -bbox_bottom;

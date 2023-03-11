
// x + 1 = RIGHT /// x - 1 = LEFT /// y - 1 = UP /// y + 1 = DOWN /// 1 means 1 pixel  


if (place_meeting((x - 1), (y), obj_player) && obj_player.face == RIGHT && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z"))) 
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        move_spd = 0; // YOU CANT MOVE IF TEXTBOX IS OPEN
} 
if (place_meeting((x), (y + 1), obj_player) && obj_player.face == UP && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
        move_spd = 0; // YOU CANT MOVE IF TEXTBOX IS OPEN
}

if (place_meeting((x + 1), (y), obj_player) && obj_player.face == LEFT && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
         move_spd = 0; // YOU CANT MOVE IF TEXTBOX IS OPEN
}

if (place_meeting((x), (y - 1), obj_player) && obj_player.face == DOWN && (!instance_exists(obj_textbox)) && keyboard_check(ord("Z")))
{
    if keyboard_check_pressed(ord("Z"))
        create_textbox(text_id)
         move_spd = 0; // YOU CANT MOVE IF TEXTBOX IS OPEN
}


if (!instance_exists(obj_textbox))
{
    move_spd = 1;
}    

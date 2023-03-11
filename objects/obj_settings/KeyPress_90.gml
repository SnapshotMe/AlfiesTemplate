

switch(menu_index)
	{
	case 0:
	room_goto(room_bedroom);
	break;
	case 1:
	room_goto(room_info);
	break;
	case 2:
	room_goto(room_credits);
	break;
	case 3:
	game_end();
	break;
	}
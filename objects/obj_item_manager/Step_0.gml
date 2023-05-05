

//get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++)
	{
	var _xx = camera_get_view_x(view_camera[0]) + 16;
	var _yy = camera_get_view_y(view_camera[0]) + 16 + sep*i;
	var _sep = sep;	
	
	if mouse_x > _xx && mouse_x < _xx+8 && mouse_y > _yy && mouse_y < _yy + 8
		{
			selected_item = i;	
		}
		
	
	}


if selected_item != -1
{
	//use an item
	if mouse_check_button_pressed(mb_left)
		{
		inv[selected_item].effect();
		}
	//drop the item
	if mouse_check_button_pressed(mb_right) && inv[selected_item].can_drop == true
		{
		//get rid of the item
		array_delete(inv, selected_item, 1);
		}
}
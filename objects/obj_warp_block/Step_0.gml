if place_meeting(x, y, obj_player) && !instance_exists(obj_warp)
    {
	var inst = instance_create_depth(0, 0, -9999, obj_warp);
	inst.target_c = target_c
	inst.target_y = target_y
	inst.target_rm = target_rm
	inst.target_face = target_face;
    }
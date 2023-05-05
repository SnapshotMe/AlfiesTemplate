right_key = keyboard_check(vk_right) || keyboard_check(ord("D"))
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"))
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"))
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"))
run_key = (keyboard_check(vk_shift)) || keyboard_check(ord("X"))

if instance_exists(obj_textbox) 
	{
		move_spd = 0;
	}
else 
	{
		move_spd = 1
	}	
if run_key && (!instance_exists(obj_textbox))
{
	move_spd = 2;
	image_speed = 2;
}	
if !run_key && (!instance_exists(obj_textbox))
{
	move_spd = 1;
	image_speed = 1;
} 

//get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


//pause
if instance_exists(obj_pauser)
	{
	xspd = 0;
	yspd = 0;
	}

//set sprite
mask_index = sprite[DOWN];
if yspd == 0
{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT{face = RIGHT};
if xspd < 0 && face == RIGHT{face = LEFT};

if xspd == 0
{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP{face = DOWN};
if yspd < 0 && face == DOWN{face = UP};

sprite_index = sprite[face];


//collisions
if place_meeting( x + xspd, y, wall) == true
	{
	xspd = 0;	
	}
if place_meeting (x, y + yspd, wall ) == true
	{
	yspd = 0;	
	}

//move the player
x += xspd;
y += yspd;



//animate
if xspd == 0 && yspd == 0
{
	image_index = 0;
}	


//depth
depth = -bbox_bottom;

depth = -9998;

font1 = font_main;


//item constructor
function create_item(_name, _desc, _spr, _can_drop, _effect) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
		can_drop = _can_drop;
		effect = _effect;
		
	}

//create the items
global.item_list = 
	{
	burger : new create_item(
		"Burger",
		"Burger gives hp",
		spr_burger,
		true,
		
		function()
			{
			//obj_player.hp += 5; //our player does not have HP value so we dont include for this time
				
			//get rid of the item
			array_delete(inv, selected_item, 1);
			
			//add half burger item
			array_insert(inv, selected_item, global.item_list.burger_half);
			}
		),
	
	burger_half : new create_item(
		"Half-Burger",
		"Finish your burger",
		spr_burger_half,
		true,
		
		function()
			{
			//obj_player.hp += 5;
				
			//get rid of the item
			array_delete(inv, selected_item, 1);
			}
		),
		
	bomb : new create_item(
		"Bomb",
		"a Bomb",
		spr_bomb,
		true,
		
		function()
			{
			instance_create_depth(obj_player.x, obj_player.y, 0, obj_bomb_weapon);
			
			//get rid of the item
			array_delete(inv, selected_item, 1);
			}
		),
		
	redkey : new create_item(
		"Red key",
		"opens red doors (1 time)",
		spr_redkey,
		false,
		
		function()
			{
			var _used = false;
				
			if instance_exists(obj_red_door)	
				{
				
				with(obj_red_door)
					{
						if distance_to_object(obj_player) < 3 
							{
							audio_play_sound(snd_lightswitch, 1, false);
							instance_destroy();
							_used = true;
							};
					}
			}
			
			//get rid of the item
			if _used == true
				{
				array_delete(inv, selected_item, 1);
				}
			}
			
		),	
			
		
	
	}
	
	
//create the inventory
inv = array_create(0);

inv_max = 5;
selected_item = -1;
	
//for drawing and mouse positions
sep = 16;
//screen_bord = 16;

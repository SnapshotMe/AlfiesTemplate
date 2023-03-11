/// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {



//"Nix Character"
//"Alfie Character"
//"Nix Character uwu"
//"Nix Character Sad"
		
	case "npc 1":
		scr_text("HEY! I'm Player!", "Character");
			scr_text_color(9, 15, c_blue, c_blue, c_blue, c_blue); //scr_text_float(1, 4);           //scr_text_color(9, 11, c_blue, c_blue, c_blue, c_blue);
		scr_text("Sad icon test", "Character Sad"); 
		scr_text("Uwu test", "Character uwu");
		scr_text("Happy test" , "Character");
		break;	
	
		
	case "npc 2":
        scr_text("Hey!", "Kris Character");
        scr_text("Hey!", "Character");;
            scr_option("How are you!", "npc 2 - yes")
            scr_option("what are you doing", "npc 2 - no")
        break;
        case "npc 2 - yes":
        scr_text("Fine what about you?", "Kris Character");
		scr_text("Fine thanks" , "Character");
		scr_text("* You Talked With Kris");
        break;
        case "npc 2 - no":
            scr_text("Just chillin", "Kris Character");
			scr_text("Cool" , "Character");
			scr_text("* You Talked With Kris");
            break;
	case "bed":
		scr_text("Thats a bed!")
		break;
	 
	case "drawer":
		scr_text("thats a drawer")
		break;
	case "Bigdrawer":
		scr_text("thats a Big drawer")
		break;	
	case "TV":
		scr_text("thats an old tv")
		break;	
	case "wall":
		scr_text("thats a WALL!                                      -a friend")
		scr_text_float(8, 13); 
		break;		
	 
	
		
	}
	
}	
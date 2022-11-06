//buttons...
if (mouse_check_button_pressed(mb_left) && !release){
	if (mouse_x > 350 && mouse_x < 720 && 
	mouse_y > 780 && mouse_y < 880){ //sell
		global.game_manager_id.coins += price;
		global.game_manager_id.alarm[1] = irandom_range(3, 10) * room_speed;
		instance_destroy();
	}
	else if (mouse_x > 800 && mouse_x < 1050 && 
	mouse_y > 780 && mouse_y < 880){ //cultivate
		//insert cultivation...
	}
	else if (mouse_x > 1120 && mouse_x < 1520 &&
	mouse_y > 780 && mouse_y < 880){ //release
		release = true;
		if (fish_name == "Largemouth Bass" && (length > 18 || weight > 12)){
			price *= 2;
		}
		else{
			price -= irandom_range(0,10);
		}
		price = round(price);
		global.game_manager_id.coins += price;
		alarm[1] = 3 * room_speed;
	}
}

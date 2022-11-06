if (mouse_check_button_pressed(mb_left)){
	if (acc < 5 && acc > -5){
		acc = -10;
	}
	else{
		acc = -5;
	}
}

if (_y >= y - 200 && _y <= y + 200){
	if (_y == y - 200 && acc > 0){
		_y += acc;
		if (acc > 0){
			acc += 0.25;
		}
		else{
			acc++;
		}
	}
	else if (_y == y + 200 && acc < 0){
		_y += acc;
		if (acc > 0){
			acc += 0.25;
		}
		else{
			acc++;
		}
		
	}
	else if (_y != y - 200 && _y != y + 200){
		_y += acc;
		if (acc > 0){
			acc += 0.25;
		}
		else{
			acc++;
		}
	}
}
else{
	if (_y < y - 200){
		_y = y - 200;
	}
	if (_y > y + 200){
		_y = y + 200;
	}
}

if (_y == y - 200){
	acc = 1;
}

if (fish_pos_goal + fish_speed < fish_pos){
	fish_pos -= fish_speed;
}
else if (fish_pos_goal - fish_speed > fish_pos){
	fish_pos += fish_speed;
}
else{
	fish_pos = fish_pos_goal;
}

//time to catch!!!
if ((y + 250 - fish_pos) - (bar_slimness) <= _y
	&& (y + 250 - fish_pos) + (bar_slimness) >= _y){
		capture += 0.3;
		capture = min(100, capture);
}
else{
	capture-= 0.2;
}

if (capture >= 100){
	//insert catching stuff here...
	switch (fish){
		case FISH.LARGEMOUTH:
			_fish = "Largemouth Bass";
			_background = "A common freshwater fish. They put up a good fight.\n" + 
			" Culture among largemouth bass anglers is to release larger largemouth bass,\n" +
			" since they usually tend to be breeding females.";
			break;
		case FISH.RAINBOW:
			_fish = "Rainbow Trout";
			_background = "An adaptible fish, highly regarded as one of the toughest fighting trout.";
			break;
		case FISH.WALLEYE:
			_fish = "Walleye";
			_background = "Walleyes are fairly popular with anglers,\n" +
			" so natural resources agencies have put a limit on Walleyes.\n" + 
			" For example, in Michigan, Walleye shorter than 15 inches cannot be legally kept.";
			break;
		case FISH.CARP:
			_fish = "Carp";
			_background = "Not a very sought out after fish.\n" +
			" It is quite oily, and the fish can be invasive.";
			break;
		case FISH.BULLHEAD:
			_fish = "Bullhead"
			_background = "These fish usually hang out around the bottom of the lake.\n" +
			" How did you manage to catch them?";
			break;
	}
	scr_fishCaught(_fish, _background);
	instance_destroy();
}
else if (capture < -5){
	//instance_destroy();
}
capture = min(100, capture);
capture = max (-10, capture);
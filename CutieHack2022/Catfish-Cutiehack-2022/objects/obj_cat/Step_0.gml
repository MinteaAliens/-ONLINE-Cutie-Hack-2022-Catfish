//fishing code
if (!instance_exists(obj_fishCaught)){
	if (state == STATE.IDLE && mouse_check_button_pressed(mb_left) && instance_exists(obj_alert)){
		state = STATE.FISHING;
		instance_create_depth(x + 600, y - 250, 0, obj_fishingMeter);
	}

	if (state == STATE.FISHING){
		sprite_index = spr_catFish
	}
	else if (state == STATE.IDLE){
		sprite_index = spr_catIdle;
	}

	y = (3 * sin(sin_i)) + (550);

	sin_i += pi/60;
	if (sin_i > 2*pi){
		sin_i = pi/60;
	}
}
if (!instance_exists(obj_fishCaught) && !instance_exists(obj_fishingMeter)){
	state = STATE.IDLE;
}
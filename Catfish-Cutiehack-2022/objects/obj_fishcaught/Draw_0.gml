if (ready){
	draw_set_alpha(1);
	draw_set_color(c_maroon);
	draw_rectangle(220, 180, 1720, 1000, false);
	draw_set_color(c_white);
	draw_rectangle(320, 280, 1620, 900, false);
	if (!release){
		draw_sprite_ext(sprite_index, 0, (1920/2), 250, 0.75, 0.75, 0, -1, 1);

		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(font_default);
		draw_text((1920/2), 700, background);

		draw_text((1920/2), 600, fish_name);

		draw_set_color(c_maroon);
		draw_rectangle(350, 780, 720, 880, false);
		draw_rectangle(800, 780, 1050, 880, false);
		draw_rectangle(1120, 780, 1520, 880, false);
		draw_set_color(c_white);
		draw_rectangle(380, 800, 700, 850, false);
		draw_rectangle(820, 800, 1030, 850, false);
		draw_rectangle(1150, 800, 1500, 850, false);

		draw_set_color(c_black)
		draw_text(525, 825, "SELL FOR " + string(price));
		draw_text(925, 825, "CULTIVATE");
		draw_text(1325, 825, "RELEASE");
	}
	else{
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(font_default);
		draw_text((1920/2), 500, "The fish is thankful and gives you " + string(price) + " coins.");
	}
}
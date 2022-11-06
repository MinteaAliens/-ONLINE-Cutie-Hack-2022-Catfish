draw_set_alpha(1);
draw_set_color(c_maroon);

draw_rectangle(x - 50, y - 250, x + 50, y + 250, false);
draw_set_color(c_white);
draw_rectangle(x - 40, y - 220, x + 40, y + 220, false);

draw_set_color(c_orange);
draw_rectangle(x - 40, 
	max(y - 220, (y + 250 - fish_pos) - (bar_slimness)),
	x + 40,
	min(y + 220, (y + 250 - fish_pos) + (bar_slimness)),
	false);
	
draw_set_color(c_black);
draw_rectangle (x + 47, y - 220, x + 48, y + 220, false);
draw_set_color(c_lime);
draw_rectangle(x + 47, (y + 220) - (capture * 4.4), x + 48, y + 220, false);
//draw_set_font(font_default);
//draw_text(x + 100, y, capture);

draw_set_color(c_ltgray);
var i;
for (i = 1; i < 8; i++){
	draw_line(x - 40, (y - 220) + (55 * i), x + 40, (y - 220) + (55 * i));
}

draw_sprite(spr_fishingMeter, 0, x, _y);
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(50, 50, 300, 800, false);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(font_default);
var i;
for (i = 0; i < 5; i++){
	draw_text(75, 75 + (i*145), fish_names[i]);
	draw_sprite_ext(fish_fillet_sprites[i], 0, 125, 75 + (i*145) + 75, 0.2, 0.2, 0, -1, 1);
	draw_text(200, 100 + (i*145) + 75, fish_fillet[i]);
}
//draw coin count
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(1700, 50, 1900, 100, false);

draw_set_color(c_black);
draw_set_font(font_default);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_text(1880, 75, coins);

draw_sprite(spr_fishingMeter, 0, 1900, 75);
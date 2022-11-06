// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fishCaught(_fish, _background){
	var fish_caught = instance_create_layer(x, y, 0, layer_get_id("Fish"));
	with (fish_caught){
		fish_name = argument[0];
		background = argument[1];
	}
}
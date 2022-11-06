_y = y + 200; //the y position of the fishing meter icon
acc = 0;
//pick a fish
enum FISH{
	LARGEMOUTH = 0,
	RAINBOW = 1,
	WALLEYE = 2,
	CARP = 3,
	BULLHEAD = 4
}
fish = irandom_range(0, 4);
fish_movement = [0,0,0,0,0]; //fish will have a movement guide to where they will be
//max fish movement is 440
fish_speed = 0;
fish_randomness = 0;
bar_slimness = 0;
switch (fish){
	case FISH.LARGEMOUTH:
		fish_movement = [25, 100, 250, 360, 440];
		fish_speed = 10;
		fish_randomness = 20;
		bar_slimness = 70;
		break;
	case FISH.RAINBOW:
		fish_movement = [25, 110, 220, 330, 440];
		fish_speed = 15;
		fish_randomness = 7;
		bar_slimness = 35;
		break;
	case FISH.WALLEYE:
		fish_movement = [25, 100, 200, 300, 400];
		fish_speed = 5;
		fish_randomness = 10;
		bar_slimness = 45;
		break;
	case FISH.CARP:
		fish_movement = [25, 50, 75, 100, 125];
		fish_speed = 5;
		fish_randomness = 11;
		bar_slimness = 50;
		break;
	case FISH.BULLHEAD:
		fish_movement = [25, 45, 50, 75, 100];
		fish_speed = 1;
		fish_randomness = 11;
		bar_slimness = 40;
		break;
}
fish_pos = 25;
fish_pos_goal = 25;
alarm[0] = (fish_randomness * (room_speed/2));

capture = 5;
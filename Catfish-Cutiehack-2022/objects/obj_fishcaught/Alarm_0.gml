ready = true;

length = 0;
switch (fish_name){
	case "Largemouth Bass":
		sprite_index = spr_largemouthBass;
		weight = irandom_range(5, 15);
		length = irandom_range(13, 20);
		price = 500;
		break;
	case "Rainbow Trout":
		sprite_index = spr_rainbowTrout;
		weight = irandom_range(5, 20);
		length = irandom_range(10, 30);
		price = 900;
		
		break;
	case "Walleye":
		sprite_index = spr_walleye;
		weight = irandom_range(15, 25);
		length = irandom_range(25, 40);
		price = 1900;
		break;
	case "Carp":
		sprite_index = spr_carp;
		weight = irandom_range(3, 10);
		length = irandom_range(12, 24);
		price = 300;
		break;
	case "Bullhead":
		sprite_index = spr_bullhead;
		weight = irandom_range(1, 2);
		length = irandom_range(7, 17);
		price = 450;
		break;
}

price *= (length/weight);
price = round(price);
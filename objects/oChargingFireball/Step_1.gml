if(firstFrame)
{
	hitbox_create(-150*facing,-70,150,70,140,charge, 30*facing, 20, 5, 1.1, 0)
	image_xscale = image_xscale*clamp((0.1+charge/20), 0.1, 1)
	image_yscale = clamp((0.1+charge/20), 0.1, 1)
	firstFrame = false;
}

x = x + tSpeed*facing*god.gameSpeed;
hit_check()
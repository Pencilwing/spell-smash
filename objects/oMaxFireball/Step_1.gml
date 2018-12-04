if(firstFrame)
{
	hitbox_create(-100*facing,-125,200,250,69,40, 30*facing, 20, 5, 1.1, 0)
	firstFrame = false;
	show_debug_message("MAX FIREBALL")
}

x = x + tSpeed*facing*god.gameSpeed;
hit_check()
if(firstFrame)
{
	hitbox_create(-100*facing,-125,200,250,69,10, 30*facing, 20, 25, 1.1, 0)
	firstFrame = false;
}

x = x + tSpeed*facing*god.gameSpeed;
hit_check()
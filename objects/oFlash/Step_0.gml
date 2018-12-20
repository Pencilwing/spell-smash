
image_alpha = approach(image_alpha, 0, 1/flashDur*god.gameSpeed)


if(image_alpha <= 0)
{
	instance_destroy();	
}
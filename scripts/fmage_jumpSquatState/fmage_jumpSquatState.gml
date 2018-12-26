xSpeed = lerp(xSpeed,0,0.1);


if(!jumpHold ){
		ySpeed = shPower;
		jumping = true;
}

if(animation_end()){
        ySpeed = jPower;
		jumping = true;
}

if(jumping)
{
	jumpAnimFix --;
	if(jumpAnimFix <= 0)
	{
		jumpAnimFix = 2;
		jumping = false;
		dustFX = instance_create_depth(x,y+8,-10,oJumpDust)
		dustFX.image_xscale = facing
		state_reset();
	}
}


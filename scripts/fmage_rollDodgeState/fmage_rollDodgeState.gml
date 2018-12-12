//decelerate
ySpeed = approach(ySpeed,0,0.5 * god.gameSpeed);
xSpeed = approach(xSpeed,0,0.5 * god.gameSpeed);

if(!onGround)
{
	x = x-3*xSpeed;	
	xSpeed = 0;
}

if(frame_check(4,0)){
invincible = true;
shielded = true;

}

if(frame_check(25,0)){
invincible = false;
shielded = false;
hit = false;

}

if(animation_end()){
	state_reset()	
	hit = false;
}



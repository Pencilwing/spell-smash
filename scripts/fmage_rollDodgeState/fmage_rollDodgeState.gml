//decelerate
ySpeed = approach(ySpeed,0,0.5 * god.gameSpeed);
xSpeed = approach(xSpeed,0,0.5 * god.gameSpeed);

if(!onGround)
{
	x = x-40*sign(xSpeed);	
	xSpeed = 0;	
	y = y- 1
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

if(animation_end() && shieldHold){
	currentState = states.shield;	
	hit = false;
	facing = facingTemp;
}

if(animation_end() && !shieldHold){
	state_reset()
	hit = false;
	facing = facingTemp;
}



hitstunState = true;

if(!hitstopState)
{
	hitstopState = true
	xWiggle = x
	yWiggle = y
}else{
x = xWiggle + random_range(-10, 10);
y = yWiggle + random_range(-1, -20);
}

if(god.freezeDur <= 0)
{
x = xWiggle
y = yWiggle
hitstopState = false;
//slow horizontal speed
if(onGround){
    xSpeed = approach(xSpeed,0,0.1 * god.gameSpeed);
}else{
    xSpeed = approach(xSpeed,0,0.1 * god.gameSpeed);
}

//count down your hitStun until it reaches 0
hitStun -= 1 * god.gameSpeed;
if(hitStun <= 0){
    state_reset();
}
}
hitstunState = true;

if(hitstopState){
x = xWiggle + random_range(-10, 10);
}

if(god.freezeDur <= 0 && hitstopState)
{
x = xWiggle
xSpeed = vectorArray [1]
ySpeed = vectorArray [0]
hitstopState = false;
//slow horizontal speed
}
if(!hitstopState){
if(onGround){
    xSpeed = approach(xSpeed,0,0.2 * god.gameSpeed);
}else{
    xSpeed = approach(xSpeed,0,0.1 * god.gameSpeed);
}

//count down your hitStun until it reaches 0
hitStun -= 1 * god.gameSpeed;
if(hitStun <= 0){
	hitstunState = false;
    state_reset();
}
}
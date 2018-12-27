hitstunState = true;



if(hitstopState){
x = xWiggle + random_range(-10, 10);
}

if(god.freezeDur <= 0 && hitstopState)
{
x = xWiggle
TDI = tdiCalc();
vectorArray = vectorCalc(knockbackCalc(percentage,lDmg,weight,lGrth,lStr,1),lAng + TDI)
show_debug_message(TDI)
percentage = percentage + lDmg;
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
if(abs(xSpeed) > 20 || abs(ySpeed) > 20){
	smokePart = instance_create(x,y-100,oKnockBackSmoke)
	smokePart.image_angle = random_range(0,360)}
	//partFreq = partFreqDefault
}
	
	
//count down your hitStun until it reaches 0
hitStun -= 1 * god.gameSpeed;
//partFreq -= 1 *god.gameSpeed;
if(hitStun <= 0){
	hitstunState = false;
    state_reset();
}
}

//zero out ySpeed and gradually slow down the xSpeed
ySpeed = 0;
xSpeed = approach(xSpeed,0,0.5 * god.gameSpeed);

if(frame_check(1,0)){
	dustFX = instance_create(x,y,oDashDust)
	dustFX.image_xscale = facing	
}

if(frame_check(3,0)) rollable = false

/*if(!onGround ){
	if(dashDur < dashDurMax/1.25 && lastFrameGrounded)
{
	x = x-50*sign(xSpeed);	
	xSpeed = 0;
}
	state_reset()
}*/


if((abs(xAxis) >= lastFrameXAxis + tapThreshold) && (abs(xAxis)>= 0.8)){
	XsmashTap = true
}else XsmashTap = false

if((abs(yAxis) >= lastFrameYAxis + tapThreshold) && (abs(yAxis)>= 0.8)){
	YsmashTap = true
}else YsmashTap = false

if((left || right) && XsmashTap){
	state_reset(); 
	facing = sign(xAxis)
    dashDur = dashDurMax;
    xSpeed = 24 * facing;
    currentState = states.dash;   
	rollable = true
}

fmage_actions();

if(shield && rollable){
	currentState = states.rollDodge;
	xSpeed = 20*sign(facing);
	ySpeed = 0;
	shielded = false;
	hit = false;
}

//LastFrameAxis
lastFrameXAxis = abs(xAxis)
lastFrameYAxis = abs(yAxis)

//count down dashDur and reset state to normal when dashDur reaches 0
dashDur -= 1 * god.gameSpeed;
if(dashDur <= 0){
    state_reset();
}

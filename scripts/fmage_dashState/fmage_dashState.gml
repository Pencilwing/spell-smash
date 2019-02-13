//zero out ySpeed and gradually slow down the xSpeed
ySpeed = 0;
xSpeed = approach(xSpeed,0,0.5 * god.gameSpeed);

if(!onGround ){
	if(dashDur < dashDurMax/1.25 && lastFrameGrounded)
{
	x = x-50*sign(xSpeed);	
	xSpeed = 0;
}
	state_reset()
}

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
    //squash_stretch(1.3,0.7)
	dustFX = instance_create(x,y,oDashDust)
	dustFX.image_xscale = facing
    currentState = states.dash;   
}

fmage_actions();

//LastFrameAxis
lastFrameXAxis = abs(xAxis)
lastFrameYAxis = abs(yAxis)

//count down dashDur and reset state to normal when dashDur reaches 0
dashDur -= 1 * god.gameSpeed;
if(dashDur <= 0){
    state_reset();
}

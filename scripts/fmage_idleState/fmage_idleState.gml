/// @description movement
mSpeed = mSpeedDefault;
sideBDash = false;
angle = 0;
upB = false;
hitstunState = false;



if(abs(xAxis) >= lastFrameXAxis + tapThreshold){
	XsmashTap = true
}else XsmashTap = false

if(abs(yAxis) >= lastFrameYAxis + tapThreshold){
	YsmashTap = true
}else YsmashTap = false

fmage_actions();

//move left and right
if(left && !onGround){
    xSpeed = approach(xSpeed,-mSpeed,airSpeed * god.gameSpeed);
}else if(right && !onGround){
    xSpeed = approach(xSpeed,mSpeed,airSpeed * god.gameSpeed);
}else if((left || right) && XsmashTap){
	facing = sign(xAxis)
    dashDur = dashDurMax;
    xSpeed = 24 * facing;
    squash_stretch(1.3,0.7);
    currentState = states.dash;   
}else if(left){
    xSpeed = approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed);
}else if(right){
    xSpeed = approach(xSpeed,mSpeed,aSpeed * god.gameSpeed);
}else if (onGround){
    xSpeed = approach(xSpeed,0,3*god.gameSpeed);
}else{
	xSpeed = approach(xSpeed,0,0.1*god.gameSpeed)	
}



//LastFrameAxis
lastFrameXAxis = abs(xAxis)
lastFrameYAxis = abs(yAxis)
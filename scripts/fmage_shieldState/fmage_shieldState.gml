shielded =true;
xSpeed = 0;
if(frame_check(1,0)) shieldFacing = facing;

if(shieldHold == false){
	shielded = false;
	hit = false;
	state_reset();  	
}

	
if(left && !leftHold || right && !rightHold ){
	currentState = states.rollDodge;
	xSpeed = 20*sign(xAxis);
	ySpeed = 0;
	if(sign(xAxis) == shieldFacing) facing = sign(xAxis)*-1;
	shielded = false;
	hit = false;
}
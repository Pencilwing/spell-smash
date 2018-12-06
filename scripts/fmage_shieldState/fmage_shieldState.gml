shielded =true;
if(shieldHold == false){
	shielded = false;
	hit = false;
	state_reset();  	
}

	
if(/*left && !*/leftHold || /*right && !*/rightHold ){
	currentState = states.rollDodge;
	xSpeed = 20*sign(xAxis);
	ySpeed = 0;
	facing = sign(xAxis);
	shielded = false;
}
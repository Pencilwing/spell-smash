//decelerate
ySpeed = approach(ySpeed,0,0.5 * god.gameSpeed);
xSpeed = approach(xSpeed,0,0.5 * god.gameSpeed);

if(dashDur == airDodgeDur -3)invincible = true;
if(dashDur == airDodgeDur -30){
	invincible = false; 
	hit = false;
	gSpeed = gSpeedDefault;
	}

//count down dashDur and reset state to normal when dashDur reaches 0
dashDur -= 1 * god.gameSpeed;
if(dashDur <= 0){
    currentState = states.idle;
	//invincible = false;
	//hit = false;
}
if(onGround){
	currentState = states.idle;
	invincible = false;
	hit = false;
}


//slow horizontal speed
xSpeed = approach(xSpeed,0,1 * god.gameSpeed);

//count down recoverDur until it reaches 0, and then reset to normal state
landingLagDur -= 1 * god.gameSpeed;
if(landingLagDur <= 0){
    landingLagDur = landingLagDefault;
	gSpeed = gSpeedDefault;
    state_reset();
}

//delete your hitbox if one was active
if(hitbox != -1){
    with(hitbox){
        destroy = true;
    }
}

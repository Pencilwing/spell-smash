//slow horizontal speed
xSpeed = approach(xSpeed,0,1 * god.gameSpeed);

//count down recoverDur until it reaches 0, and then reset to normal state
recoverDur -= 1 * god.gameSpeed;
if(recoverDur <= 0){
    recoverDur = 10;
	gSpeed = gSpeedDefault;
    state_reset();
}

//delete your hitbox if one was active
if(hitbox != -1){
    with(hitbox){
        destroy = true;
    }
}

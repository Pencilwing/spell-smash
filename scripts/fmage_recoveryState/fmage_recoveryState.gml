//slow horizontal speed
xSpeed = lerp(xSpeed,0,0.05 * god.gameSpeed);
ySpeed = lerp(ySpeed,0,0.05 * god.gameSpeed);

//count down recoverDur until it reaches 0, and then reset to normal state
recoverDur -= 1 * god.gameSpeed;
if(recoverDur <= 0){
    recoverDur = 20;
	gSpeed = gSpeedDefault;
    state_reset();
}

//delete your hitbox if one was active
if(hitbox != -1){
    with(hitbox){
        destroy = true;
    }
}

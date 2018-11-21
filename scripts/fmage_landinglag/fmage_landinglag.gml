//interrupt air attacks when landing on the ground and put the player into a recovery state
if(onGround && !landed){
    if(currentFrame >= 0){
        state_change(states.recovery);
		angle = 0
    }else{
        state_reset();  
    }
}

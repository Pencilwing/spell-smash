//speed adjustments
if(onGround){
    xSpeed = approach(xSpeed,0,aSpeed * god.gameSpeed);
}/*else{
    xSpeed = lerp(xSpeed,0,0.1);
}*/

//landing recovery
fmage_landinglag();

//attackData
fmage_lightAttacks();
fmage_airAttacks();
fmage_heavyAttacks();
fmage_spellAttacks();

//countdown hitbox duration if active
if(dur > 0){
    dur -= 1 * god.gameSpeed;
}else{
    dur = 0;
}

//reset to normal state when the attack animation ends
if(animation_end()){
	if(upB){
	upB = false;
	currentState = states.specialFall;
	gSpeed = gSpeedDefault;
	angle = 0;
	}else{
	state_reset();  
	}
}

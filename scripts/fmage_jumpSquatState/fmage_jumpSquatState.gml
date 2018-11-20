		xSpeed = lerp(xSpeed,0,0.1);
if(!jumpHold ){
		ySpeed = jPower/2;
		state_reset();
}

if(animation_end()){
        ySpeed = jPower;
		state_reset();
}
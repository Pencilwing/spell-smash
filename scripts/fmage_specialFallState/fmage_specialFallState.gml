if(left){
    xSpeed = (approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed))/1.5;
}else if(right){
    xSpeed = (approach(xSpeed,mSpeed,aSpeed * god.gameSpeed))/1.5;
}else{
    xSpeed = approach(xSpeed,0,aSpeed * god.gameSpeed);
}


if(onGround){
	state_reset();
	show_debug_message("landed");
}
if (hitstunState){
	if(ySpeed >= 20|| xSpeed >= 20){
	ySpeed = ySpeed*-0.8;
	}else{
	ySpeed = 0
	xSpeed = 0
	}
}else{
//zero out yspeed when colliding with floor or ceiling
ySpeed = 0;
}
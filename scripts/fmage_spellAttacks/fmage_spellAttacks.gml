//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_spell:
		if(frame_check(1,0)){
			
		}	
    break;
	
	
	case attacks.side_spell:
        if(frame_check(14,0)){
			hitbox_create(50*facing,-150,200*facing,70,3,3*facing,-5,20,5);
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = 20*facing
		}
        if(frame_check(33,0)){
			sideBDash = true;
		}
		if(sideBDash){
			xSpeed = lerp(xSpeed,0,0.1);
			gSpeed = gSpeedDefault;
		}
    break;
	
	
	case attacks.up_spell:
	
		 if(frame_check(1,0)){
			xSpeed = 0;
			ySpeed = 0;
			gSpeed = 0;
					}
		 if(frame_check(43,0)){
			xDirection = xAxis;
			yDirection = yAxis;
			if(xAxis = 0 && yAxis = 0){
			yDirection = -1;
			}
			upB=true;
			xSpeed = xDirection;
			ySpeed = yDirection;
			if(xDirection == 0 || yDirection == 0){
				if(xDirection == 0 && yDirection == -1){
				angle = 1	
				}
				if(xDirection == 1 && yDirection == 0){
				angle = -90	
				}
				if(xDirection == -1 && yDirection == 0){
				angle = 90	
				}
			}else{
			angle = (point_direction(0,0,xDirection,yDirection))-90;
			facing = -1*sign(angle)
			}
			hitbox_create(50*facing,-150,200*facing,70,3,3*facing,-5,20,5);
		 }
		if(upB){			
			xSpeed = 15*xDirection
			ySpeed = 15*yDirection
			}
		
    break;
	

	
	case attacks.down_spell:
        if(frame_check(0,1)){
			
		}
    break;
}
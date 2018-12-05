//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_air:
	fmage_jump_control();
		if(frame_check(3,0)){
            hitbox_create(-75*facing,-220,150*facing,150,26,10,60*facing,20,5,1,0);
        }
    break;
	
	case attacks.front_air:
	fmage_jump_control();
        if(frame_check(15,0)){
            hitbox_create(120*facing,0,150*facing,100,15,15,135*facing,20,10,1,0);
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = -24*facing
			ySpeed = -20
			
		    sideBDash = true;
			}
		if(sideBDash){
				xSpeed = lerp(xSpeed,0,0.08*god.gameSpeed);
				gSpeed = gSpeedDefault;
			}
			
    break;
	
	case attacks.back_air:
	fmage_jump_control();
        if(frame_check(15,0)){
            hitbox_create(-280*facing,0,150*facing,100,15,15,-135*facing,20,10,1,0);
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = 24*facing
			ySpeed = -20
			
		    sideBDash = true;
			}
			
		if(sideBDash){
				xSpeed = lerp(xSpeed,0,0.08*god.gameSpeed);
				gSpeed = gSpeedDefault;
			}
    break;
	
	case attacks.up_air:
	fmage_jump_control();
        if(frame_check(15,0)){
			hitbox_create(-60*facing,-400,120*facing,120,15,5,10,20,10,1,0);
		}
    break;
	
	case attacks.down_air:
	fmage_jump_control();
        if(frame_check(6,0)){
            hitbox_create(-100*facing,0,200*facing,50,4,9,180*facing,20,10,1,0);
		}
    break;
}
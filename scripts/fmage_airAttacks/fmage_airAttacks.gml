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
			landingLagDur = 12
            hitbox_create(120*facing,0,150*facing,100,15,15,135*facing,20,10,1,0);
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = -30*facing
			ySpeed = -20
			
		    impulseDash = true;
			}
		if(impulseDash){
				xSpeed = lerp(xSpeed,0,0.08*god.gameSpeed);
				gSpeed = gSpeedDefault;
				fmage_actions();
			}
			
    break;
	
	case attacks.back_air:
	fmage_jump_control();
        if(frame_check(15,0)){
			landingLagDur = 12
            hitbox_create(-280*facing,0,150*facing,100,15,15,-135*facing,20,10,1,0);
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = 30*facing
			ySpeed = -20
			
		    impulseDash = true;
			}
			
		if(impulseDash){
				xSpeed = lerp(xSpeed,0,0.08*god.gameSpeed);
				gSpeed = gSpeedDefault;
				fmage_actions();
			}
    break;
	
	case attacks.up_air:
	fmage_jump_control();
        if(frame_check(15,0)){
			landingLagDur = 7
			hitbox_create(-60*facing,-400,120*facing,120,15,5,10,20,10,1,0);
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			ySpeed = 40
			
		    impulseDash = true;
			}
			
		if(impulseDash){
				xSpeed = lerp(xSpeed,0,0.1*god.gameSpeed);
				gSpeed = gSpeedDefault;
				fmage_actions();
			}
    break;
	
	case attacks.down_air:
	
	fmage_jump_control();
        if(frame_check(6,0)){
			landingLagDur = 12
            hitbox_create(-100*facing,0,200*facing,50,4,9,180*facing,20,10,1,0);
		}
		if(frame_check(42,0)){
			cancellable = true
		}
	
    break;
}
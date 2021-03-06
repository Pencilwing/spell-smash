//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_air:
	fmage_jump_control();
		if(frame_check(3,0)){
            hitbox_create(-75*facing,-220,150*facing,150,26,5,60*facing,20,13,1.5,0);
			partFreq = 3
        }
		if (partFreq <= 0){
		firePart = instance_create(x+random_range(-50,50),y-random_range(100,200),oFirePart)
		firePart.image_angle = random_range(0,360)
		partFreq = 3
		}
		
		partFreq --
		
    break;
	
	case attacks.front_air:
	fmage_jump_control();
        if(frame_check(15,0)){
			landingLagDur = 12
            hitbox_create(120*facing,0,150*facing,100,15,9,135*facing,20,14,1.8,0);
			explosion=instance_create(x+96*facing, y-75, oFairExplosion)
			explosion.image_angle = -45*facing
			explosion.image_xscale = facing
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = -15*facing
			ySpeed = -20
		    impulseDash = true;
			}
		if(impulseDash){
				//xSpeed = lerp(xSpeed,0,0.08*god.gameSpeed);
				gSpeed = gSpeedDefault;
				fmage_actions();
			}
			
    break;
	
	case attacks.back_air:
	fmage_jump_control();
        if(frame_check(15,0)){
			landingLagDur = 12
            hitbox_create(-280*facing,0,150*facing,100,15,9,-135*facing,20,14,1.8,0);
			explosion=instance_create(x-138*facing, y-41, oFairExplosion)
			explosion.image_angle = 45*facing
			explosion.image_xscale = -facing
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = 15*facing
			ySpeed = -20
			
		    impulseDash = true;
			}
			
		if(impulseDash){
				//xSpeed = lerp(xSpeed,0,0.08*god.gameSpeed);
				gSpeed = gSpeedDefault;
				fmage_actions();
			}
    break;
	
	case attacks.up_air:
	fmage_jump_control();
        if(frame_check(15,0)){
			landingLagDur = 7
			hitbox_create(-60*facing,-450,120*facing,180,15,8,10*facing,20,6,1.4,0);
			explosion=instance_create(x-16*facing, y-288, oFairExplosion)
			explosion.image_angle = 90*facing
			explosion.image_xscale = facing
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
            hitbox_create(-100*facing,0,200*facing,50,4,10,160*facing,20,16,1.2,0);
		}
		if(frame_check(42,0)){
			cancellable = true
		}
	
    break;
}
//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_spell:
		if(frame_check(3,0)){
			subState = attacks.charge_neutral_spell;
			charge = 5
		}	
		
		if(spell && !spellHold)
		{
			fireball = instance_create(x+180*facing,y-100, oChargingFireball)
			fireball.facing = facing
			fireball.image_xscale = facing
			fireball.charge = charge
			fireball.owner = id;
			subState = attacks.shoot_neutral_spell;
		}
	break;	
	
	case attacks.charge_neutral_spell:
		charge = charge + 0.1;
		if(frame_check(130,0)){
			fireball = instance_create(x+180*facing,y-140, oMaxFireball)
			fireball.facing = facing
			fireball.image_xscale = facing
			fireball.owner = id;
			subState = attacks.shoot_neutral_spell;	
		}
	
	if(spell && !spellHold)
		{
			fireball = instance_create(x+180*facing,y-140, oChargingFireball)
			fireball.facing = facing
			fireball.image_xscale = facing
			fireball.charge = charge
			fireball.owner = id;
			subState = attacks.shoot_neutral_spell;
		}
	
    break;
	
	
	case attacks.side_spell:
        if(frame_check(14,0)){
			hitbox_create(0*facing,-200,400*facing,200,18,8,50*facing,20,14,1.5,0);
			xSpeed = 0;
			ySpeed = 0;
			y = y - 2
			gSpeed = 0;
			xSpeed = 30*facing
		}
        if(frame_check(33,0)){
			impulseDash = true;
		}
		if(impulseDash){
			xSpeed = lerp(xSpeed,0,0.2);
			gSpeed = gSpeedDefault;
		}
		if(frame_check(42,0)){
			cancellable = true
		}
    break;
	
	
	case attacks.up_spell:
	
		 if(frame_check(1,0)){
			xSpeed = 0;
			ySpeed = 0;
			gSpeed = 0.05;
					}
		 if(frame_check(42,0)){
			xDirection = xAxis;
			yDirection = yAxis;
			if(xAxis = 0 && yAxis = 0){
			yDirection = -1;
			}
			upB=true;
			//play_soundFX(firefox_01, 1, false)
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
			hitbox_create(-35*facing,-100,90*facing,300,40,9,15*facing,20,7, 1.8, angle);
			particleActivate = true;
			partFreq = 3
			
        }
		
		if (partFreq <= 0 && particleActivate){
		firePart = instance_create(x+random_range(-20,20),y+random_range(-20,20),oFirePart)
		firePart.image_angle = random_range(0,360)
		partFreq = 3
		}
		
		partFreq --
		
		if(upB){			
			force = vectorCalc(17, ((point_direction(0,0,xDirection,yDirection))+90))
			xSpeed = force[0]
			ySpeed = force[1]
			}
		
    break;
	

	
	case attacks.down_spell:
        if(frame_check(0,1)){
			
		}
    break;
}
//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_light:
		if(!onGround){
		subState = attacks.neutral_air
		}
		if(attack && !attackHold && !downHold && !leftHold && !rightHold && !upHold)
		{
			nextAttack = true
		}
        if(frame_check(6,0)){
            hitbox_create(90*facing,-180,100*facing,70,3,1,60*facing,20,4,1,0);
			//play_soundFX(shortFire_01, 1, false)
        }
		if(frame_check(16, 0) && nextAttack){
			nextAttack = false
			subState = attacks.neutral_light_2
		}
    break;
	
	case attacks.neutral_light_2:
		if(attack && !attackHold && !downHold && !leftHold && !rightHold && !upHold)
		{
			nextAttack = true
		}
		
		if(frame_check(10,0)){
            hitbox_create(180*facing,-100,100*facing,70,4,1,60*facing,20,4,1,-45*facing);
			//play_soundFX(shortFire_03, 1, false)
        }
		if(frame_check(16, 0) && nextAttack){
			nextAttack = false
			subState = attacks.neutral_light_3
		}
	
    break;
	
	case attacks.neutral_light_3:
		if(frame_check(7,0)){
            hitbox_create(200*facing,-150,200*facing,60,4,2,60*facing,60,6,1,0);
			//play_soundFX(shortFire_02, 1, false)
		}
		
    break;
	
	
	case attacks.side_light:
		if(!onGround) state_reset();
        if(frame_check(4,0)){
            hitbox_create(120*facing,-230,90*facing,240,4,5,70*facing,20,9,1,0);
			//play_soundFX(shortFire_03, 1, false)
		}
    break;
	
	case attacks.up_light:
		if(!onGround) state_reset();
        if(frame_check(6,0)){
            hitbox_create(-150*facing,-250,250*facing,150,7,3,10*facing,20,8,1.1,0);
			//play_soundFX(mediumFire_01, 1, false)
		}
    break;
	
	case attacks.down_light:
		if(!onGround) state_reset();
        if(frame_check(4,0)){
            hitbox_create(80*facing,-50,150*facing,50,4,3,15*facing,20,12,1,0);
			//play_soundFX(shortFire_02, 1, false)
		}
    break;
}

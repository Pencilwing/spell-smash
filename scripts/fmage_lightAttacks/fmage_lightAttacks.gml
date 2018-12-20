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
            hitbox_create(50*facing,-150,100*facing,70,3,1,60*facing,20,5,1,0);
			play_soundFX(shortFire_01, 1, false)
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
            hitbox_create(120*facing,-100,50*facing,70,4,1,60*facing,20,10,1,0);
			play_soundFX(shortFire_03, 1, false)
        }
		if(frame_check(16, 0) && nextAttack){
			nextAttack = false
			subState = attacks.neutral_light_3
		}
		
    break;
	
	case attacks.neutral_light_3:
		if(frame_check(7,0)){
            hitbox_create(150*facing,-120,120*facing,100,4,1,60*facing,60,15,1,0);
			play_soundFX(shortFire_02, 1, false)
		}
		
    break;
	
	
	case attacks.side_light:
		if(!onGround) state_reset();
        if(frame_check(4,0)){
            hitbox_create(100*facing,-200,50*facing,200,4,5,70*facing,20,10,1,0);
			play_soundFX(shortFire_03, 1, false)
		}
    break;
	
	case attacks.up_light:
		if(!onGround) state_reset();
        if(frame_check(6,0)){
            hitbox_create(-150*facing,-250,250*facing,150,7,5,0*facing,20,10,1.5,0);
			play_soundFX(mediumFire_01, 1, false)
		}
    break;
	
	case attacks.down_light:
		if(!onGround) state_reset();
        if(frame_check(4,0)){
            hitbox_create(30*facing,-50,150*facing,50,4,5,15*facing,20,10,1,0);
			play_soundFX(shortFire_02, 1, false)
		}
    break;
}

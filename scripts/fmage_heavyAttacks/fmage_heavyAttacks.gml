//create hitboxes based on specific frames during the attack
switch(subState){
	
	case attacks.side_heavy:
		if(!onGround) state_reset();
        if(frame_check(31,0)){
            hitbox_create(300*facing,-180,500*facing,100,15,10,60*facing,20,18,2,0);
			sideHeavyFire = instance_create(x+210*facing,y-250,sideSpellFire)
			sideHeavyFire.image_xscale = facing/3;
			play_soundFX(heavyFire_01, 1, false)
		}
    break;
	
	case attacks.up_heavy:
		if(!onGround) state_reset();
        if(frame_check(13,0)){
            hitbox_create(-75*facing,-350,150*facing,250,4,8,10*facing,20,22,2,0);
			play_soundFX(heavyFire_02, 1, false)
		}
    break;
	
	case attacks.down_heavy:
		if(!onGround) state_reset();
        if(frame_check(5,0)){
            hitbox_create(-200*facing,-100,400*facing,100,6,1,-20*facing,20,8,0.5,0);
			play_soundFX(mediumFire_01, 1, false)
		}
		
		if(frame_check(9,0)){
            hitbox_create(-200*facing,-100,400*facing,100,6,1,-20*facing,20,8,0.5,0);
			play_soundFX(mediumFire_02, 1, false)
		}
		
		if(frame_check(13,0)){
            hitbox_create(-200*facing,-100,400*facing,100,6,6,20*facing,20,15,1.5,0);
			play_soundFX(mediumFire_03, 1, false)
		}
    break;
}

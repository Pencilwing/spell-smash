//create hitboxes based on specific frames during the attack
switch(subState){
	
	case attacks.side_heavy:
        if(frame_check(31,0)){
            hitbox_create(200*facing,-180,400*facing,100,15,20*facing,-5,20,10,1,0);
			sideHeavyFire = instance_create(x+210*facing,y-250,sideSpellFire)
			sideHeavyFire.image_xscale = facing/3;
			play_soundFX(heavyFire_01, 1, false)
		}
    break;
	
	case attacks.up_heavy:
        if(frame_check(1,0)){
            hitbox_create(-75*facing,-350,150*facing,150,15,0*facing,-30,20,10,1,0);
			play_soundFX(heavyFire_02, 1, false)
		}
    break;
	
	case attacks.down_heavy:
        if(frame_check(5,0)){
            hitbox_create(-200*facing,-100,400*facing,100,2,3*facing,-20,20,10,1,0);
			play_soundFX(mediumFire_01, 1, false)
		}
		
		if(frame_check(9,0)){
            hitbox_create(-200*facing,-100,400*facing,100,2,3*facing,-20,20,10,1,0);
			play_soundFX(mediumFire_02, 1, false)
		}
		
		if(frame_check(13,0)){
            hitbox_create(-200*facing,-100,400*facing,100,2,3*facing,-20,20,10,1,0);
			play_soundFX(mediumFire_03, 1, false)
		}
    break;
}

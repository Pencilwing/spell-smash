//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_light:
		if(!onGround){
		subState = attacks.neutral_air
		}
        if(frame_check(6,0)){
            hitbox_create(50*facing,-150,100*facing,70,15,3*facing,-5,20,5);
        }
        if(frame_check(7,0)){
            hitbox_create(50*facing,-150,100*facing,70,15,3*facing,-5,20,5);
        }
        if(frame_check(8,0)){
            hitbox_create(50*facing,-150,100*facing,70,15,3*facing,-5,20,5);
        }
		if(frame_check(30,0)){
            hitbox_create(120*facing,-100,50*facing,70,15,3*facing,-5,20,10);
        }
		if(frame_check(31,0)){
            hitbox_create(120*facing,-100,50*facing,70,15,3*facing,-5,20,10);
        }
		if(frame_check(32,0)){
            hitbox_create(120*facing,-100,50*facing,70,15,3*facing,-5,20,10);
        }
		if(frame_check(33,0)){
            hitbox_create(120*facing,-100,50*facing,70,15,3*facing,-5,20,10);
        }
		if(frame_check(47,0)){
            hitbox_create(150*facing,-120,120*facing,100,15,5*facing,-7,60,15);
        }
		if(frame_check(48,0)){
            hitbox_create(150*facing,-120,120*facing,100,15,5*facing,-7,60,15);
        }
		if(frame_check(49,0)){
            hitbox_create(150*facing,-120,120*facing,100,15,5*facing,-7,60,15);
        }
		if(frame_check(50,0)){
            hitbox_create(150*facing,-120,120*facing,100,15,5*facing,-7,60,15);
        }
    break;
	
	case attacks.side_light:
        if(frame_check(1,0)){
            hitbox_create(100*facing,-200,50*facing,200,15,10*facing,-5,20,10);
		}
    break;
	
	case attacks.up_light:
        if(frame_check(1,0)){
			hitbox_create(70*facing,-200,50*facing,200,15,0*facing,-18,20,10);
            hitbox_create(-150*facing,-250,200*facing,50,15,0*facing,-18,20,10);
		}
    break;
	
	case attacks.down_light:
        if(frame_check(1,0)){
            hitbox_create(100*facing,-50,100*facing,50,15,3*facing,-20,20,10);
		}
    break;
}

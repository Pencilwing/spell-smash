//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_light:
		if(!onGround){
		subState = attacks.neutral_air
		}
        if(frame_check(6,0)){
            hitbox_create(50*facing,-150,100*facing,70,3,3*facing,-5,20,5,1,0);
        }
		if(frame_check(30,0)){
            hitbox_create(120*facing,-100,50*facing,70,4,3*facing,-5,20,10,1,0);
        }
		if(frame_check(47,0)){
            hitbox_create(150*facing,-120,120*facing,100,4,5*facing,-7,60,15,1,0);
		}
    break;
	
	case attacks.side_light:
        if(frame_check(1,0)){
            hitbox_create(100*facing,-200,50*facing,200,15,10*facing,-5,20,10,1,0);
		}
    break;
	
	case attacks.up_light:
        if(frame_check(6,0)){
            hitbox_create(-150*facing,-250,250*facing,150,7,0*facing,-18,20,10,1,0);
		}
    break;
	
	case attacks.down_light:
        if(frame_check(4,0)){
            hitbox_create(30*facing,-50,150*facing,50,4,3*facing,-20,20,10,1,0);
		}
    break;
}

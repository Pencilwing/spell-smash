//create hitboxes based on specific frames during the attack
switch(subState){    
    case attacks.neutral_air:
		if(frame_check(3,0)){
            hitbox_create(-75*facing,-220,150*facing,150,26,15*facing,-5,20,5);
        }
    break;
	
	case attacks.front_air:
        if(frame_check(15,0)){
            hitbox_create(120*facing,0,150*facing,100,15,10*facing,10,20,10);
		}
    break;
	
	case attacks.back_air:
        if(frame_check(15,0)){
            hitbox_create(-280*facing,0,150*facing,100,15,-10*facing,-10,20,10);
		}
    break;
	
	case attacks.up_air:
        if(frame_check(15,0)){
			hitbox_create(-60*facing,-400,120*facing,120,15,3*facing,-30,20,10);
		}
    break;
	
	case attacks.down_air:
        if(frame_check(6,0)){
            hitbox_create(-100*facing,0,200*facing,50,4,3*facing,30,20,10);
		}
    break;
}
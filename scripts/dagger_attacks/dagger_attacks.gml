//create hitboxes based on specific frames during the attack
//and position the hitbox relative to the current weapon and attack
switch(subState){    
    case attacks.side_light:
    case attacks.side_air:
        if(frame_check(1,0)){
            hitbox_create(-2*facing,-16,20*facing,12,5,2*facing,-2,60,10,1,0);
        }
    break;
    
    case attacks.up_light:
    case attacks.up_air:
        if(frame_check(1,0)){
            hitbox_create(-10*facing,-35,18*facing,20,5,2*facing,-4,60,10,1,0);
        }       
		if(frame_check(2,0)){
            hitbox_create(-1*facing,-35,50*facing,50,10,2*facing,-4,60,10,1,0);
        }    
    break;
    
    case attacks.down_light:
    case attacks.down_air:
        if(frame_check(1,0)){
            hitbox_create(-4*facing,-9,22*facing,18,5,3*facing,3,60,10,1,0);
        }  
    break;
}

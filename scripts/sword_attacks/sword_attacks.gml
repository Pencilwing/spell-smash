//create hitboxes based on specific frames during the attack
//and position the hitbox relative to the current weapon and attack
switch(subState){    
    case attacks.side_light:
    case attacks.side_air:
        if(frame_check(1,0)){
            hitbox_create(-2*facing,-16,26*facing,14,6,3*facing,-2,60,10,1,0);
        }
    break;
    
    case attacks.up_light:
    case attacks.up_air:
        if(frame_check(1,0)){
            hitbox_create(-2*facing,-32,20*facing,22,6,3*facing,-4,60,10,1,0);
        }        
    break;
    
    case attacks.down_light:
    case attacks.down_air:
        if(frame_check(1,0)){
            hitbox_create(-10*facing,-12,18*facing,26,6,3*facing,3,60,10,1,0);
        }  
    break;
}

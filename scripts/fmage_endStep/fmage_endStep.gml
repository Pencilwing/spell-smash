//inherit code from parent
event_inherited();

//run code based on players current state
switch(currentState){
    case states.idle:
        fmage_idleState();
    break;
    
    case states.attack:
        fmage_attackState();
    break;
	
	case states.jumpSquat:
        fmage_jumpSquatState();
    break;
	
	case states.shield:
		
        fmage_shieldState();
    break;
    	
	case states.airDodge:
        fmage_airDodgeState();
    break;
	
	case states.specialFall:
        fmage_specialFallState();
    break;
	
    case states.dash:
        fmage_dashState();
    break;
    
    case states.recovery:
        fmage_recoveryState();
    break;
    
    case states.hitstun:
        fmage_hitstunState();
    break;
}

//hit
if(hit && !shielded && !invincible){
    squash_stretch(1.5,1.5);      
    god.shakeDur = 5;
	god.shake  = true;
	god.freezeDur = hitBy.hitStun/5;
	god.freeze = true;
    y --;
    xSpeed = hitBy.xHit + ((sign(hitBy.xHit)*percentage)/5);
    ySpeed = hitBy.yHit + ((sign(hitBy.yHit)*percentage)/5);
	gSpeed = 0;
    if(sign(hitBy.xHit) * -1 = 0){
			facing = 1	
			}else{
			facing = sign(hitBy.xHit) * -1
			}
	percentage = percentage + hitBy.damage;
	show_debug_message(percentage);
    depth  = hitBy.depth;
    hitStun = hitBy.hitStun;
    currentState = states.hitstun;
    hit = false;
}

//update hitbox position
hbox_update();

//animation control
fmage_animation();

//destroy
fmage_destroy();


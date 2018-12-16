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
	
	case states.rollDodge:
        fmage_rollDodgeState();
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
	//Visual Hit Effects
	squash_stretch(1.2,1.2);
	starHit = instance_create(x + ((x - hitBy.x)/4*1), (y-100) + ((y - hitBy.y)/4*1),oStarHitFX)
	starHit.image_angle = -hitBy.kbAng -90;
	smashHit = instance_create(x + ((x - hitBy.x)/4*1), (y-100) + ((y - hitBy.y)/4*1),oSmashHitFX_1)
	smashHit.image_angle = -hitBy.kbAng -90;
	//Sound Hit Effects
	play_soundFX(lightHit_02, 1, false)
	//HitStop
	god.freezeDur = (hitBy.damage + 1);
	god.freeze = true;
	//Knockback and Hitstun calculation and application
    y --;
	vectorArray = vectorCalc(knockbackCalc(percentage,hitBy.damage,weight,hitBy.growth,hitBy.kbStr,1),hitBy.kbAng)
    if(sign(hitBy.xHit) * -1 = 0){
			facing = 1	
			}else{
			facing = sign(hitBy.xHit) * -1
			}
	percentage = percentage + hitBy.damage;
    depth  = hitBy.depth;
    hitStun = hitBy.kbStr*2;
	xWiggle = x
	hitstopState = true
    currentState = states.hitstun;
    hit = false;
}

if (percentage >= 999) percentage = 999

//update hitbox position
hbox_update();

//animation control
fmage_animation();

//destroy
fmage_destroy();

lastFrameGrounded = onGround;
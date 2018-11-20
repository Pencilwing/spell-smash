//inherit code from parent
event_inherited();

//run code based on players current state
switch(currentState){
    case states.idle:
        pl_idleState();
    break;
    
    case states.attack:
        pl_attackState();
    break;
    
    case states.dash:
        pl_dashState();
    break;
    
    case states.recovery:
        pl_recoveryState();
    break;
    
    case states.hitstun:
        pl_hitstunState();
    break;
}

//hit
if(hit){
    squash_stretch(1.5,1.5);
    weaponSprite = sprEmpty;       
    god.shakeDur = 5;
	god.shake  = true;
	god.freeze = true;
    y --;
    xSpeed = hitBy.xHit;
    ySpeed = hitBy.yHit;
    facing = hitBy.owner.facing * -1;
    depth  = hitBy.depth;
    hitStun = hitBy.hitStun;
    currentState = states.hitstun;
    hit = false;
}

//update hitbox position
hbox_update();

//animation control
pl_animation();

//destroy
pl_destroy();

//x and y position of the sprite
xPos = x;
yPos = y;

//make sure x and y scale is always trying to reset to 1
xScale = approach(xScale,1,0.05*god.gameSpeed);
yScale = approach(yScale,1,0.05*god.gameSpeed);

//store current sprite information
currentSprite = sprite;

//landing squish
if(onGround){
    if(!landed){
        squash_stretch(1.3,0.7);
        landed = true;
		doubleJump = false;
    }
}else{
    landed = false;
}

//change sprites and animations based on current state
switch(currentState){
    case states.idle:
        //grounded movement
        if(onGround){
            //idle
            if(!left && !right){
                if(down){
                    //crouch
                    animation_set(fd_fmage_idle,spr_fireMage_crouch);
                }else{
                    //body
                    animation_set(fd_fmage_idle,spr_fireMage_idle);
                }
            //run
            }else{if(!jumping)
				{
				   animation_set(fd_fmage_run,spr_fireMage_run);
				}		
            }
        //in air animation
        }else{
            
            if(ySpeed < 1){
				animation_set(fd_fmage_jump,spr_fireMage_jump);
				jumping = false;
            }else{
                animation_set(fd_fmage_jump,spr_fireMage_fall);
				
        }
		}
        //change facing direction based on left/right. 
        //facing flips the sprite to the left and right.
        if(left && onGround){
            facing = -1;
        }else if(right && onGround){
            facing = 1;
        }
    break;
    
    case states.jumpSquat:
        animation_set(fd_fmage_jumpsquat,spr_fireMage_jumpSquat);
    break;
	
    case states.dash:
        animation_set(fd_fmage_dash,spr_fireMage_dash);
    break;
	
	 case states.shield:
        animation_set(fd_fmage_dash,spr_fireMage_shield);
    break;
	
	 case states.spotDodge:
        animation_set(fd_fmage_dash,spr_fireMage_spotDodge);
    break;
		 
	 case states.rollDodge:
        animation_set(fd_fmage_rollDodge,spr_fireMage_rollDodge);
    break;
	
     case states.airDodge:
        animation_set(fd_fmage_dash,spr_fireMage_airDodge);
    break;
	
	 case states.specialFall:
        animation_set(fd_fmage_dash,spr_fireMage_specialFall);
    break;
	
    case states.dead:
        animation_set(fd_fmage_dead,spr_fireMage_knockdown);
    break;
    
    case states.attack:
        switch(subState){
			case attacks.neutral_light:
                animation_set(fd_fmage_light_neutral,spr_fireMage_jab);
            break;
			
			case attacks.side_light:
                animation_set(fd_fmage_light_side,spr_fireMage_ftilt);
            break;
           
            case attacks.up_light:
                animation_set(fd_fmage_light_up,spr_fireMage_utilt);       
            break;
            
            case attacks.down_light:
                animation_set(fd_fmage_light_down,spr_fireMage_dtilt);      
            break;
			  
			case attacks.side_heavy:
                animation_set(fd_fmage_heavy_side,spr_fireMage_sideStrong);
            break;
           
            case attacks.up_heavy:
                animation_set(fd_fmage_heavy_up,spr_fireMage_upStrong);       
            break;
            
            case attacks.down_heavy:
                animation_set(fd_fmage_heavy_down,spr_fireMage_downStrong);      
            break;
			
            case attacks.neutral_air:
                animation_set(fd_fmage_air_neutral,spr_fireMage_nAir);    
            break;
            
            case attacks.front_air:
                animation_set(fd_fmage_air_front,spr_fireMage_fAir);    
            break;
             
            case attacks.back_air:
                animation_set(fd_fmage_air_back,spr_fireMage_bAir);    
            break;
            
            case attacks.up_air:
                animation_set(fd_fmage_air_up,spr_fireMage_uAir);       
            break;
            
            case attacks.down_air:
                animation_set(fd_fmage_air_down,spr_fireMage_dAir);      
            break;
			
			case attacks.neutral_spell:
                animation_set(fd_fmage_spell_neutral,spr_fireMage_neutralSpell);
            break;
			
			case attacks.charge_neutral_spell:
                animation_set(fd_fmage_spell_neutral_charge,spr_fireMage_neutralSpellCharge);
            break;
			
			case attacks.shoot_neutral_spell:
                animation_set(fd_fmage_spell_neutral_shoot,spr_fireMage_neutralSpellShoot);
            break;
			
			case attacks.side_spell:
                animation_set(fd_fmage_spell_side,spr_fireMage_sideSpell);
            break;
           
            case attacks.up_spell:
                animation_set(fd_fmage_spell_up,spr_fireMage_upSpell);       
            break;
            
            case attacks.down_spell:
                animation_set(fd_fmage_spell_down,spr_fireMage_downSpell);      
            break;
			  
        }
    break;
    
    case states.recovery:
        animation_set(fd_fmage_recovery,spr_fireMage_land);
    break;
    
    case states.hitstun:
        //draw hit sprite during hit stop
        if(god.freeze){
            animation_set(fd_fmage_hitstun,spr_fireMage_knockback);
        }else{
            //laying down on the ground after being hit
            if(onGround){
                animation_set(fd_fmage_hitstun,spr_fireMage_knockdown);
            //flying through the air after being hit      
            }else{
                animation_set(fd_fmage_dead,spr_fireMage_knockback);
            }
        }
    break;
}

//reset animation counters if sprite changes
if(lastSprite != currentSprite){
    frame_reset();
    lastSprite = currentSprite;
}

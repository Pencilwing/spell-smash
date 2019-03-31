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

onGround = check_below();

//change sprites and animations based on current state
switch(currentState){
    case states.idle:
        //grounded movement
        if(onGround){
            //idle
            if(!left && !right){
                if(down){
                    //crouch
                    animation_set(fd_fmage_idle, asset_get_index("spr_fireMage_crouch"+string(player)));
                }else{
                    //body
                    animation_set(fd_fmage_idle,asset_get_index("spr_fireMage_idle"+string(player)));
                }
            //run
            }else{if(!jumping)
				{
				   animation_set(fd_fmage_run,asset_get_index("spr_fireMage_run"+string(player)));
				}		
            }
        //in air animation
        }else{
            
            if(ySpeed <= 0){
				animation_set(fd_fmage_jump,asset_get_index("spr_fireMage_jump"+string(player)));
				jumping = false;
            }else{
                animation_set(fd_fmage_jump,asset_get_index("spr_fireMage_fall"+string(player)));
				
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
        animation_set(fd_fmage_jumpsquat,asset_get_index("spr_fireMage_jumpSquat"+string(player)));
    break;
	
    case states.dash:
        animation_set(fd_fmage_dash,asset_get_index("spr_fireMage_dash"+string(player)));
    break;
	
	 case states.shield:
        animation_set(fd_fmage_dash,asset_get_index("spr_fireMage_shield"+string(player)));
    break;
	
	 case states.spotDodge:
        animation_set(fd_fmage_dash,asset_get_index("spr_fireMage_spotDodge"+string(player)));
    break;
		 
	 case states.rollDodge:
        animation_set(fd_fmage_rollDodge,asset_get_index("spr_fireMage_rollDodge"+string(player)));
    break;
	
     case states.airDodge:
        animation_set(fd_fmage_dash,asset_get_index("spr_fireMage_airDodge"+string(player)));
    break;
	
	 case states.specialFall:
        animation_set(fd_fmage_dash,asset_get_index("spr_fireMage_specialFall"+string(player)));
    break;
	
    case states.dead:
        animation_set(fd_fmage_dead,asset_get_index("spr_fireMage_knockdown"+string(player)));
    break;
    
    case states.attack:
        switch(subState){
			case attacks.neutral_light:
                animation_set(fd_fmage_light_neutral,asset_get_index("spr_fireMage_jab1"+string(player)));
            break;
			
			case attacks.neutral_light_2:
                animation_set(fd_fmage_light_neutral,asset_get_index("spr_fireMage_jab2"+string(player)));
            break;
			
			case attacks.neutral_light_3:
                animation_set(fd_fmage_light_neutral,asset_get_index("spr_fireMage_jab3"+string(player)));
            break;
			
			case attacks.side_light:
                animation_set(fd_fmage_light_side,asset_get_index("spr_fireMage_ftilt"+string(player)));
            break;
           
            case attacks.up_light:
                animation_set(fd_fmage_light_up,asset_get_index("spr_fireMage_utilt"+string(player)));       
            break;
            
            case attacks.down_light:
                animation_set(fd_fmage_light_down,asset_get_index("spr_fireMage_dtilt"+string(player)));      
            break;
			  
			case attacks.side_heavy:
                animation_set(fd_fmage_heavy_side,asset_get_index("spr_fireMage_sideStrong"+string(player)));
            break;
           
            case attacks.up_heavy:
                animation_set(fd_fmage_heavy_up,asset_get_index("spr_fireMage_upStrong"+string(player)));       
            break;
            
            case attacks.down_heavy:
                animation_set(fd_fmage_heavy_down,asset_get_index("spr_fireMage_downStrong"+string(player)));      
            break;
			
            case attacks.neutral_air:
                animation_set(fd_fmage_air_neutral,asset_get_index("spr_fireMage_nAir"+string(player)));    
            break;
            
            case attacks.front_air:
                animation_set(fd_fmage_air_front,asset_get_index("spr_fireMage_fAir"+string(player)));    
            break;
             
            case attacks.back_air:
                animation_set(fd_fmage_air_back,asset_get_index("spr_fireMage_bAir"+string(player)));    
            break;
            
            case attacks.up_air:
                animation_set(fd_fmage_air_up,asset_get_index("spr_fireMage_uAir"+string(player)));       
            break;
            
            case attacks.down_air:
                animation_set(fd_fmage_air_down,asset_get_index("spr_fireMage_dAir"+string(player)));      
            break;
			
			case attacks.neutral_spell:
                if(onGround){animation_set(fd_fmage_spell_neutral,asset_get_index("spr_fireMage_neutralSpell"+string(player)));
				}else{animation_set(fd_fmage_spell_neutral,asset_get_index("spr_fireMage_neutralSpellAir"+string(player)));
				}
			break;
			
			case attacks.charge_neutral_spell:
                if(onGround){animation_set(fd_fmage_spell_neutral_charge,asset_get_index("spr_fireMage_neutralSpellCharge"+string(player)));
				}else{animation_set(fd_fmage_spell_neutral_charge,asset_get_index("spr_fireMage_neutralSpellChargeAir"+string(player)));
				}
            break;
			
			case attacks.shoot_neutral_spell:
                if(onGround){animation_set(fd_fmage_spell_neutral_shoot,asset_get_index("spr_fireMage_neutralSpellShoot"+string(player)));
				}else{animation_set(fd_fmage_spell_neutral_shoot,asset_get_index("spr_fireMage_neutralSpellShootAir"+string(player)));
				}
            break;
			
			case attacks.side_spell:
                animation_set(fd_fmage_spell_side,asset_get_index("spr_fireMage_sideSpell"+string(player)));
            break;
           
            case attacks.up_spell:
                animation_set(fd_fmage_spell_up,asset_get_index("spr_fireMage_upSpell"+string(player)));       
            break;
            
            case attacks.down_spell:
                animation_set(fd_fmage_spell_down,asset_get_index("spr_fireMage_downSpell"+string(player)));      
            break;
			  
        }
    break;
    
    case states.recovery:
        animation_set(fd_fmage_recovery,asset_get_index("spr_fireMage_land"+string(player)));
    break;
    
    case states.hitstun:
        //draw hit sprite during hit stop
        if(god.freeze){
            animation_set(fd_fmage_hitstun,asset_get_index("spr_fireMage_knockback"+string(player)));
        }else{
            //laying down on the ground after being hit
            if(onGround){
                animation_set(fd_fmage_hitstun,asset_get_index("spr_fireMage_knockdown"+string(player)));
				if(knockedDown)animation_set(fd_fmage_hit,asset_get_index("spr_fireMage_knockdownLoop"+string(player)));
            //flying through the air after being hit      
            }else{
                animation_set(fd_fmage_dead,asset_get_index("spr_fireMage_knockback"+string(player)));
            }
        }
    break;
}

//reset animation counters if sprite changes
if(lastSprite != currentSprite){
    frame_reset();
    lastSprite = currentSprite;
}

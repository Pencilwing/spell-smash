/// @description movement
mSpeed = mSpeedDefault;
sideBDash = false;
angle = 0;
upB = false;

//move left and right
if(left){
    xSpeed = approach(xSpeed,-mSpeed,aSpeed * god.gameSpeed);
}else if(right){
    xSpeed = approach(xSpeed,mSpeed,aSpeed * god.gameSpeed);
}else if (onGround){
    xSpeed = lerp(xSpeed,0,0.15);
}else{
	xSpeed = lerp(xSpeed,0,0.1)	
}

//jump if you are on the ground and not holding the jump button
if(onGround){
    if(jump && !jumpHold){
		currentState = states.jumpSquat;
    }
}

if(!onGround && !doubleJump){
    if(jump && !jumpHold){
        ySpeed = jPower;
        squash_stretch(0.7,1.3);
		doubleJump = true;
    }
}


//jump code
fmage_jump_control();


//shield and dodges
if(shield && !shieldHold && onGround){
		currentState = states.shield;
		xSpeed = 0;
		/*if(left){
			currentState = states.dodgeRoll	
		}*/
	}
	frame_reset();
//airDodge
if(shield && !shieldHold && !onGround){
		currentState = states.airDodge;
		dashDur = dashDurMax;
		gSpeed = 0;
        xSpeed = 22 * xAxis;
		ySpeed = 22 * yAxis;
        squash_stretch(1.3,0.7);
}



//light and air attacks
if(attack && !attackHold){
    //grounded attacks
    if(onGround){
        if(up){
            subState = attacks.up_light;
            squash_stretch(0.7,1.3);
        }else if(down){
            subState = attacks.down_light;
            squash_stretch(0.7,1.3);
        }else if(left || right){
            subState = attacks.side_light;
            squash_stretch(1.3,0.7);
        }else{
			subState = attacks.neutral_light;
			squash_stretch(1.3,0.7);
		}
		    currentState = states.attack;
			frame_reset();
    }else{
        //air attacks
        if(up){
            subState = attacks.up_air;
            squash_stretch(0.7,1.3);
        }else if(down){
            subState = attacks.down_air;
            squash_stretch(0.7,1.3);
        }else if(right && facing == 1 || left && facing == -1){
            subState = attacks.front_air;
            squash_stretch(1.3,0.7);
        }else if(right && facing == -1 || left && facing == 1){
			subState = attacks.back_air;
            squash_stretch(1.3,0.7);
		}else{
			subState = attacks.neutral_air;
		}
		    currentState = states.attack;
			frame_reset();
    }

}

//heavy and air attacks
if(heavy && !heavyHold){
	if(onGround){
        if(up){
            subState = attacks.up_heavy;
            squash_stretch(0.7,1.3);
        }else if(down){
            subState = attacks.down_heavy;
            squash_stretch(0.7,1.3);
		}else{
            subState = attacks.side_heavy;
            squash_stretch(1.3,0.7);
		}
	}else{
		if(up){
            subState = attacks.up_air;
            squash_stretch(0.7,1.3);
        }else if(down){
            subState = attacks.down_air;
            squash_stretch(0.7,1.3);
        }else if(right && facing == 1 || left && facing == -1){
            subState = attacks.front_air;
            squash_stretch(1.3,0.7);
        }else if(right && facing == -1 || left && facing == 1){
			subState = attacks.back_air;
            squash_stretch(1.3,0.7);
		}else{
			subState = attacks.neutral_air;
		}
	}
	
	currentState = states.attack;
    frame_reset();
}


//spell and air spell attacks
if(spell && !spellHold){
    //grounded attacks
    if(onGround){
        if(up){
            subState = attacks.up_spell;
            squash_stretch(0.7,1.3);
        }else if(down){
            subState = attacks.down_spell;
            squash_stretch(0.7,1.3);
        }else if(right || left){
            subState = attacks.side_spell;
            squash_stretch(1.3,0.7);
        }else{
			subState = attacks.neutral_spell;
			squash_stretch(1.3,0.7);
		}
    }else{
        //air attacks
        if(up){
            subState = attacks.up_spell;
            squash_stretch(0.7,1.3);
        }else if(down){
            subState = attacks.down_spell;
            squash_stretch(0.7,1.3);
        }else if(right){
			facing = 1;
            subState = attacks.side_spell;
        }else if(left){
			facing = -1;
            subState = attacks.side_spell;
		}else{
			subState = attacks.neutral_spell;
		}
    }
    currentState = states.attack;
    frame_reset();
}

//dash
if(dash && !dashHold){
    //air dash. only dash in the air if airDash is false
    //set airDash to true if you have dashed in the air
    if(!onGround){
        if(!airDash){
            dashDur = dashDurMax;
            xSpeed = 24 * facing;
            squash_stretch(1.3,0.7);
            currentState = states.dash;
            airDash = true;
        }
    //ground dash
    }else if(onGround){
        dashDur = dashDurMax;
        xSpeed = 24 * facing;
        squash_stretch(1.3,0.7);
        currentState = states.dash;    
    }
}

//reset airDash after landing on the ground
if(onGround){
    airDash = false;
}

//jump if you are on the ground and not holding the jump button
if(onGround){
    if(jump && !jumpHold){
		currentState = states.jumpSquat;
    }
}

//DoubleJump
if(!onGround && !doubleJump){
    if(jump && !jumpHold){
        ySpeed = jPower;
		instance_create(x,y,oDoubleJumpFX)
        squash_stretch(0.7,1.3);
		doubleJump = true;
		if(abs(xAxis) <= .25) xSpeed = 0;
		if(sign(xAxis) != sign(xSpeed)) xSpeed = xSpeed*-1*abs(xAxis)*0.5;
		frame_reset();
		state_reset()
    }
}


//jump code
fmage_jump_control();


//shield and dodges
if(shieldHold && onGround){
		currentState = states.shield;
		shieldFacing = facing;
		frame_reset();
	}
	
	
//airDodge
if(shield && !shieldHold && !onGround){
		currentState = states.airDodge;
		dashDur = airDodgeDur;
		gSpeed = 0;
		force = vectorCalc(20, ((point_direction(0,0,xAxis,yAxis))+90))
		xSpeed = force[0]
		ySpeed = force[1]
        //xSpeed = 22 * xAxis;
		//ySpeed = 22 * yAxis;
        squash_stretch(1.3,0.7);
}


//light and air attacks
if(attack && !attackHold){
    //grounded attacks
    if(onGround){
        if(up){
            uLightCmd = true;
        }else if(down){
            dLightCmd = true;
        }else if(left || right){
            fLightCmd = true;
        }else{
			nLightCmd = true
		}
		    currentState = states.attack;
			frame_reset();
			//check Commands
			fmage_commands();
    }else{
        //air attacks
        if(up){
            uAerialCmd = true;
        }else if(down){
            dAerialCmd = true;
        }else if(right && facing == 1 || left && facing == -1){
            fAerialCmd = true;
        }else if(right && facing == -1 || left && facing == 1){
			bAerialCmd = true;
		}else{
			nAerialCmd = true;
		}
		    currentState = states.attack;
			frame_reset();
			//check Commands
			fmage_commands();
    }

}

//heavy and air attacks
if(heavy && !heavyHold){
	if(onGround){
        if(up){
            uHeavyCmd = true;
        }else if(down){
            dHeavyCmd = true;
		}else{
            fHeavyCmd = true;
			if(left) facing = -1
			if(right) facing = 1
		}
	}else{
		if(up){
            uAerialCmd = true;
        }else if(down){
            dAerialCmd = true;
        }else if(right && facing == 1 || left && facing == -1){
            fAerialCmd = true;
        }else if(right && facing == -1 || left && facing == 1){
			bAerialCmd = true;
		}else{
			nAerialCmd = true;
		}
	}
	
	currentState = states.attack;
    frame_reset();
	//check Commands
	fmage_commands();
}


//spell and air spell attacks
if(spell && !spellHold){
    //grounded attacks
    if(onGround){
        if(up){
            uSpellCmd = true;
        }else if(down){
            fSpellCmd = true;
        }else if(right || left){
            fSpellCmd = true;
        }else{
			nSpellCmd = true;
		}
    }else{
        //air attacks
        if(up){
            uSpellAirCmd = true;
        }else if(down){
            fSpellAirCmd = true;
        }else if(right){
			facing = 1;
            fSpellAirCmd = true;
        }else if(left){
			facing = -1;
            fSpellAirCmd = true;
		}else{
			nSpellAirCmd = true;
		}
    }
    currentState = states.attack;
    frame_reset();
	//check Commands
	fmage_commands();
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
			rollable = true
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
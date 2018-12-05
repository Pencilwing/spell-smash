//jump if you are on the ground and not holding the jump button
if(onGround){
    if(jumpCmd){
		currentState = states.jumpSquat;
		jumpCmd = false;
    }
}

if(!onGround && !doubleJump){
    if(jumpCmd){
        ySpeed = jPower;
		instance_create(x,y,oDoubleJumpFX)
        squash_stretch(0.7,1.3);
		doubleJump = true;
		jumpCmd = false
    }
}


//shield and dodges
if(shieldCmd && onGround){
		currentState = states.shield;
		xSpeed = 0;
		shieldCmd = false
		/*if(left){
			currentState = states.dodgeRoll	
		}*/
	}
//airDodge
if(shieldCmd && !onGround){
		currentState = states.airDodge;
		dashDur = dashDurMax;
		gSpeed = 0;
        xSpeed = 22 * xAxis;
		ySpeed = 22 * yAxis;
        squash_stretch(1.3,0.7);
		shieldCmd = false;
}



//light and air attacks
    //grounded attacks
        if(uLightCmd){
            subState = attacks.up_light;
            squash_stretch(0.7,1.3);
			uLightCmd = false;
		}
        if(dLightCmd){
            subState = attacks.down_light;
            squash_stretch(0.7,1.3);
			dLightCmd = false;
		}
        if(fLightCmd){
            subState = attacks.side_light;
            squash_stretch(1.3,0.7);
			fLightCmd = false;
		}
        if(nLightCmd){
			subState = attacks.neutral_light;
			squash_stretch(1.3,0.7);
			nLightCmd = false;
		}
		
        //air attacks
        if(uAerialCmd){
            subState = attacks.up_air;
            squash_stretch(0.7,1.3);
			uAerialCmd = false;
		}
        if(dAerialCmd){
            subState = attacks.down_air;
            squash_stretch(0.7,1.3);
			dAerialCmd = false;
        }
		if(fAerialCmd){
            subState = attacks.front_air;
            squash_stretch(1.3,0.7);
			fAerialCmd = false;
        }
		if(bAerialCmd){
			subState = attacks.back_air;
            squash_stretch(1.3,0.7);
			bAerialCmd = false;
		}
		if(nAerialCmd){
			subState = attacks.neutral_air;
			nAerialCmd = false;
		}


//heavy and air attacks

        if(uHeavyCmd){
            subState = attacks.up_heavy;
            squash_stretch(0.7,1.3);
			uHeavyCmd = false;
        }
		if(dHeavyCmd){
            subState = attacks.down_heavy;
            squash_stretch(0.7,1.3);
			dHeavyCmd = false;
		}
		if(fHeavyCmd){
            subState = attacks.side_heavy;
            squash_stretch(1.3,0.7);
			fHeavyCmd = false;
		}


    //grounded spell attacks
        if(uSpellCmd){
            subState = attacks.up_spell;
            squash_stretch(0.7,1.3);
			uSpellCmd = false;
        }
		if(dSpellCmd){
            subState = attacks.down_spell;
            squash_stretch(0.7,1.3);
			dSpellCmd = false;
        }
		if(fSpellCmd){
            subState = attacks.side_spell;
            squash_stretch(1.3,0.7);
			fSpellCmd = false;
        }
		if(nSpellCmd){
			subState = attacks.neutral_spell;
			squash_stretch(1.3,0.7);
			nSpellCmd = false;
		}

        //air spell attacks
        if(uSpellAirCmd){
            subState = attacks.up_spell;
			uSpellAirCmd = false;
        }
		if(dSpellAirCmd){
            subState = attacks.down_spell;
            squash_stretch(0.7,1.3);
			dSpellAirCmd = false;
        }
		if(fSpellAirCmd){
            subState = attacks.side_spell;
			fSpellAirCmd = false;
        }
		if(fSpellAirCmd){
            subState = attacks.side_spell;
			fSpellAirCmd = false;
		}
		if(nSpellAirCmd){
			subState = attacks.neutral_spell;
			nSpellAirCmd = false;
		}
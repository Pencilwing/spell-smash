
if(player == 0){
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
	
	
p1Spawn.x = oPlayer1.initialX
p1Spawn.y = oPlayer1.initialY
    
//buttons
	
	left  = keyboard_check(ord("A"));
    right = keyboard_check(ord("D"));
    up    = keyboard_check(ord("W"));
    down  = keyboard_check(ord("S"));
    
    jumpHold = jump;
    jump = keyboard_check(ord("U"));

    dashHold = dash;
    dash = keyboard_check(ord("Y"));
    
    shieldHold = shield;
    shield = keyboard_check(ord("I"));
    
    attackHold = attack;
    attack = keyboard_check(ord("H"));
	
    heavyHold = heavy;
    heavy = keyboard_check(ord("J"));
	
	spellHold = spell;
	spell = keyboard_check(ord("K"))
}

if(player == 1){
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
	
	
p2Spawn.x = oPlayer2.initialX
p2Spawn.y = oPlayer2.initialY
    
    left  = keyboard_check(vk_left);
    right = keyboard_check(vk_right);
    up    = keyboard_check(vk_up);
    down  = keyboard_check(vk_down);
    
    jumpHold = jump;
    jump = keyboard_check(vk_numpad5);
    
    dashHold = dash;
    dash = keyboard_check(vk_numpad4);
    
    shieldHold = shield;
    shield = keyboard_check(vk_numpad6);
    
    attackHold = attack;
    attack = keyboard_check(vk_numpad1);
	
    heavyHold = heavy;
    heavy = keyboard_check(vk_numpad2);
	
	spellHold = spell;
	spell = keyboard_check(vk_numpad3);
	
}

    if(!left && !right){
			xAxis = 0;
	}else{if(left){
			xAxis = -1;
		}if(right){
			xAxis = 1;
		}
	}
	
    if(!up && !down){
			yAxis = 0;
	}else{if(up){
			yAxis = -1;
		}if(down){
			yAxis = 1;
		}
	}
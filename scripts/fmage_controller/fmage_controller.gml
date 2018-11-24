
if(player == 0){
	
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
	
	
p1Spawn.x = oPlayer1.initialX
p1Spawn.y = oPlayer1.initialY
    
//buttons
if(gamepad_is_connected(0)){
	
	xAxis = gamepad_axis_value(0, gp_axislh);
	yAxis = gamepad_axis_value(0, gp_axislv);
	
	if(xAxis <= -0.4)
	{
	left = true
	}else{
	left = false
	}
	
	if(xAxis >= 0.4)
	{
	right = true
	}else{
	right = false
	}
	
	if(yAxis <= -0.4)
	{
	up = true
	}else{
	up = false
	}
	
	if(yAxis >= 0.4)
	{
	down = true
	}else{
	down = false
	}
    
    jumpHold = jump;
    jump = gamepad_button_check(0, gp_face4);

    dashHold = dash;
    dash = gamepad_button_check(0, gp_shoulderrb);
    
    shieldHold = shield;
    shield = gamepad_button_check(0, gp_shoulderr);
    
    attackHold = attack;
    attack = gamepad_button_check(0, gp_face2);
	
    heavyHold = heavy;
    heavy = gamepad_button_check(0, gp_face3);
	
	spellHold = spell;
	spell = gamepad_button_check(0, gp_face1);
	
}else{
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
	}
}

if(player == 1){
	
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
	
	
p2Spawn.x = oPlayer2.initialX
p2Spawn.y = oPlayer2.initialY

if(gamepad_is_connected(1)){
	
	xAxis = gamepad_axis_value(1, gp_axislh);
	yAxis = gamepad_axis_value(1, gp_axislv);
	
	if(xAxis <= -0.4)
	{
	left = true
	}else{
	left = false
	}
	
	if(xAxis >= 0.4)
	{
	right = true
	}else{
	right = false
	}
	
	if(yAxis <= -0.4)
	{
	up = true
	}else{
	up = false
	}
	
	if(yAxis >= 0.4)
	{
	down = true
	}else{
	down = false
	}
    
    jumpHold = jump;
    jump = gamepad_button_check(1, gp_face4);

    dashHold = dash;
    dash = gamepad_button_check(1, gp_shoulderrb);
    
    shieldHold = shield;
    shield = gamepad_button_check(1, gp_shoulderr);
    
    attackHold = attack;
    attack = gamepad_button_check(1, gp_face2);
	
    heavyHold = heavy;
    heavy = gamepad_button_check(1, gp_face3);
	
	spellHold = spell;
	spell = gamepad_button_check(1, gp_face1);
}else{
    
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

}
/// @description debug
window_set_caption(string(fps));

if(keyboard_check_pressed(ord("R"))){
    game_restart();
}

if(keyboard_check_pressed(vk_escape)){
    game_end();
}

if(keyboard_check_pressed(vk_space) && gameSpeed = 1){
    gameSpeed = 0.2;
	gameSpeedDefeault = gameSpeed;
}else if(keyboard_check_pressed(vk_space) && gameSpeed != 1){
    gameSpeed = 1;
	gameSpeedDefeault = gameSpeed;
}


if(keyboard_check_pressed(vk_backspace)){
	rebind_inputs();
}

//change weapon
if(keyboard_check_pressed(vk_lcontrol)){
    with(oPlayer){
        if(player == 0){
            weapon ++;
            if(weapon > weapons.axe){
                weapon = 0;
            }
        }
    }
}

if(keyboard_check_pressed(vk_enter)){
    with(oPlayer){
        if(player == 1){
            weapon ++;
            if(weapon > weapons.axe){
                weapon = 0;
            }
        }
    }
}

//show boxes
if(keyboard_check_pressed(vk_rcontrol)){
    showBox = !showBox;
}


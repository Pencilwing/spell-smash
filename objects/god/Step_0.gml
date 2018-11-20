/// @description debug
window_set_caption(string(fps));

if(keyboard_check_pressed(ord("R"))){
    game_restart();
}

if(keyboard_check_pressed(vk_escape)){
    game_end();
}

/*if(keyboard_check_pressed(vk_space)){
    camLock = !camLock;
}*/

if(keyboard_check_pressed(vk_backspace)) room_restart();

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


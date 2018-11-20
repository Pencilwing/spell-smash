//player button inputs
/*
if(player == 0){
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
    
    left  = keyboard_check(vk_left);
    right = keyboard_check(vk_right);
    up    = keyboard_check(vk_up);
    down  = keyboard_check(vk_down);
    
    jumpHold = jump;
    jump = keyboard_check(ord("Z"));
    
    attackHold = attack;
    attack = keyboard_check(ord("X"));
    
    dashHold = dash;
    dash = keyboard_check(ord("C"));
    
    itemHold = item;
    item = keyboard_check(ord("W"));
}*/

if(player == 0){
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
    
    left  = keyboard_check(ord("A"));
    right = keyboard_check(ord("D"));
    up    = keyboard_check(ord("W"));
    down  = keyboard_check(ord("S"));
    
    jumpHold = jump;
    jump = keyboard_check(ord("F"));
    
    attackHold = attack;
    attack = keyboard_check(ord("G"));
    
    dashHold = dash;
    dash = keyboard_check(ord("H"));
    
    itemHold = item;
    item = keyboard_check(ord("E"));
}

if(player == 1){
    leftHold  = left;
    rightHold = right;
    upHold    = up;
    downHold  = down;
    
    left  = keyboard_check(vk_left);
    right = keyboard_check(vk_right);
    up    = keyboard_check(vk_up);
    down  = keyboard_check(vk_down);
    
    jumpHold = jump;
    jump = keyboard_check(vk_numpad0);
    
    attackHold = attack;
    attack = keyboard_check(vk_numpad1);
    
    dashHold = dash;
    dash = keyboard_check(vk_numpad2);
    
    itemHold = item;
    item = keyboard_check(vk_numpad3);
}

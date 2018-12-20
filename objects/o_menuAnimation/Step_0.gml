if(room == rm_titleScreen) step_titleScreen();
if(room == rm_mainMenu) step_mainMenu();
if(room == rm_charSelect){
	if(keyboard_check_pressed(vk_anykey)) room_goto(rm_floatingArena)

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( 0, i ) ) room_goto(rm_floatingArena);
}
}

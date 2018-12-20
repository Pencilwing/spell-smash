if(keyboard_check_pressed(vk_anykey)){
	room_goto(rm_mainMenu); 	
	part_system_destroy(oStarMenuParticles.menuParticles);
}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( 0, i ) ) {room_goto(rm_mainMenu);	
	part_system_destroy(oStarMenuParticles.menuParticles);}
}
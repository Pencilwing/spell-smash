

if(keyboard_check_pressed(vk_anykey) && !anykeypressed){
	room_goto(rm_charSelect); 	
	part_system_destroy(oStarMenuParticles.menuParticles);
}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( 0, i ) && !anykeypressed )
	{
		room_goto(rm_charSelect);	
		part_system_destroy(oStarMenuParticles.menuParticles);
	}
}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( 0, i )||keyboard_check_pressed(vk_anykey))
	{
		buttonsPressed ++
	}
}

if(buttonsPressed == 0){
	anykeypressed = false;	
}else{
	anykeypressed = true;
	buttonsPressed = 0
}

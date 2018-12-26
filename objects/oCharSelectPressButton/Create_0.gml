anykeypressed = false;
buttonsPressed = 0

if(keyboard_check_pressed(vk_anykey)){
	anykeypressed = true;
}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( 0, i )){
		anykeypressed = true;
	}
}
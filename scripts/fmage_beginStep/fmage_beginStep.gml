onGround = check_below();

//inheret code from parent
event_inherited();

//check for hitboxes
hit_check();

//animation counter
animation_counter();

//player buttons
fmage_controller();

//basic speed control for movement, etc
fmage_speed_control();



/// death & respawn
if(place_meeting(x,y,parentBounds)){
	state_reset();
	knockoutFXvar = instance_create(x, y, oKnockoutFX)
	knockoutFXvar.image_angle = (point_direction(x,y,camControl.x,camControl.y+100)-90);
	countRespawn = true;
	god.shakeDur = 10;
	god.shake= true;
	stocks--;
	controlsEnabled = false;
	instance_destroy(offstageIndicator)
	x = -10000;
	xSpeed = 0;
	ySpeed = 0;
	gSpeed = 0;
	percentage = 0;
	dead = true;
	//play_soundFX(screamKO_01, 1, false)
	//play_soundFX(KO_FX_01, 0.5, false)
	if(stocks == 0){ 
		//play_soundFX(GAME, 1, false)
		god.gameSpeed = 0.2;
	}
}

if(countRespawn){
	respawnTimer++;
	if(respawnTimer >= (room_speed*2)){
		countRespawn = false;
		dead = false;
		controlsEnabled = true;
		respawnTimer = 0;
		state_reset();
		xSpeed = 0;
		ySpeed = 0;
		x = initialX;
		y = initialY;
		if(player==0) facing =1 else facing = -1;
		if(stocks==0){
		audio_stop_all();
		room_restart();
		}
		
	}
}




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
	knockoutFXvar = instance_create(x, y, oKnockoutFX)
	knockoutFXvar.image_angle = angleCalc(self, camControl)-90
	countRespawn = true;
	god.shakeDur = 10;
	god.shake= true;
	stocks--;
	x = -10000;
	percentage = 0;
	state_reset();
	dead = true;
	play_soundFX(screamKO_01, 1, false)
	play_soundFX(KO_FX_01, 0.5, false)
	if(stocks == 0){ play_soundFX(GAME, 1, false)
		gameSpeed = 0;
	}
}

if(countRespawn){
	respawnTimer++;
	if(respawnTimer >= (room_speed*2)){
		countRespawn = false;
		dead = false;
		respawnTimer = 0;
		x = initialX;
		y = initialY;
		if(player==0) facing =1 else facing = -1;
		if(stocks==0){
		audio_stop_all();
		room_restart();
		}
		
	}
}


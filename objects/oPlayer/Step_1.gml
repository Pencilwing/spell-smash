script_execute(pl_beginStep,0,0,0,0,0);

/// death & respawn

if(place_meeting(x,y,parentBounds)){
	countRespawn = true;
	god.shakeDur = 7;
	god.shake= true;
	stocks--;
	x = -10000;
	
}

if(countRespawn){
	respawnTimer++;
	if(respawnTimer >= (room_speed)){
		countRespawn = false;
		respawnTimer = 0;
		x = initialX;
		y = initialY;
		if(player==0) facing =1 else facing = -1;
		if(stocks==0) room_restart();
		
	}
}


draw_text(200, 200, "FPS = " + string(fps));
/// stays in the middle
if(oPlayer1.dead){
	target1 = p1Spawn;
}else{
	target1 = oPlayer1;
}

if(oPlayer2.dead){
	target2 = p2Spawn;
}else{
	target2 = oPlayer2;
}

if(target1.x <= target2.x){
	x = lerp(x,target1.x + ((target2.x - target1.x)/2),0.1);
}else {
	x = lerp(x,target2.x + ((target1.x - target2.x)/2),0.1);
}


if(target1.y <= target2.y){
	y = lerp(y,target2.y + ((target1.y - target2.y)/2) - yCamOffset,0.1);
}else {
	y = lerp(y,target1.y + ((target2.y - target1.y)/2) - yCamOffset,0.1);
}


camControl.x = clamp( camControl.x, 0, 2800);
camControl.y = clamp( camControl.y, 400, 1080);

view_xview[0] += ((x-(view_wview[0]/2)) - view_xview[0]) * 0.06  ;
view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.06  ;


///finds middle between players
// You can write your code in this editor


target1 = oPlayer1;
target2 = oPlayer2;
yCamOffset = 200;

if(target1.x <= target2.x){
	x = (target1.x + ((target2.x - target1.x)/2));
}else {
	x = (target2.x + ((target1.x - target2.x)/2));
}


if(target1.y <= target2.y){
	y = (target2.y + ((target1.y - target2.y)/2) - yCamOffset);
}else {
	y = (target1.y + ((target2.y - target1.y)/2) - yCamOffset);
}



//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(0, true);

//Set the port bounds of view 0 to 1920x1080
view_set_wport(0, 1920);
view_set_hport(0, 1080);

//Resize and center
window_set_rectangle(0,0,1920,1080);
surface_resize(application_surface,1920,1080);

//Basic set up
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], 1920, 1080);

//Setting up object target information
camera_set_view_target(view_camera[0], camControl);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], 960, 540);





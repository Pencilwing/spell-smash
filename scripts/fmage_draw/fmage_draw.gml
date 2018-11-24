//draw sprites
//body
var p1StocksPos = 100;
var p2StocksPos = 1820;
if(player==0){
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);
	//if(gamepad_is_connected(1)) draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_blue,1);
	for (var i = 0; i < stocks; i += 1){
		draw_sprite(sprStocks,0, camera_get_view_x(view_camera[0]) + p1StocksPos,
								 camera_get_view_y (view_camera[0])+100);
		p1StocksPos += sprite_get_width(sprStocks)*1.25; 
	}
		draw_set_font(BlowBrush);
		draw_text_outlined(camera_get_view_x(view_camera[0]) + p1StocksPos,
						   camera_get_view_y (view_camera[0]) + 800,c_black, c_white, string(percentage) + "%",2)
		//draw_text_color(camera_get_view_x(view_camera[0]) + p1StocksPos,
		//				camera_get_view_y (view_camera[0]) + 800, string(percentage) + "%",c_black,c_black,c_black,c_black,1);
						
}else{
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_red,0.3);
	for (var i = 0; i < stocks; i += 1){
		draw_sprite(sprStocks,0,camera_get_view_x(view_camera[0]) + p2StocksPos,
								camera_get_view_y (view_camera[0]) + 100);
		p2StocksPos -= sprite_get_width(sprStocks)*1.25; 
	}
		draw_set_font(BlowBrush);
		draw_text_outlined(camera_get_view_x(view_camera[0]) + p2StocksPos,
						   camera_get_view_y (view_camera[0]) + 800,c_black, c_white, string(percentage) + "%",2)
}
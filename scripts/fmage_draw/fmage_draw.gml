//draw sprites
//body
var p1StocksPos = 300;
var p2StocksPos = 1620;
var camera = (view_camera[0]);
Xcamera = camera_get_view_x(camera)
Ycamera = camera_get_view_y(camera)
XcameraR = Xcamera + camera_get_view_width(camera)
YcameraD = Ycamera + camera_get_view_height(camera)

if(player==0){
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_red,0.5);
	//if(gamepad_is_connected(1)) draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_blue,1);
	for (var i = 0; i < stocks; i += 1){
		draw_sprite(spr_Stocks,0, Xcamera + p1StocksPos,
								 Ycamera + 950);
		p1StocksPos += sprite_get_width(spr_Stocks)*1.25; 
	}
		draw_set_font(Impact);
		draw_text_outlined(Xcamera + p1StocksPos-100,
						   Ycamera + 800,c_black, c_white, string(percentage) + "%",2)
	
}else{
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_blue,0.5);
	for (var i = 0; i < stocks; i += 1){
		draw_sprite(spr_Stocks,0,Xcamera + p2StocksPos,
								Ycamera + 950);
		p2StocksPos -= sprite_get_width(spr_Stocks)*1.25; 
	}
		draw_set_font(Impact);
		draw_text_outlined(Xcamera + p2StocksPos+100,
						   Ycamera + 800,c_black, c_white, string(percentage) + "%",2)
}


//offscreen indicator
if((x + 20 <= Xcamera || x-20 >= XcameraR || y <= Ycamera || y-100 >= YcameraD) && !dead)
	{
		if(offstageIndicator == offstageIndicatorId){
		}else{
		offstageIndicator = instance_create(x,y,oOffstageIndicator)
		offstageIndicator.owner = id;
		offstageIndicatorId = offstageIndicator.id; 
		}
		show_debug_message("offscreen")
	}else{
		if(offstageIndicator == offstageIndicatorId) instance_destroy(offstageIndicator);
		offstageIndicator = "none"
	}
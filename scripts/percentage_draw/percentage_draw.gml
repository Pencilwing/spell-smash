var StocksPos = 0
var camera = (view_camera[0]);
var Xcamera = camera_get_view_x(camera)
var Ycamera = camera_get_view_y(camera)
var XcameraR = Xcamera + camera_get_view_width(camera)
var YcameraD = Ycamera + camera_get_view_height(camera)

x = (Xcamera + (camera_get_view_width(camera)/(PQty+1))*(owner.player+1))
y = (Ycamera + 800)

	for (var i = 0; i < owner.stocks; i += 1){
		draw_sprite(spr_Stocks,0, x + StocksPos,
								 y + 150);
		StocksPos += sprite_get_width(spr_Stocks)*1.25; 
	}
		draw_set_font(RunicPercentage);
		draw_set_halign(fa_right)
		draw_text_outlined(x + txtOffset,y + txtOffset,c_black, c_black, string(owner.percentage) + "%",2)
		
		draw_text_outlined(x,y,c_black, c_white, string(owner.percentage) + "%",2)
var StocksPos = 0
var camera = (view_camera[0]);
var Xcamera = camera_get_view_x(camera)
var Ycamera = camera_get_view_y(camera)
var XcameraR = Xcamera + camera_get_view_width(camera)
var YcameraD = Ycamera + camera_get_view_height(camera)

x = (Xcamera + (camera_get_view_width(camera)/(PQty+1))*(owner.player+1))
y = (Ycamera + 950)

//draw HUD
		draw_sprite(spr_FighterHud, 0, x, y)

//draw stocks
	for (var i = 0; i < owner.stocks; i += 1)
	{
		draw_sprite(spr_Stocks,0, x - 30 + StocksPos,y +33);
		StocksPos += sprite_get_width(spr_Stocks)*1.13; 
	}
	
//draw percentage
		draw_set_font(PercentageFont);
		draw_set_halign(fa_right)
		pctgWidth = string_width("00%") + 15
		
		draw_text_outlined(x + pctgWidth + txtOffset,y - 45 + txtOffset,c_black, c_black, string(owner.percentage) + "%",2)
		draw_text_outlined(x + pctgWidth,y - 45,c_black, c_white, string(owner.percentage) + "%",2)
//draw sprites
//body
var p1StocksPos = 300;
var p2StocksPos = 1620;
var camera = (view_camera[0]);
Xcamera = camera_get_view_x(camera)
Ycamera = camera_get_view_y(camera)
pctgOffset = 5
XcameraR = Xcamera + camera_get_view_width(camera)
YcameraD = Ycamera + camera_get_view_height(camera)

draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);

//offscreen indicator
if((x + 20 <= Xcamera || x-20 >= XcameraR || y <= Ycamera || y-100 >= YcameraD) && !dead)
	{
		if(offstageIndicator == offstageIndicatorId){
		}else{
		offstageIndicator = instance_create(x,y,oOffstageIndicator)
		offstageIndicator.owner = id;
		offstageIndicatorId = offstageIndicator.id; 
		}
	}else{
		if(offstageIndicator == offstageIndicatorId) instance_destroy(offstageIndicator);
		offstageIndicator = "none"
	}
//draw sprites. body is drawn first and the weapons are drawn over the body
//body
var p1StocksPos = 100;
var p2StocksPos = 1820;
if(player==0){
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,(xScale*global.sizeMultiplier) * facing,(yScale*global.sizeMultiplier),angle,c_white,1);
	for (var i = 0; i < stocks; i += 1){
		draw_sprite(spr_Stocks,0,p1StocksPos,100);
		p1StocksPos += sprite_get_width(spr_Stocks)*1.25; 
	}
}else{
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,(xScale*global.sizeMultiplier) * facing,(yScale*global.sizeMultiplier),angle,c_black,1);
	for (var i = 0; i < stocks; i += 1){
		draw_sprite(spr_Stocks,0,p2StocksPos,100);
		p2StocksPos -= sprite_get_width(spr_Stocks)*1.25; 
	}
}	
//weapon
draw_sprite_ext(weaponSprite,currentFrame,xPos,yPos,(xScale*global.sizeMultiplier) * facing,(yScale*global.sizeMultiplier),angle,c_white,1);

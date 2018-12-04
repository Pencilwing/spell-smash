/// @description Insert description here
// You can write your code in this editor
image_alpha = lifeTime/30;
image_xscale = approach(image_xscale, sign(image_xscale)*0.5,0.02*god.gameSpeed)
if(lifeTime >=0){
	lifeTime = lifeTime -1;
}else{
instance_destroy();
} 
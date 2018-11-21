/// @description hurtbox_create(xOffset, yOffset, xScale, yScale);
/// @function hurtbox_create
/// @param xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale

//create the hurtbox object, assign the owner to the creator, set offset and scale
_hurtbox = instance_create(x + argument0, y + argument1, oHurtbox);
_hurtbox.owner = id;
_hurtbox.xOffset = argument0 ;
_hurtbox.yOffset = argument1 ;
_hurtbox.xScale  = argument2 / 100;
_hurtbox.yScale  = argument3 / 100;

return _hurtbox;

/// @description hitbox_create( xOffset, yOffset, xScale, yScale, duration, kb strength, kb angle, hit stun, damage, growth, angle);
/// @function hitbox_create
/// @param  xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale
/// @param  duration
/// @param  kbStrength
/// @param  kbAngle
/// @param  hitStun
/// @param  damage
/// @param  growth
/// @param  angle

//create the hitbox object, assign the owner to the creator, set offset and scale
_hitbox = instance_create(x + argument0, y + argument1, oHitbox);
_hitbox.owner = id;
_hitbox.xOffset = argument0;
_hitbox.yOffset = argument1;
_hitbox.xScale  = argument2 / 100;
_hitbox.yScale  = argument3 / 100;

//the rest of the stats an attack needs
_hitbox.dur     = argument4; //number of frames the hitbox is active
_hitbox.kbStr    = argument5; //knockback strength
_hitbox.kbAng    = argument6-90; //knockback angle
_hitbox.hitStun = argument7; //hit stun duration
_hitbox.damage  = argument8; //damage dealt
_hitbox.growth  = argument9; //knockback growth
_hitbox.angle   = argument10;// hitbox angle


hitbox = _hitbox;

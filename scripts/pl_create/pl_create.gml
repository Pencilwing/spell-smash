//inherit from parent object
event_inherited();


landed = 0;

player = 0;

//buttons
up    = false;
down  = false;
left  = false;
right = false;

leftHold  = left;
rightHold = right;
upHold    = up;
downHold  = down;

jump  = false;
jumpHold = false;

attack = false;
attackHold = false;

dash = false;
dashHold = false;

item = false;
itemHold = false;

mash = false;
superJump = false;

//states
currentState = states.idle;
lastState    = currentState;
subState     = states.idle;

//movement
mSpeed = 2 * global.sizeMultiplier;
mSpeedDefault = mSpeed;
aSpeed = 0.5* global.sizeMultiplier;
aSpeedDefault = aSpeed;
cSpeed = 1 * global.sizeMultiplier;
tSpeed = 50 * global.sizeMultiplier;
jPower = -3 * global.sizeMultiplier;
facing = 1;

gSpeedDefault = gSpeed;

dashDur = 10;
dashDurMax = 10;
recoverDur = 20;

airDash = false;

initialX = x;
initialY = y;

//fighting
//hit and hurtboxes
hbox_init();

hpMax = 1000;
hp    = hpMax;

stunDur = 0;
knockBack = false;

//attack
attackType = attacks.side_light;

//hit
hit = false;
hitBy = -1;

//frame data
pl_frameData();

//draw
animation_create();

//weapons
weapon = weapons.sword;
weapon_stats();

//destroy
destroy = false;
countRespawn = false;
respawnTimer = 0;
stocks = 4;

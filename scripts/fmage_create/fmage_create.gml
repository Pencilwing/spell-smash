//inherit from parent object
event_inherited();

landed = 0;

player = 0;

//stats
percentage = 0;
xAxis = 0;
yAxis = 0;
invincible = false;

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

dash = false;
dashHold = false;

shield = false;
shieldHold = false;

attack = false;
attackHold = false;
	
heavyHold = false;
heavy = false;
	
spellHold = false;
spell = false;


//states
currentState = states.idle;
lastState    = currentState;
subState     = states.idle;
dead = false;

//movement
mSpeed = 3 * global.sizeMultiplier;
mSpeedDefault = mSpeed;
aSpeed = 0.5* global.sizeMultiplier;
aSpeedDefault = aSpeed;
cSpeed = 1 * global.sizeMultiplier;
tSpeed = 50 * global.sizeMultiplier;
shPower = -2.25 * global.sizeMultiplier;
jPower = -4.5 * global.sizeMultiplier;
facing = 1;
doubleJump = false
jumping = false
jumpAnimFix = 2
weight = 50

gSpeedDefault = gSpeed;

dashDur = 10;
dashDurMax = 30;
recoverDur = 20;

airDash = true;
upB= false;
sideBDash = false;

initialX = x;
initialY = y;
xDirection = 0;
yDirection = 0;
waitTimer = 0;

shielded =false;

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
fmage_frameData();

//draw
animation_create();

//destroy
destroy = false;
countRespawn = false;
respawnTimer = 0;
stocks = 4;

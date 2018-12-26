//inherit from parent object
event_inherited();

landed = 0;

player = 0;

//stats
percentage = 0;
invincible = false;

//Axis Related
xAxis = 0;
yAxis = 0;
lastFrameXAxis = xAxis
lastFrameYAxis = yAxis
XsmashTap = false;
YsmashTap = false;
tapThreshold = 0.4;

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
cancellable = false;

//movement
mSpeed = 3 * global.sizeMultiplier; //movement speed
mSpeedDefault = mSpeed;             //movement speed default
aSpeed = 0.5* global.sizeMultiplier;//acceleration speed
aSpeedDefault = aSpeed;				//accel speed default
airSpeed = 0.25* global.sizeMultiplier;//air acceleration speed
airSpeedDefault = airSpeed;				//air accel speed default
cSpeed = 1 * global.sizeMultiplier; //no idea
tSpeed = 50 * global.sizeMultiplier;//terminal speed
shPower = -2.25 * global.sizeMultiplier;//short hop power
jPower = -4.5 * global.sizeMultiplier;  //jump power
facing = 1;
doubleJump = false
jumping = false
jumpAnimFix = 2
ffallSpeed = 30;
weight = 50
hitstunState = false
hitstopState = false
partFreq = 4
partFreqDefault = partFreq;

gSpeedDefault = gSpeed;

dashDur = 10;
dashDurMax = 10;
landingLagDur = 4;
landingLagDefault = landingLagDur;
nextAttack = false;

airDash = true;
upB= false;
impulseDash = false;

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
shadowObj = instance_create(0,0, oShadow)
shadowObj.owner = id;
percentObj = instance_create(0,0, oPercentageIndicator)
percentObj.owner = id;
percentObj.layer = layer_get_id("HUD")
offstageIndicatorId = false;
offstageIndicator = "none";

//commands
controlsEnabled = true;
commands_init();

//destroy
destroy = false;
countRespawn = false;
respawnTimer = 0;
stocks = 4;


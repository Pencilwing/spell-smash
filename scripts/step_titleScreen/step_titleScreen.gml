if(introFinished && !animationEnd){
flash = instance_create_depth(0,0,-10,oFlash);
flash.flashDur = 8;
instance_create_depth(0,0,0,oTitleScreenLogo);
instance_create_depth(0,0,0,oTitleScreenPressButton);
instance_create_depth(0,0,30,oStarMenuParticles);
instance_create_depth(0,0,40,oTitleScreenPurpleGrad);
animationEnd = true;
}

if(!introFinished)
{
oOrangeBar.x = ease_in(oOrangeBar.x, -672, 0.05,time)
oBlueBar.x = ease_in(oBlueBar.x, 800, 0.05,time)
time ++
if(oOrangeBar.x == -672 && oBlueBar.x == 800) killBars = true;
}

if(killBars)
{
introFinished = true
instance_destroy(oOrangeBar);
instance_destroy(oBlueBar);
killBars = false;
}

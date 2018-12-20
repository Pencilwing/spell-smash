time = 0
introFinished = false;
animationEnd = false;
midX = 960
midY = 540

menuButtons[0] = instance_create_depth(midX,midY,0,oBattleBtn);
menuButtons[1] = instance_create_depth(midX,midY,0,oStoryBtn);
menuButtons[2] = instance_create_depth(midX,midY,0,oTrainingBtn);
menuButtons[3] = instance_create_depth(midX,midY,0,oGalleryBtn);
menuButtons[4] = instance_create_depth(midX,midY,0,oOptionsBtn);
menuButtons[5] = instance_create_depth(midX,midY,0,oCreditsBtn);
instance_create_depth(1600,925,0,oExitBtn);


instance_create_depth(960,540,10,oMenuPortal);
oMenuPortal.image_xscale = 0.1
oMenuPortal.image_yscale = 0.1
instance_create_depth(0,0,20,oUpperBar);
instance_create_depth(0,0,20,oLowerBar);
instance_create_depth(0,0,30,oStarMenuParticles);
instance_create_depth(0,0,40,oTitleScreenPurpleGrad);
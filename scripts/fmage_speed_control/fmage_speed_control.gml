

//knock back
if(knockBack){
    if(!onGround){
        aSpeed = 0;
    }else{
        aSpeed = aSpeedDefault;
        knockBack = false;
    }
}

//terminal speed
if(ySpeed  >= tSpeed){
    ySpeed = tSpeed;
}   

//air accel
if(!onGround){
    aSpeed = aSpeedDefault;
}else{
    aSpeed = aSpeedDefault;
}
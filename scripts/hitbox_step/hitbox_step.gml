//count down the duration of the hitbox and destroy it when duration reaches 0
dur -= 1 * god.gameSpeed;

if(dur <= 0){
    destroy = true;
}
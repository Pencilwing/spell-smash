//count frame duration and change current sprites frame accordingly

maxFrames = sprite_get_number(sprite) - 1;
frameDuration = ds_list_find_value(frameData, currentFrame);
frameCounter += frameSpeed * god.gameSpeed;
fractionFrame =  fractionFrame + 1 * god.gameSpeed;

if(frameCounter == frameDuration){
	currentFrame = ceil(fractionFrame);
    frameCounter = 0;
}

if(currentFrame > maxFrames){
    frame_reset();
}

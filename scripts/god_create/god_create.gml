enum_init(); //initialize all of the state, and weapon info
global.sizeMultiplier = 5;
//screen shake
shake = false; //shake true or false
shakeDur = 5; //how long the shake lasts
shakeForce = 0.5;

//freeze/hitstop
gameSpeed = 1; //used for hitstop/freeze
freeze = false; //freeze true or false
freezeDur = 5; //how long the freeze lasts

//debug
showBox = false; //used to show hitboxes

//music
if(!audio_is_playing(backGroundMusic))
{	/*
audio_play_sound(backGroundMusic,1,true);
audio_sound_gain(backGroundMusic, 0, 0);
audio_sound_gain(backGroundMusic, 0.1, 5000);*/
}
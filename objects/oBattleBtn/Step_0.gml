if(triggered)
{
	part_system_clear(oStarMenuParticles.menuParticles) 
	part_system_destroy(oStarMenuParticles.menuParticles) 
	room_goto(rm_charSelect)
}

if(o_menuAnimation.introFinished)
{
step_upDown();
}
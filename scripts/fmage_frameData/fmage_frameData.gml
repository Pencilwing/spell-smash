// 30 frames (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
// 60 frames (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
// 90 frames (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)

//master list of frame data
fd_master = ds_list_create();

//create and store frame data in lists, which are then stored in the master list.

//movement
fd_fmage_idle     = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//32
fd_fmage_run      = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//20
fd_fmage_jumpsquat= frame_factory(1,1,1,1);//4
fd_fmage_jump     = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//18
fd_fmage_dash     = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//16
fd_fmage_hit      = frame_factory(1,1);
fd_fmage_hitstun  = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//24
fd_fmage_dead     = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//22
fd_fmage_recovery = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//20
fd_fmage_rollDodge= frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//34

//attacks data
//light attacks
fd_fmage_light_neutral = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//20
fd_fmage_light_side    = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//20
fd_fmage_light_up      = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//20
fd_fmage_light_down    = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//15

//heavy attacks
fd_fmage_heavy_side = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//80
fd_fmage_heavy_up   = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//48
fd_fmage_heavy_down = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//47

//air attacks
fd_fmage_air_neutral= frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//40
fd_fmage_air_front  = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//35
fd_fmage_air_back   = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//35
fd_fmage_air_up     = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//35
fd_fmage_air_down   = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)//60

//spell attacks
fd_fmage_spell_neutral = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//15
fd_fmage_spell_neutral_charge = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//140 frames 
fd_fmage_spell_neutral_shoot = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);//31
fd_fmage_spell_side = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)//55
fd_fmage_spell_up   = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)//91
fd_fmage_spell_down = frame_factory(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)

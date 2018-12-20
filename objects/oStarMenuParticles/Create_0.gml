var camera = (view_camera[0]);
Xcamera = camera_get_view_x(camera)
Ycamera = camera_get_view_y(camera)
XcameraR = Xcamera + camera_get_view_width(camera)
YcameraD = Ycamera + camera_get_view_height(camera)

//particlesystem
menuParticles = part_system_create();
part_system_position(menuParticles, Xcamera -10, YcameraD/2);
part_system_depth(menuParticles,30);

//particle
starParticle = part_type_create()
part_type_sprite(starParticle, spr_starParticles, true, false, false);
part_type_size(starParticle, 0.5, 1, 0, 0);
part_type_speed(starParticle, 2, 4, 0, 0);
part_type_direction(starParticle, -30, 30, 0, 0);
part_type_orientation(starParticle, 0, 360, 0, 0, 1);
part_type_life(starParticle, 800, 800);

//emitter
starEmitter = part_emitter_create(menuParticles);
part_emitter_region(menuParticles, starEmitter, Xcamera, Xcamera + 100, Ycamera-500, YcameraD, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(menuParticles, starEmitter, starParticle, -10);
/// @description Insert description here
// You can write your code in this editor

//configuracion del sistema de particulas
global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100)

//configuracion de la particula
part_emitter = part_emitter_create(global.partSystem);
part_type = part_type_create();

//Movimiento de particulas
part_emitter_region(global.partSystem, part_emitter, 0, display_get_gui_width(), 0, display_get_gui_height(), ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.partSystem, part_emitter, part_type, 1);

//estilo de particulas
part_type_alpha3(part_type, 0, 1, 0);
part_type_color3(part_type, c_white, c_yellow, c_gray);
part_type_life(part_type, game_get_speed(gamespeed_fps)*2, game_get_speed(gamespeed_fps)*2.5);
part_type_scale(part_type, 4, 4);
part_type_gravity(part_type, 0.01, 180);
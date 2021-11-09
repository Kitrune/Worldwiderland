/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

//configuracion del sistema de particulas
global.partSystemLluvia = part_system_create_layer("Assets_lluvia", false);
part_system_depth(global.partSystemLluvia, 100)

//Creacion de los emisores y el tipo de particula
part_emitter = part_emitter_create(global.partSystemLluvia);
part_type = part_type_create();

//configuracion del stream y emitter
part_emitter_region(global.partSystemLluvia, part_emitter, 0, display_get_width(), 0 , 
display_get_height(), ps_shape_rectangle, ps_distr_linear);

part_emitter_stream(global.partSystemLluvia, part_emitter, part_type, 10);

//configuracion de la particula
//part_type_sprite(part_type, sp_gotaLluvia, 1, 0 ,1);
part_type_shape(part_type, pt_shape_line);
part_type_orientation(part_type, 0, 5 ,0 ,0, true);
part_type_scale(part_type, 2, 1);
part_type_size(part_type, 0.1, 0.3, 0,0);
part_type_direction(part_type, 270, 275, 0, 0);
part_type_speed(part_type, 18, 23, 1, 0);
part_type_life(part_type, 30, 35);
part_type_color_mix(part_type, c_white, c_teal);
part_type_alpha1(part_type, 0.6);
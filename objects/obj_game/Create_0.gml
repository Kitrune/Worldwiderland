//El objeto se vuelve global
global.control = id;
//random seed
randomize();


#region Crea las particulas de la transicion
	//configuracion del sistema de particulas
	global.partSystemTran = part_system_create();
	part_system_depth(global.partSystemTran, -20)
	part_system_automatic_draw(global.partSystemTran,false);

	//configuracion de la particula
	part_emitter = part_emitter_create(global.partSystemTran);
	part_type = part_type_create();

	//Movimiento de particulas
	part_emitter_region(global.partSystemTran, part_emitter, 0, display_get_gui_width()*1.5, 0, display_get_gui_height(), ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.partSystemTran, part_emitter, part_type, 5);
	
	//estilo de particulas
	part_type_alpha3(part_type, 0, 1, 0);
	part_type_color3(part_type, c_white, c_yellow, c_gray);
	part_type_life(part_type, game_get_speed(gamespeed_fps)*2, game_get_speed(gamespeed_fps)*2.5);
	part_type_scale(part_type, 4, 4);
	part_type_gravity(part_type, 0.2, 180);
#endregion

//Va al menu principal
room_goto(rm_main);

//Lo saca fuera de la vista
y=room_height;
x=room_width;

//Inicializa la cola
colaDeJuegos = ds_queue_create();
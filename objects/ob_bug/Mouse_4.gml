/// @description Cuando tocan al bicho

//Si esta vivo y al descubierto
if(isAlive && !isCubierto){
	//Deja de estar vivo :(
	isAlive = false;
	//Lo hace invisible
	image_alpha = 0;
	//Comienza la animacion de muerte
	layer_sequence_create(layer_get_id("Assets_1"), x, y, seq_deadBug);
	//Le dice al control que gana
	global.control.ganado = true;
}

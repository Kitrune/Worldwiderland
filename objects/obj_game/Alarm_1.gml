/// @description Transiciona al transicion
room_goto(rm_transicion);
enTransicion = true; 
//Si quedan juegos en la lista de juegos, prepara el siguiente juego
layer_set_target_room(rm_transicion);
if(!ds_queue_empty(colaDeJuegos)){
	//Cuenta regresiva
	if(seqCuentaAtras==0){
		seqCuentaAtras=layer_sequence_create(layer_get_id("Assets_1"), room_width/2, room_height/2, seq_cuentaAtras);
	}
	//Callback para el inicio del juego
	alarm_set(2,60*3);
}else{//Fin del juego	
	finalJuego = true;
	layer_sequence_destroy(seqCuentaAtras);
}
layer_reset_target_room();
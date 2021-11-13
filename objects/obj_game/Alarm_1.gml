/// @description Transiciona al transicion
room_goto(rm_transicion);
enTransicion = true; 
//Si quedan juegos en la lista de juegos, prepara el siguiente juego
if(!ds_queue_empty(colaDeJuegos)){
	alarm_set(2,60*3);
}
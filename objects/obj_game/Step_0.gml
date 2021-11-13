/// @description Chequea si gana y hace transiciones

//Accion que se hace solo una vez cuando se acaba el juego
if(juegoTerminado && !ack_juegoTerminado){
	ack_juegoTerminado = true;
	alarm_set(1,60*3);
}

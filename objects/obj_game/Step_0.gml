/// @description Chequea si gana y hace transiciones

//Accion que se hace solo una vez cuando se acaba el juego
if(juegoTerminado && !ack_juegoTerminado){
	if(ganado){
		puntuacion++;
		racha++;
	}else{
		racha = 0;
	}
	ack_juegoTerminado = true;
	alarm_set(1,60*3);
}

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

#region
if(alfaBG<1.0 && juegoTerminado)
	alfaBG+=0.015;
if(alfaBG>0.0 && !juegoTerminado)
	alfaBG-=0.02;
if(enTransicion)
	alfaBG=0.0;
#endregion

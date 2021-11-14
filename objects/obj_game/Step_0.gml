/// @description Chequea si gana y hace transiciones

//Accion que se hace solo una vez cuando se acaba el juego
if(juegoTerminado && !ack_juegoTerminado){
	if(ganado){
		puntuacion++;
		racha++;
		if(racha>rachaMax){
			rachaMax =  racha;
		}
	}else{
		racha = 0;
	}
	ack_juegoTerminado = true;
	alarm_set(1,60*3);

}

#region Visibilidad del fondo azul
if(alfaBG<1.0 && juegoTerminado)
	alfaBG+=0.012;
if(alfaBG>0.0 && !juegoTerminado)
	alfaBG-=0.02;
if(enTransicion)
	alfaBG=0.0;
#endregion


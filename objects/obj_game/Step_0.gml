/// @description Chequea si gana y hace transiciones


#region Accion que se hace solo una vez cuando se acaba un minijuego
if(juegoTerminado && !ack_juegoTerminado){
	if(ganado){
		puntuacion++;
		racha++;
		sprite_index = spr_ganaste;
		if(racha>rachaMax){
			rachaMax =  racha;
			
		}
	}else{
		racha = 0;
		sprite_index = spr_perdiste;
	}
	ack_juegoTerminado = true;
	alarm_set(1,60*3);

}
#endregion

#region Visibilidad del fondo azul
if(alfaBG<1.0 && juegoTerminado)
	alfaBG+=0.012;
if(alfaBG>0.0 && !juegoTerminado)
	alfaBG-=0.02;
if(enTransicion)
	alfaBG=0.0;
#endregion

#region Volver al menu principal
if(finalJuego){
	if(keyboard_check_pressed(vk_enter)){
		event_user(2); //reestablece variables
		room_goto(rm_main); // va al menu
	}
}
#endregion

//sprite_index = ganado ? spr_ganaste : spr_perdiste;
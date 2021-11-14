/// @description Callback para saltar al siguiente juego

#region Reestablecimiento de variables
ganado = false;
enTransicion = false;
alfaBG=1;
juegoTerminado = false;
ack_juegoTerminado = false;
#endregion

#region Salto al siguiente juego
//detiene particulas
part_system_clear(global.partSystem);
//saca el juego de la cola
var juego = ds_queue_dequeue(colaDeJuegos)
//Dependiendo del juego ajusta el timer segun dificultad
switch(juego){
	case rm_agitasoda:
		if(racha < 2)
			timer=10;
		else if (racha <4)
			timer=8;
		else
			timer=5;
		break;
	case rm_findBug:
		if(racha < 2)
			timer=10;
		else if (racha <4)
			timer=8;
		else
			timer=5;
		break;
	case rm_juegoCamion:
		if(racha < 2)
			timer=10;
		else if (racha <4)
			timer=8;
		else
			timer=5;
		break;
	case rm_wwCircuito:
		if(racha < 2)
			timer=10;
		else if (racha <4)
			timer=8;
		else
			timer=6;
		break;
}

room_goto(juego);
//Empieza el timer
alarm_set(0,60);
#endregion
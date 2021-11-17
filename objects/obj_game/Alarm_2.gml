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
timer = 20;
if(racha < 2)
	dificultad=0;
else if (racha <4)
	dificultad=1;
else
	dificultad=2;

var tiempos = [];
switch(juego){
	case rm_agitasoda:
		tiempos = [10,8,5];
		break;
	case rm_asteroides:
		tiempos = [10,15,20];
		break;
	case rm_climb:
		tiempos = [20,18,15];
		break;
	case rm_equilibra:
		tiempos = [8,12,15];
		break;
	case rm_evitaLluvia:
		tiempos = [10,15,20];
		break;
	case rm_findBug:
		tiempos = [10,8,5];
		break;
	case rm_juegoCamion:
		tiempos = [15,10,8];
		break;
	case rm_wwCircuito:
		tiempos = [15,10,8];
		break;
	case rm_wwOrdenaNumero:
		tiempos = [20,18,15];
		break;
}
timer = tiempos[dificultad];

room_goto(juego);
//Empieza el timer
alarm_set(0,60);
#endregion
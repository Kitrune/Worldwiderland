//Se inicia la velocidad del camión en 0
var camion = inst_4AD9A17A;
camion.speed=0;
//Notifica a la clase control que se gano el juego
	if(!global.control.juegoTerminado){
		global.control.ganado = true;
		global.control.juegoTerminado = true;
	}
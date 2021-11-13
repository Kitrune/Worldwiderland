/// @description Insert description here
// You can write your code in this editor
if(contadorCables >= totalPares) {
	//Notifica a la clase control que se gano el juego
	if(!global.control.juegoTerminado){
		global.control.ganado = true;
		global.control.juegoTerminado = true;
	}
}
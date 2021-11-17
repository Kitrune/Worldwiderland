/// @description Manipula el timer, y finaliza juegos en base al tiempo
if(timer > 0){
	if(!juegoTerminado){
		timer -= 1;
		//La funcion se vuelve a llamar en un segundo
		alarm_set(0,60);
	}
}else{
	//Si se agoto el tiempo finaliza el juego
	juegoTerminado=true;
}
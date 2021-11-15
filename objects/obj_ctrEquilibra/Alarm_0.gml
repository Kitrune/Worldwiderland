/// @description Timer
// Control del Timer, mientras quede tiempo se quita un segundo
if(timer > 0){
	timer -= 1;
	//La funcion se vuelve a llamar en un segundo
	alarm_set(0,60);
}
/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Crea N ventanas segun la dificultad
var N = 0
switch(global.control.dificultad){
	case 0: N=3; break;
	case 1: N=4; break;
	case 2: N=5; break;
	default: N=3; break;
}
	
for(var i =1; i<N+1; i++){
	//Genera cordenadas aleatorias en el room
	var ranX = random_range(90,room_width-500);
	var ranY = random_range(40,room_height-500);
	instance_create_depth(ranX,ranY,(-10)*i,obj_ventana);
	randomize();
}
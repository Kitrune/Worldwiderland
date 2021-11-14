/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Crea N ventanas segun la dificultad
var N = 0
var racha = global.control.racha;
if(racha < 2)
	N=3;
else if (racha <4)
	N=4;
else
	N=5;
	
for(var i =1; i<N+1; i++){
	//Genera cordenadas aleatorias en el room
	var ranX = random_range(90,room_width-500);
	var ranY = random_range(40,room_height-500);
	instance_create_depth(ranX,ranY,(-10)*i,obj_ventana);
	randomize();
}
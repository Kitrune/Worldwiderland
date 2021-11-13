/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Crea N ventanas aleatorias en diferentes capas
var N = random_range(3, 5);
for(var i =1; i<N+1; i++){
	//Genera cordenadas aleatorias en el room
	var ranX = random_range(90,room_width-500);
	var ranY = random_range(40,room_height-500);
	instance_create_depth(ranX,ranY,(-10)*i,obj_ventana);
	randomize();
}
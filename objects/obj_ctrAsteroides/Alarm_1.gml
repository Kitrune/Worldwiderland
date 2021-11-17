/// @description Crea asteroides

//Cantidad de asteroides a generar
var cantidad = irandom_range(1,dificultad);

for(var i=0; i<cantidad; i++){
	//randomiza la posicion en X y Y
	var xx = irandom_range(room_width+100, room_width+600);
	var yy = irandom_range(-200,room_height+200);
	instance_create_layer(xx, yy, "Instances", obj_asteroide);
}
alarm_set(1,120);
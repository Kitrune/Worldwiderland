/// @description Disparo

//solo dispara si no esta en modo cooldown
if(!coolDown){
	//Punto donde se crea 
	var distancia = 100;
	var xx = lengthdir_x(distancia, image_angle+90);
	var yy = lengthdir_y(distancia, image_angle+90);

	var misil = instance_create_layer(x+xx, y+yy, "Instances", obj_misil);
	misil.image_angle = image_angle;
	misil.speed = 10;
	misil.direction = image_angle+90;

	coolDown = true;
	alarm_set(0,30);
}
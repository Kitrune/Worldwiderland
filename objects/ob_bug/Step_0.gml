/// @description Comportamiento del bicho
if(!isCubierto){
	//Si esta descubierto, el bicho se mueve a la ventana mas cercana
	var ventana = instance_nearest(x,y,obj_ventana);
	var ventanaX = ventana.x + ventana.sprite_width/2;
	var ventanaY = ventana.y + ventana.sprite_height/2;
	var direccion = point_direction(x,y,ventanaX,ventanaY);
	
	direction = direccion;
	image_angle = direccion - 90;
	speed = 3;
}else{
	if(!place_meeting(x,y,obj_ventana))
		isCubierto = false;
	speed = 1;
}
if(isAlive){
	x = clamp(x,sprite_width/2,room_width-sprite_width/2);
	y = clamp(y,sprite_height/2,room_height-sprite_height/2);
}
/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(
	spr_asteroide1,
	spr_asteroide2,
	spr_asteroide3
);

rotSpeed = random_range(-2,2);;

//Random de direccion
var posicionY = irandom_range(100, room_height-100);
var direccion = point_direction(x,y,0,posicionY);
direction = direccion;

//Random velocidad;
speed = random_range(1.5,3);
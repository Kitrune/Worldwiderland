/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

diffx = pos > x ? pos - x : x - pos;

if(diffx > 300){
	pos = x;
	var numero = random_range(1, 2);
	if(numero > 1.50){
		hspeed = velocidad;
	}else{
		hspeed = -velocidad;
	}
}

if(x > (room_width - sprite_width/2)){
	hspeed = -velocidad;
}else if((x-sprite_width/2)<=0){
	hspeed = velocidad;	
}

if(!place_meeting(x, y, obj_lluviaPersona) && !lose){
	lose = true;
	show_debug_message("Ya no esta cubierto");
	image_alpha = 0;
	hspeed = 0;
	layer_sequence_create(layer_get_id("Assets_lluvia"), x, y, seq_lluviaLose);
}
/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("A"))){
	if(!cubierto)
			sprite_index = sp_girlCrying;
	else
			sprite_index = sp_girlRain;
	image_xscale = abs(image_xscale)*-1;
	hspeed = -5;
} else if(keyboard_check(ord("D"))){
	if(!cubierto)
			sprite_index = sp_girlCrying;
	else
			sprite_index = sp_girlRain;
	image_xscale = abs(image_xscale);
	hspeed = 5;
}  else{
	hspeed = 0;
	if(!cubierto)
			sprite_index = sp_girlstayCrying;
	else
			sprite_index = sp_girlstay;
}
	

if(!place_meeting(x, y, obj_umbrella) && cubierto){
	cubierto = false;
	show_debug_message("Perdiste");
}

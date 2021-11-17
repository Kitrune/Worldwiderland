/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
if(!isGameover){
	isGameover = true;
	var explosion = instance_create_depth(x,y,-100, obj_explosion);
	with(explosion){
		persistente = true
		image_xscale = 15;
		image_yscale = 15;
	}
	if(!global.control.juegoTerminado){
		global.control.ganado = false;
		global.control.juegoTerminado = true;
	}
}
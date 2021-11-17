/// @description Insert description here
// You can write your code in this editor

if(fruitTimer>=cadencia){
	var fruta_x = random_range(base.x - sprite_get_width(spr_base)/2, base.x + sprite_get_width(spr_base)/2-20);
	var fruta = instance_create_layer(fruta_x, 0, "Instances", obj_fruta);
	with(fruta) {
		image_xscale = 0.20;
		image_yscale = 0.20;
	}
	fruitTimer = 0;
}

fruitTimer++;
if(!equilibrado){
	if(!global.control.juegoTerminado){
		global.control.ganado = false;
		global.control.juegoTerminado = true;
	}
}
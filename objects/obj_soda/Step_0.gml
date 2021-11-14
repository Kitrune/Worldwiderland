/// @description Insert description here
// You can write your code in this editor
if(contadoragitado>=N){
	part_particles_create(global.partSystem, x+80, y+25, global.particula1, 1);
	image_alpha = 0;
	if(!ganado){
		animacion = layer_sequence_create(layer_get_id("Assets_1"), x, y, seq_botellaAgitada);
	}
	ganado = true;
	//Notifica a la clase control que se gano el juego
	if(!global.control.juegoTerminado){
		global.control.ganado = true;
		global.control.juegoTerminado = true;
	}
	layer_sequence_x(animacion, x);
	layer_sequence_y(animacion, y);
	
}
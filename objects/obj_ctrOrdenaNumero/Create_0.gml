/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Se declara el tiempo del timer
timer = 30;
//Se empieza a correr el timer
alarm_set(0,60);
var cantidad_numeros = 8;
var permutacion = ds_list_create();
for(var i = 0; i < cantidad_numeros; i++) {
	ds_list_add(permutacion, i+1);
}
ds_list_shuffle(permutacion);
var factor_escala = room_width/(cantidad_numeros+2)/10;
for(var i = 0; i < cantidad_numeros; i++) {
	var inst = instance_create_layer(factor_escala*10 + i*sprite_get_width(spr_cuadro)*factor_escala, room_height/2, "Instances", obj_cuadro_numero);
	inst.numero = permutacion[|i];
	inst.image_xscale *= factor_escala;
	inst.image_yscale *= factor_escala;
	//if(i%2 != 0) // Crear los botones para swapear.
}
/// @description Codigo que se ejecuta al inicio del minijuego
randomize();
//Se declara el tiempo del timer
timer = 30;
//Se empieza a correr el timer
alarm_set(0,60);
// Crear los bloques y botones para swapear los numeros.
cantidad_numeros = 8;
permutacion = ds_list_create();
for(var i = 0; i < cantidad_numeros; i++) {
	ds_list_add(permutacion, i+1);
}
ds_list_shuffle(permutacion);
factor_escala = room_width/(cantidad_numeros+2);
var lista_cuadros = ds_list_create();
for(var i = 0; i < cantidad_numeros; i++) {
	width = sprite_get_width(spr_cuadro)*factor_escala;
	var inst = instance_create_layer(factor_escala + i*width/10, room_height/2, "Instances", obj_cuadro_numero);
	ds_list_add(lista_cuadros, inst);
	inst.numero = permutacion[|i];
	inst.image_xscale *= factor_escala/10;
	inst.image_yscale *= factor_escala/10;
	// Crear los botones para swapear.
	if(i == 0) {
		continue;
	}
	var btn = instance_create_layer(factor_escala*3/4 + i*width/10, room_height/2, "Instances", obj_control_swap);
	btn.image_xscale *= factor_escala/2/10;
	btn.image_yscale *= factor_escala/10;
	btn.bloque_izquierda = lista_cuadros[|i-1];
	btn.bloque_derecha = lista_cuadros[|i];
}
ds_list_sort(permutacion, true);
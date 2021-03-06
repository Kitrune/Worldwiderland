/// @description Codigo que se ejecuta al inicio del minijuego
randomize();
switch(global.control.dificultad){
	case 0: cantidad_numeros=4; break;
	case 1: cantidad_numeros=6; break;
	case 2: cantidad_numeros=8; break;
	default: cantidad_numeros=4; break;
}
// Crear los bloques y botones para swapear los numeros.
permutacion = ds_list_create();
var aleatorio;
for(var i = 0; i < cantidad_numeros; i++) {
	do {
		aleatorio = irandom(25)+1;
	}
	until(ds_list_find_index(permutacion, aleatorio) == -1);
	ds_list_add(permutacion, aleatorio);
}

#region shuffle hasta la muerte
ds_list_shuffle(permutacion);
var ordenados = ds_list_create();
ds_list_copy(ordenados, permutacion);
ds_list_sort(ordenados, true);
var igual = true;
while(igual){
	for(var i = 0; i < cantidad_numeros; i++) {
	        if(ds_list_find_value(ordenados, i) != ds_list_find_value(permutacion, i)) {
	            igual = false;
	            break;
	        }
	    }
		if(igual) {
			ds_list_shuffle(permutacion);
		}
}
#endregion


var sprite_size = sprite_get_width(spr_cuadro);
factor_escala = room_width/(cantidad_numeros+2);
var lista_cuadros = ds_list_create();
for(var i = 0; i < cantidad_numeros; i++) {
	width = sprite_get_width(spr_cuadro)*factor_escala;
	var c_height = sprite_get_height(spr_cuadro)*factor_escala/sprite_size;
	var inst = instance_create_layer(factor_escala + i*width/sprite_size, room_height/2 -  c_height/2, "Instances", obj_cuadro_numero);
	ds_list_add(lista_cuadros, inst);
	inst.numero = permutacion[|i];
	inst.image_xscale *= factor_escala/sprite_size;
	inst.image_yscale *= factor_escala/sprite_size;
	// Crear los botones para swapear.
	if(i == 0) {
		continue;
	}
	var btn = instance_create_layer(factor_escala*3/4 + i*width/sprite_size, room_height/2 - c_height/2, "swap", obj_control_swap);
	btn.image_xscale *= factor_escala/2/sprite_size;
	btn.image_yscale *= factor_escala/2/sprite_size;
	btn.bloque_izquierda = lista_cuadros[|i-1];
	btn.bloque_derecha = lista_cuadros[|i];
}
ds_list_sort(permutacion, true);
/// @description Insert description here
// You can write your code in this editor
var actuales = ds_list_create()
for(var i = 1; i <= cantidad_numeros; i++) {
	var numero;
	try {
	    var c = collision_point(i*factor_escala, room_height/2, obj_cuadro_numero, false, false);
		numero = c.numero;
	}
	catch( _exception)
	{
	    break;
	}
	ds_list_add(actuales,numero);
}
var equal = true;
if(ds_list_size(actuales) == cantidad_numeros) {
	for(var i = 0; i < cantidad_numeros; i++) {
        if(ds_list_find_value(permutacion, i) != ds_list_find_value(actuales, i)) {
            equal = false;
            break;
        }
    }
	if(equal) {
		show_debug_message("GANASTE!");
	}
}
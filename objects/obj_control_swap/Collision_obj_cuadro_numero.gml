/// @description Detectar colisiones con los bloques y asignar cuales estan a la izquierda y cuales a la derecha.
if(!izquierda_set || !derecha_set) {
	bloque_izquierda = other;
	izquierda_set = true;
	bloque_derecha = other;
	derecha_set = true;
}
if(!(bloque_derecha.x > bloque_izquierda.x)) {
	if(other.x <= bloque_izquierda.x) {
		bloque_izquierda = other;
		}
	else {
		bloque_derecha = other;
	}
}
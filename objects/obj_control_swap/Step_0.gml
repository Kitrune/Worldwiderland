/// @description Insert description here
// You can write your code in this editor
if(angulo > 0) {
	angulo += 10;
	var xx = lengthdir_x(bloque_derecha.sprite_width/2, angulo);
	var yy = lengthdir_y(bloque_derecha.sprite_width/2, angulo);
	bloque_derecha.x = centro_rotacion + xx;
	bloque_derecha.y = y_inicial + yy;
	bloque_izquierda.x = centro_rotacion - xx;
	bloque_izquierda.y = y_inicial - yy;
	if(angulo >= 180) {
		angulo = 0;
		var xx = lengthdir_x(bloque_derecha.sprite_width/2, 180);
		var yy = lengthdir_y(bloque_derecha.sprite_width/2, 180);
		bloque_derecha.x = centro_rotacion + xx;
		bloque_derecha.y = y_inicial + yy;
		bloque_izquierda.x = centro_rotacion - xx;
		bloque_izquierda.y = y_inicial - yy;
		var aux = bloque_derecha;
		bloque_derecha = bloque_izquierda;
		bloque_izquierda = aux;
	}
}
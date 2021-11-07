/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Bloque a mi izquierda " + string(bloque_izquierda.numero));
//show_debug_message("Bloque a mi derecha " + string(bloque_derecha.numero));

if(angulo == 0) {
	bloque_izquierda = collision_point(x, y+sprite_height/2, obj_cuadro_numero, false, false);
	bloque_derecha = collision_point(x+sprite_width, y+sprite_height/2, obj_cuadro_numero, false, false);
	centro_rotacion = bloque_izquierda.x + bloque_izquierda.sprite_width/2;
	angulo = 1;
	image_alpha=0;
}
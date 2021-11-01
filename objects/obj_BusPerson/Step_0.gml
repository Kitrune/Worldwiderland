 /* Logica del movimiento de la persona,
*  donde se tendrán 3 estados representados en números.
*  reposo=0, Turno de mover el pie izquierdo=1 y el derecho=2.
*  Solo puede mover un pie a la vez solo avanza por estados 1 y 2
*/
speed=0;
var camion = inst_4AD9A17A;
var vel=5;

//Verifica si la tecla del pie correspondiente es ingresada en el turno correcto
if(keyboard_check(ord(teclaIzq))&&estado!=1){
	estado=1;
	speed=vel;
	image_angle=13;
}

if(keyboard_check(ord(teclaDer))&&estado!=2){
	estado=2;
	speed=vel;
	image_angle=-13;
}
//El personaje se dirige a las coordenadas del camión sin importar su posición actual
direction=point_direction(x,y,camion.x,camion.y);
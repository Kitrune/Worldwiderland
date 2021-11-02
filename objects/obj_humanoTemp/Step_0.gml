//Controles de movimiento
derecha=keyboard_check(vk_right);
izquierda=keyboard_check(vk_left);
salto=keyboard_check(vk_up);

//Movimiento horizontal

var movimientoH=(derecha - izquierda) * velocidadH;
var tocaPiso=place_meeting(x, y + 1, obj_nubeTemp);


if place_meeting(x + movimientoH, y, obj_nubeTemp){
	while !place_meeting(x + sign(movimientoH), y, obj_nubeTemp){
		x+=sign(movimientoH);
	}
	movimientoH=0;
}

//Movimiento vertical

velocidadV += gravedad;


if place_meeting(x, y + velocidadV, obj_nubeTemp){
	while !place_meeting(x, y + sign(velocidadV), obj_nubeTemp){
		y+=sign(velocidadV);
	}
	velocidadV=0;
}

//Brinco

if tocaPiso and salto{
	velocidadV-=alturaSalto;
}

x += movimientoH;
y += velocidadV;
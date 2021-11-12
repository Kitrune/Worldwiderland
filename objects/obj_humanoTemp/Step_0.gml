//Controles de movimiento
derecha=keyboard_check(vk_right);
izquierda=keyboard_check(vk_left);
salto=keyboard_check_pressed(vk_up);

//Movimiento horizontal

var movimientoH=(derecha - izquierda) * velocidadH;
var tocaPiso=place_meeting(x, y + 1, obj_nubeTemp);

//Movimiento vertical

velocidadV += gravedad;


if place_meeting(x, y + velocidadV, obj_nubeTemp){
	try {
		var nube = instance_place(x, y, obj_nubeTemp);
	
	//Brincos en nubes reales
		if(!nube.transparente&&nube.esReal){
			velocidadV=0;
		} else if(nube.transparente&&nube.esReal&&tocaPiso) {
			nube.transparente=false;
		}
	} catch(e){}
}

//Brinco

if tocaPiso and salto{
	if(velocidadV==0){
		velocidadV=alturaSalto*-1;
	}
}

x += movimientoH;
y += velocidadV;
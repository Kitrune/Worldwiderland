//Controles de movimiento
derecha=keyboard_check(vk_right) || keyboard_check(ord("D"));
izquierda=keyboard_check(vk_left) || keyboard_check(ord("A"));
salto=keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);

//Movimiento horizontal

var movimientoH=(derecha - izquierda) * velocidadH;

//Movimiento vertical
if(!enSuelo){
	velocidadV += gravedad;
}


//Brinco
if salto and enSuelo{
	velocidadV=alturaSalto*-1;
	sprite_index = spr_jump;
	enSuelo = false;
}

x += movimientoH;
y += velocidadV;

//Animacion
if((derecha||izquierda) & enSuelo){
	sprite_index=spr_walk;
}else if(enSuelo){
	sprite_index=spr_idle;
}

//Direccion
if(izquierda ||derecha)
	if(derecha){
		image_xscale = abs(image_xscale);
	}else{
		image_xscale = -1*abs(image_xscale);
	}
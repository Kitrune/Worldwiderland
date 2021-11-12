//Controles de movimiento
derecha=keyboard_check(vk_right) || keyboard_check(ord("D"));
izquierda=keyboard_check(vk_left) || keyboard_check(ord("A"));
salto=keyboard_check_pressed(vk_up) || keyboard_check(vk_space);

//Movimiento horizontal

var movimientoH=(derecha - izquierda) * velocidadH;

//Movimiento vertical
if(!enSuelo){
	velocidadV += gravedad;
}


//Brinco
if salto and enSuelo{
	velocidadV=alturaSalto*-1;
	enSuelo = false;
}

x += movimientoH;
y += velocidadV;
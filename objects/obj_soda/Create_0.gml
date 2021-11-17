/// @description Insert description here
// You can write your code in this editor
is_dragged = false;
posx = xstart;
posy= ystart;
contadoragitado = 0;

//Ajusta la dificultad
switch(global.control.dificultad){
	case 0: N=10; break;
	case 1: N=15; break;
	case 2: N=20; break;
	default: N=15; break;
}
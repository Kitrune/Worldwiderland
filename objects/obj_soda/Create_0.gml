/// @description Insert description here
// You can write your code in this editor
is_dragged = false;
posx = xstart;
posy= ystart;
contadoragitado = 0;

//Ajusta la dificultad
var racha = global.control.racha;
if(racha < 2)
	N=10;
else if (racha <4)
	N=15;
else
	N=20;
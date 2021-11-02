/// @description Insert description here
// You can write your code in this editor
isDragging = false;

//Instancia en mouse
var instancia = instance_position(mouse_x,mouse_y, obj_socket);
//Si la instancia es diferente a null y a si misma
if(instancia != noone && instancia != id && instancia.identificador == identificador){
    //Guarda la ubicacion de la segunda instancia
    destX = instancia.x;
    destY = instancia.y;
	estaConectado = true;
	inst_1A209760.contadorCables++;
}
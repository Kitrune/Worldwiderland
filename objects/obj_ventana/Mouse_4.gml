/// @description Comienza a arrastrar la ventana clickeada

//Si ya esta siendo arrastrada, no nos interesa hacer nada
if(!esArrastrado){
	//Valida que la ventana es accesible en el punto donde se clikeo
	if(scr_esAccesible(mouse_x,mouse_y,id)){
		esArrastrado = true;
		//calcula el offset de la posicion del mouse y la ventana
		xOff = mouse_x - x;
		yOff = mouse_y - y;
	}
}
/// @description Colision con ventanas



	//Calculos para saber cuando esta cubierto
    var x1 = bbox_left;
    var y1 = bbox_top;
    var x2 = bbox_right;
    var y2 = bbox_bottom;
    var x3 = other.bbox_left;
    var y3 = other.bbox_top;
    var x4 = other.bbox_right;
    var y4 = other.bbox_bottom;
	//Si esta combletamente debajo de una ventana se cambia el estado a cubierto
	isCubierto = (rectangle_in_rectangle(x1, y1, x2, y2, x3, y3, x4, y4) == 1)

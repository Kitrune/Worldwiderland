/// @function	scr_esAccesible(x, y, obj)
/// @description	Evalua si un objeto no tiene otro por encima en un punto
/// @param x	La posicion en x a evaluar
/// @param y	La posicion en Y a evaluar
/// @param obj	Objeto a evaluar
function scr_esAccesible(x, y, obj){
	//Obtiene las posibles instancias que pueden cubrir nuestro objeto
	var posiblesInst = ds_list_create();
	var n = instance_position_list(x, y, all, posiblesInst, false);
	//Determina si el objeto tiene la menor profundidad
	for(var i=0; i<n; i++){
		//Si un objeto de la lista tiene menor profundidad al objeto a evaluar
		//se determina que no es accesible, FALSE
		if(posiblesInst[|i].depth < obj.depth)
			return false;
	}
	return true;
}
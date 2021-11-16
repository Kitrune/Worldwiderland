/// @description determina la posicion y angulo del satelite

//angulo del satelite
var angulo = point_direction(planeta.x,planeta.y, mouse_x, mouse_y);
image_angle = angulo -90;

//posicion
var distancia = 260;
with(planeta){
	var xx = lengthdir_x(distancia, angulo);
	var yy = lengthdir_y(distancia, angulo);
}
x = planeta.x + xx;
y = planeta.y + yy;
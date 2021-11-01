/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor
randomize();
//Se declara el tiempo del timer
timer = 30;
//Se empieza a correr el timer
alarm_set(0,60);
var margen = 50;
var separacionX = room_width/8;
var separacionY = room_height/8;
var coordenadas = ds_list_create();
var colores = [c_red, c_blue, c_purple, c_fuchsia, c_orange, c_yellow, c_green, c_white];
// generar las posiciones donde se pueden generar los cables.
// Primeras 6 posiciones, las de arriba.
for(var i = 1; i <= 6; i++) {
	ds_list_add(coordenadas, [separacionX*i, margen, -90]);
}
// Las de abajo
for(var i = 1; i <= 6; i++) {
	ds_list_add(coordenadas, [separacionX*i, room_height - margen, 90]);
}
// Los de la izquierda.
for(var i = 1; i <= 3; i++) {
	ds_list_add(coordenadas, [margen, separacionY*i, 0]); 
}
// Los de la derecha.
for(var i = 1; i <= 3; i++) {
	ds_list_add(coordenadas, [room_width - margen, separacionY*i, 180]);
}
aleatorios = ds_list_create();
for(var i = 0; i < totalPares; i++) {
	ds_list_add(aleatorios, i);
}
ds_list_shuffle(aleatorios);
ds_list_shuffle(coordenadas);
var coordenadasEscogidas;

for(var i = 0; i < totalPares; i++) {
	coordenadasEscogidas = false;
	do {
		coord1 = coordenadas[|i];
		coord2 = coordenadas[|i+1];
		if(coord1[0] == coord2[0] || coord1[1] == coord2[1]) {
			ds_list_shuffle(coordenadas);
		}
		else {
			coordenadasEscogidas = true;
			ds_list_delete(coordenadas, i);
			ds_list_delete(coordenadas, i);
		}
	} until(coordenadasEscogidas);
	var inst = instance_create_layer(coord1[0], coord1[1], "Instances", obj_socket);
	with (inst) {
		colorCable = colores[other.aleatorios[|i]];
		identificador = i;
		image_blend = colores[other.aleatorios[|i]];
		image_angle = other.coord1[2];
		show_debug_message("Se creo terminal 1 de color " + string(colores[other.aleatorios[|i]]) + "En " + string(x)+ ","+string(y));
	}
	var inst = instance_create_layer(coord2[0], coord2[1], "Instances", obj_socket);
	with (inst) {
		colorCable = colores[other.aleatorios[|i]];
		identificador = i;
		image_blend = colores[other.aleatorios[|i]];
		var diff = point_direction(x,y,room_width/2, room_height/2);
		image_angle = ceil(diff/90)*90;
		image_angle = other.coord2[2];
		show_debug_message("Se creo terminal 2 de color " + string(colores[other.aleatorios[|i]]) + "En " + string(x)+ ","+string(y));
	}
}
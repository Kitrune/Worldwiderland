//Muestra el room actual con fines de desarrollo
draw_text(0, 0, "Room: " + room_get_name(room));

//Muestra la puntuacion y multiplicador si no se encuentra en el menu
if(room != rm_main){
	draw_text(20, 20, "Puntuacion: " + string(puntuacion));
	draw_text(20, 40, "Multiplicador: " + string(multiplicador));
}
//Muestra el room actual con fines de desarrollo
draw_text(0, 0, "Room: " + room_get_name(room));
//Muestra la puntuacion y multiplicador si se encuentra en una ronda
switch(room){
	case rm_main:
		break;
		
	default:
		draw_text(20, 20, "Puntuacion: " + string(puntuacion));
		draw_text(20, 40, "Multiplicador: " + string(multiplicador));
		draw_text(20, 60, "Tiempo restante: " + string(global.timer));
		break;
}
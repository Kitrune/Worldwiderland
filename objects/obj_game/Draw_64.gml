/// @description Dibuja GUI

if(room != rm_main){
	#region Dibuja el banner
	var margin = 20;
	var spacer = 125;
	var iconSize = 48
	//Dibuja letrero
	draw_sprite(spr_letrero, 0, x-120,y);
	//Alinea el dibujado al centro vertical
	draw_set_valign(fa_middle);
	//Asigna la fuente personalizada
	draw_set_font(fo_banner);
	//obtiene la coord en 'y' para dibujar en el centro
	var centro = y+sprite_get_height(spr_letrero)/2;
	//Icono de estrella y puntuacion
	draw_sprite_stretched(spr_estrella, 0, x+margin, centro-iconSize/2, iconSize, iconSize);
	draw_text(x+margin*2+iconSize, centro, string(puntuacion));
	//Icono de reloj y tiempo
	draw_sprite_stretched(spr_reloj, 0, x+margin+spacer, centro-iconSize/2, iconSize, iconSize);
	draw_text(x+margin*2+spacer+iconSize, centro, string(timer));
	#endregion
	
	#region Fin del juego
	if(room != rm_transicion && juegoTerminado){
		
		//Oscurece el fondo
		if(alfaBG<0.5)
			alfaBG+=0.015;
		draw_set_alpha(alfaBG);
		draw_set_color(c_black);
		draw_rectangle(0,0,room_width, room_height, false);
		
		//Despliega mensaje de ganador o perdedor
		draw_set_alpha(1);
		draw_set_color(c_white);
		if(alfaBG>=0.5)
		if(ganado){
			draw_text(room_width/2, room_height/2, "Ganador");
		}else{
			draw_text(room_width/2, room_height/2, "Perdedor");
		}
	}
	#endregion
	
	
	//Restablece los parametros por defeco para dibujar
	draw_set_valign(fa_top);
	draw_set_font(fo_default);
	
}
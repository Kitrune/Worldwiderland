/// @description Dibuja GUI

if(room != rm_main){
	#region Oscurece el fondo
	draw_set_alpha(alfaBG);
	draw_set_color($311406);
	draw_rectangle(0,0,room_width, room_height, false);
	draw_set_alpha(1);
	#endregion
	
	#region Dibujado de particulas
	if((juegoTerminado && alfaBG>0.2) || enTransicion)
		part_system_drawit(global.partSystemTran);
	#endregion
	
	#region Despliega mensaje de ganador o perdedor
	if(room != rm_transicion && juegoTerminado){
		draw_set_color(c_white);
		if(ganado){
			draw_text(room_width/2, room_height/2, "Ganador");
		}else{
			draw_text(room_width/2, room_height/2, "Perdedor");
		}
		draw_set_alpha(1);
	}
	//Restablece los parametros por defecto para dibujar
	draw_set_valign(fa_top);
	draw_set_font(fo_default);
	#endregion
	
	#region Dibuja el banner
	if(!finalJuego){
		var margin = 20;
		var spacer = 125;
		var iconSize = 48
		//Dibuja letrero
		draw_set_alpha(1);
		draw_set_color(c_white);
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
	}
	#endregion
	
	#region Dibuja los stats finales
	if(finalJuego){
		var signSize = 600
		draw_sprite_stretched(spr_letreroFinal, 0, room_width/2 - signSize/2, room_height/2-signSize/2, signSize, signSize);
		//Todo dibujar
	}
	#endregion
}
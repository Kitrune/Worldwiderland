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
	
	#region "Siguiente minijuego en"
		if(enTransicion){
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_set_font(fo_banner);
			draw_text_color(room_width/2, room_height/2-200, "Siguiente minijuego en",c_white,c_white,c_white,c_white,1);
		
			draw_set_halign(fa_left);
		}
	#endregion
	
	#region Despliega mensaje de ganador o perdedor
	if(room != rm_transicion && juegoTerminado){
		draw_set_color(c_white);
		var alto = 200;
		var ancho = alto*4;
		try{
			if(room != rm_climb)
				draw_sprite_stretched(sprite_index, image_index, room_width/2 - ancho/2, room_height/2-alto/2, ancho, alto);
			else
				draw_sprite_stretched(sprite_index, image_index,view_xport[0] + 1280/2 - ancho/2, view_yport[0]+720/2-alto/2, ancho, alto);

		}catch(err){
			show_debug_message(err);
		}
		draw_set_alpha(1);
	}
	#endregion
	
	#region Dibuja el banner
	if(!finalJuego){
		var margin = 20;
		var spacer = 125;
		var iconSize = 48;
		var xx = 0;
		var yy = 0;
		//Dibuja letrero
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_sprite(spr_letrero, 0, xx-120,yy);
		//Alinea el dibujado al centro vertical
		draw_set_valign(fa_middle);
		//Asigna la fuente personalizada
		draw_set_font(fo_banner);
		//obtiene la coord en 'y' para dibujar en el centro
		var centro = yy+sprite_get_height(spr_letrero)/2;
		//Icono de estrella y puntuacion
		draw_sprite_stretched(spr_estrella, 0, xx+margin, centro-iconSize/2, iconSize, iconSize);
		draw_text(xx+margin*2+iconSize, centro, string(puntuacion));
		//Icono de reloj y tiempo
		draw_sprite_stretched(spr_reloj, 0, xx+margin+spacer, centro-iconSize/2, iconSize, iconSize);
		draw_text(xx+margin*2+spacer+iconSize, centro, enTransicion ? "--" : string(timer));
	}
	#endregion
	
	#region Dibuja los stats finales
	if(finalJuego){
		var yinicio = 200;
		var col1 = 400;
		var col2 = 780;
		var iconSize = 48;
		var signSize = 600;
		var separacionH = 15;
		var separacionV = 80;
		draw_sprite_stretched(spr_letreroFinal, 0, room_width/2 - signSize/2, room_height/2-signSize/2, signSize, signSize);
		//Todo dibujar
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		//Puntuacion final
		draw_text(col1, yinicio, "Puntuacion final:");
		draw_sprite_stretched(spr_estrella, 0, col2, yinicio-iconSize/2, iconSize, iconSize);
		draw_text(col2 + iconSize + separacionH, yinicio, string(puntuacion));
		//Racha
		draw_text(col1, yinicio + separacionV, "Mejor racha:");
		draw_sprite_stretched(spr_estrella, 0, col2, yinicio + separacionV -iconSize/2, iconSize, iconSize);
		draw_text(col2 + iconSize + separacionH, yinicio + separacionV, string(rachaMax));
		//Perdidos
		draw_text(col1, yinicio + separacionV*2, "Juegos perdidos:");
		draw_sprite_stretched(spr_estrella, 0, col2, yinicio + separacionV*2 -iconSize/2, iconSize, iconSize);
		draw_text(col2 + iconSize + separacionH, yinicio + separacionV*2, string(juegosPorRonda-puntuacion));
		
		//Pucha enter para continnuar
		draw_set_halign(fa_center);
		draw_set_color(c_yellow);
		draw_text(room_width/2, yinicio + separacionV*5, "Pulse [ENTER] para continuar");
		
	}
	#endregion
	
	//Restablece los parametros por defecto para dibujar
	draw_set_valign(fa_top);
	draw_set_font(fo_default);
	draw_set_color(c_white);
}
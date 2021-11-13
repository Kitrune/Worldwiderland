/// @description Accion del boton
with(global.control){
	event_user(1);
}
//detiene audio
audio_stop_sound(song_menu);
//detiene particulas
part_system_clear(global.partSystem);
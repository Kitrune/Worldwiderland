/// @description Inicializacion del modo de juego

#region Reestablecimiento de variables
event_user(2);
#endregion

#region Selecccion aleatoria de minijuegos
var listaDeJuegos = ds_list_create();

// IMPORTANTE: Añadir futuros juegos aqui
ds_list_add(listaDeJuegos,
rm_findBug, 
rm_juegoCamion, 
rm_agitasoda, 
rm_wwCircuito,
rm_climb,
rm_evitaLluvia,
rm_equilibra,
rm_asteroides,
rm_wwOrdenaNumero
);

ds_list_shuffle(listaDeJuegos);
for(var i=0; i<juegosPorRonda; i++){
	ds_queue_enqueue(colaDeJuegos, listaDeJuegos[|i]);
}
ds_list_destroy(listaDeJuegos);
#endregion

#region Inicia el juego
//La alarma 1 contiene el codigo necesario para seguir el juego, por lo que se llama de inmediato
alarm_set(1,1);
#endregion
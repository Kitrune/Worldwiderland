/// @description Callback para saltar al siguiente juego

#region Reestablecimiento de variables
ganado = false;
enTransicion = false;
alfaBG=1;
juegoTerminado = false;
ack_juegoTerminado = false;
#endregion

#region Salto al siguiente juego
//detiene particulas
part_system_clear(global.partSystem);
room_goto(ds_queue_dequeue(colaDeJuegos));
//Empieza el timer
timer = 10;
alarm_set(0,60);
#endregion
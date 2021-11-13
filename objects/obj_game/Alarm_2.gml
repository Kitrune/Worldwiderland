/// @description Callback para saltar al siguiente juego

#region Reestablecimiento de variables
ganado = false;
enTransicion = false;
juegoTerminado = false;
ack_juegoTerminado = false;
alfaBG = 0.0;
#endregion

#region Salto al siguiente juego
room_goto(ds_queue_dequeue(colaDeJuegos));
//Empieza el timer
timer = 10;
alarm_set(0,60);
#endregion
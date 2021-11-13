//El objeto se vuelve global
global.control = id;
//random seed
randomize();
//Linea temporal para saltarse el menu principal
room_goto(rm_agitasoda);
alarm_set(0,60);

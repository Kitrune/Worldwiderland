/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Se declara el tiempo del timer
timer = 25;
//Se empieza a correr el timer
alarm_set(0,60);

preguntas=["Salta sobre los pares","Salta sobre las condiciones reales","Salta sobre los numeros mas pequeños","Salta sobre los inpares","Salta sobre los numeros mas grandes"];

//Generacion de nubes

var separacion = room_height/5;

var altitudes=[separacion*5-80,separacion*4-80,separacion*3-80,separacion*2-80,separacion-80];
var longitudes=[195,615,1075];
var j=0;
var k=0;
list = ds_list_create();
ds_list_add(list,false,true,false);
ds_list_shuffle(list);
for(var i=0; i<15; i++){
	if(i%3==0){
		ds_list_shuffle(list);
		k=0;
		j++;
	}
	if(j==5){
		j=0;
	}
	var objeto=instance_create_layer(longitudes[k], altitudes[j], "Instances", obj_nubeTemp);
	objeto.esReal=list[|k];
	k++;
}

//Empieza a mover la camara
var timeLeft=inst_487C7496.timer*60;
var vel=room_height/timeLeft;
y=room_height -720/2;
x=room_width/2;
direction = 90;
speed = vel;
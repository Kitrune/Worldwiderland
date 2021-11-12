/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Se declara el tiempo del timer
timer = 30;
//Se empieza a correr el timer
alarm_set(0,60);

//Iniciar preguntas
var preguntas=ds_list_create();
ds_list_add(preguntas,"Salta sobre los pares","Salta sobre las condiciones reales","Salta sobre los numeros mas pequeños","Salta sobre los inpares","Salta sobre los numeros mas grandes");
var indice = random_range(0,4);
text_pregunta=preguntas[|indice];

//Asociar preguntas con respuestas

var respuestas = ds_list_create();
//Se empiezan a hcaer las resspuestas
var subRespuestas1 = ds_list_create();
//Respuestas para pregunta 1
var nivel1 = ds_list_create();
ds_list_add(nivel1, "50", "71", "13");
var nivel2 = ds_list_create();
ds_list_add(nivel2, "98", "07", "55");
var nivel3 = ds_list_create();
ds_list_add(nivel3, "02", "23", "77");
var nivel4 = ds_list_create();
ds_list_add(nivel4, "20", "99", "55");
var nivel5 = ds_list_create();
ds_list_add(nivel5, "48", "33", "17");

//Se asignan a la pregunta 1
ds_list_add(subRespuestas1, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas2 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "2>1", "9<7", "1>5");
var nivel2 = ds_list_create();
ds_list_add(nivel2, "0<7", "7<3", "1>4");
var nivel3 = ds_list_create();
ds_list_add(nivel3, "1<4", "3>5", "4<0");
var nivel4 = ds_list_create();
ds_list_add(nivel4, "3<8", "9<5", "0>1");
var nivel5 = ds_list_create();
ds_list_add(nivel5, "5<7", "2>8", "3<1");
ds_list_add(subRespuestas2, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas3 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "15", "30", "49");
var nivel2 = ds_list_create();
ds_list_add(nivel2, "03", "11", "10");
var nivel3 = ds_list_create();
ds_list_add(nivel3, "53", "80", "85");
var nivel4 = ds_list_create();
ds_list_add(nivel4, "38", "52", "47");
var nivel5 = ds_list_create();
ds_list_add(nivel5, "48", "69", "66");
ds_list_add(subRespuestas3, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas4 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "95", "70", "22");
var nivel2 = ds_list_create();
ds_list_add(nivel2, "03", "28", "44");
var nivel3 = ds_list_create();
ds_list_add(nivel3, "81", "36", "12");
var nivel4 = ds_list_create();
ds_list_add(nivel4, "11", "38", "24");
var nivel5 = ds_list_create();
ds_list_add(nivel5, "07", "34", "82");
ds_list_add(subRespuestas4, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas5 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "71", "33", "45");
var nivel2 = ds_list_create();
ds_list_add(nivel2, "31", "11", "03");
var nivel3 = ds_list_create();
ds_list_add(nivel3, "48", "47", "17");
var nivel4 = ds_list_create();
ds_list_add(nivel4, "94", "05", "32");
var nivel5 = ds_list_create();
ds_list_add(nivel5, "30", "21", "12");
ds_list_add(subRespuestas5, nivel1, nivel2, nivel3, nivel4, nivel5);

//Se mete el bloque a las preguntas
ds_list_add(respuestas, subRespuestas1, subRespuestas2, subRespuestas3, subRespuestas4, subRespuestas5);

//Generacion de nubes

var separacion = room_height/5;

var altitudes=[separacion*5-680,separacion*4-680,separacion*3-680,separacion*2-680,separacion-680];
var longitudes=[195,615,1075];

var nubes = ds_list_create();
//Revuelve los niveles de las nubes
ds_list_shuffle(respuestas[|indice]);

//Se crean las 15 nubes
for(var i=0; i<5; i++){	
	for(var j=0; j<3; j++){
		ds_list_add(nubes,instance_create_layer(0, 0, "Instances", obj_nubeTemp));
		var aux = nubes[|j];
		with(aux){
			if(j==0){
				esReal=true;
			}
			//Se le asigna a cada nube una respuesta
			texto=respuestas[|indice][|i][|j];
		}
	}
	//Revolvemos las respuestas
	ds_list_shuffle(nubes);
	for(var j=0; j<3; j++){
		with(nubes[|j]){
			x=longitudes[j];
			y=altitudes[i];
		}
	}
	ds_list_clear(nubes);
}


//Empieza a mover la camara
var timeLeft=inst_487C7496.timer*60;
var vel=room_height/timeLeft;
y=room_height -720/2;
x=room_width/2;
direction = 90;
speed = vel;
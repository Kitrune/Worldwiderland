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
ds_list_add(nivel1, "71", "(50)", "13");
var nivel2 = ds_list_create();
ds_list_add(nivel1, "(98)", "07", "55");
var nivel3 = ds_list_create();
ds_list_add(nivel1, "77", "23", "(02)");
var nivel4 = ds_list_create();
ds_list_add(nivel1, "(20)", "99", "55");
var nivel5 = ds_list_create();
ds_list_add(nivel1, "33", "(48)", "17");

//Se asignan a la pregunta 1
ds_list_add(subRespuestas1, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas2 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "1>5", "9<7", "(2>1)");
var nivel2 = ds_list_create();
ds_list_add(nivel1, "7<3", "(0<7)", "1>4");
var nivel3 = ds_list_create();
ds_list_add(nivel1, "(1<4)", "3>5", "4<0");
var nivel4 = ds_list_create();
ds_list_add(nivel1, "0>1", "9<5", "(3<8)");
var nivel5 = ds_list_create();
ds_list_add(nivel1, "3<1", "2>8", "(5<7)");
ds_list_add(subRespuestas2, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas3 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "49", "30", "(15)");
var nivel2 = ds_list_create();
ds_list_add(nivel1, "11", "(03)", "10");
var nivel3 = ds_list_create();
ds_list_add(nivel1, "(53)", "80", "85");
var nivel4 = ds_list_create();
ds_list_add(nivel1, "(38)", "52", "47");
var nivel5 = ds_list_create();
ds_list_add(nivel1, "69", "(48)", "66");
ds_list_add(subRespuestas3, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas4 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "(95)", "70", "22");
var nivel2 = ds_list_create();
ds_list_add(nivel1, "(03)", "28", "44");
var nivel3 = ds_list_create();
ds_list_add(nivel1, "12", "36", "(81)");
var nivel4 = ds_list_create();
ds_list_add(nivel1, "38", "(11)", "24");
var nivel5 = ds_list_create();
ds_list_add(nivel1, "(07)", "34", "82");
ds_list_add(subRespuestas4, nivel1, nivel2, nivel3, nivel4, nivel5);

var subRespuestas5 = ds_list_create();
var nivel1 = ds_list_create();
ds_list_add(nivel1, "(71)", "33", "45");
var nivel2 = ds_list_create();
ds_list_add(nivel1, "03", "11", "(31)");
var nivel3 = ds_list_create();
ds_list_add(nivel1, "(48)", "47", "17");
var nivel4 = ds_list_create();
ds_list_add(nivel1, "32", "05", "(94)");
var nivel5 = ds_list_create();
ds_list_add(nivel1, "(30)", "21", "12");
ds_list_add(subRespuestas5, nivel1, nivel2, nivel3, nivel4, nivel5);

//Se mete el bloque a las preguntas
ds_list_add(respuestas, subRespuestas1, subRespuestas2, subRespuestas3, subRespuestas4, subRespuestas5);


respuestas=ds_list_add;
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
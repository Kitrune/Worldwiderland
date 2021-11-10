/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Se declara el tiempo del timer
timer = 30;
//Se empieza a correr el timer
alarm_set(0,60);

preguntas=["Salta sobre los pares","Salta sobre las condiciones reales","Salta sobre los numeros mas pequeños","Salta sobre los inpares","Salta sobre los numeros mas grandes"];

//Generacion de nubes

var altitudes=[5000,4000,3000,2000,1000];
var longitudes=[20,440,860];
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

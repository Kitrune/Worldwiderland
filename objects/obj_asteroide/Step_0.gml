/// @description Insert description here
// You can write your code in this editor
image_angle += rotSpeed;

//Destruye el asteroide si se sale del room por la izquierda
if(x<200){
	instance_destroy(id);
}
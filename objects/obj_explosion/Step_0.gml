/// @description Insert description here
// You can write your code in this editor
if(isVanishing && !persistente){
	image_alpha -= 0.05;
	if(image_alpha <=0){
		instance_destroy(id);
	}
}
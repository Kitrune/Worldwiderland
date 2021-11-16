/// @description Insert description here
// You can write your code in this editor
var explosion = instance_create_layer(x,y,"Instances", obj_explosion);
explosion.image_xscale = 5;
explosion.image_yscale = 5;

instance_destroy(other);
instance_destroy(id);
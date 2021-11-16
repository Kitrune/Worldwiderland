/// @description Codigo que se ejecuta al inicio del minijuego
// You can write your code in this editor

//Se declara el tiempo del timer
timer = 30;
//Se empieza a correr el timer
alarm_set(0,60);
physics_world_gravity(0, 7);
render_flags = phy_debug_render_shapes | phy_debug_render_joints | phy_debug_render_coms | phy_debug_render_obb;
var palo = instance_create_layer(room_width/2, room_height - sprite_get_height(spr_piso) - sprite_get_height(spr_palo), "Instances", obj_palo);
var base = instance_create_layer(room_width/2, palo.y + 4 - sprite_get_height(spr_base)/8, "Instances", obj_base);
var fixA = physics_fixture_create();
physics_fixture_set_circle_shape(fixA, 20);
physics_fixture_set_density(fixA, 0.5);
physics_fixture_set_restitution(fixA, 0.8);
physics_fixture_bind(fixA, palo);
physics_fixture_bind(fixA, base);
physics_fixture_delete(fixA);
physics_joint_distance_create(palo, base, palo.x, base.y, base.x, base.y, true);
var tope_izq = instance_create_layer(base.x - sprite_get_width(spr_base)/2-20, base.y - sprite_get_height(spr_base), "Instances", obj_tope_invisible);
var tope_derecha = instance_create_layer(base.x + sprite_get_width(spr_base)/2+20, base.y - sprite_get_height(spr_base), "Instances", obj_tope_invisible);
var tope_centro = instance_create_layer(base.x, base.y-60, "Instances", obj_tope_centro);

/// @description Insert description here
// You can write your code in this editor
global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100)


//definir particula 1
#region Particle Types
	//particula de la soda
	var particula1 = part_type_create();
	part_type_shape(particula1, pt_shape_disk);
	part_type_life(particula1, 20, 40);
	
	//sets alpha configuration
	part_type_alpha2(particula1, 1, 0);
	
	//sets color to particle
	part_type_color3(particula1, c_white, c_white, c_lime);
	
	//sets size
	part_type_size(particula1, 0.2, 0.4, 0.025, 0);
	
	//sets the speed
	part_type_speed(particula1, 5, 7, 0, 0);
	
	//sets the direction of the particles
	part_type_direction(particula1, 0, 280, 0 , 0);
	part_type_gravity(particula1, 0.2, 270);
	part_type_orientation(particula1, 0, 180, 0, 20, 1);
	
	global.particula1 = particula1;
	#endregion
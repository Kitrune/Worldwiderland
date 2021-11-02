/// Prepare The Confetti
/// Test room is set to 60FPS
 
// Create Particle System
global.particles        = part_system_create();
 
// Create Confetti Particle Type
global.partTypeConfetti = part_type_create();
 
// Set random (randomizes image_index) to TRUE here
part_type_sprite(global.partTypeConfetti, sprite_confetti, false, false, true); 
 
// Add some image_angle wiggle (45)
part_type_orientation(global.partTypeConfetti, 0, 360, 0, 45, 0);
// Depending on case of usage, add downwards gravity
// Change values for wind or top-down camera
part_type_gravity(global.partTypeConfetti, 0.3, 270);
// Spread, spread it wide. Some direction wiggle doesn't hurt too.
// Our rectangles are wiggly after all.
part_type_direction(global.partTypeConfetti, 0, 360, 0, 30);
// Movement speed and deceleration 
part_type_speed(global.partTypeConfetti, 5, 6, -0.3, 0);
 
part_type_size(global.partTypeConfetti, 0.2, 0.3, 0, 0);
part_type_life(global.partTypeConfetti, 30, 60);
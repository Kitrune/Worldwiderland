/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left) && esArrastrado){
	x = mouse_x - xOff;
	y = mouse_y - yOff;
	x = clamp(x, -sprite_width/2, room_width - sprite_width/2);
	y = clamp(y, -sprite_height/2, room_height - sprite_height/2);
}
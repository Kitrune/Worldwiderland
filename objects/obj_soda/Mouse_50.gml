/// @description Insert description here
// You can write your code in this editor
if (is_dragged == true){
	x = mouse_x;
	y = mouse_y;
	phy_position_x = mouse_x;
	phy_position_y = mouse_y;	
	
	diffx = posx > x ? posx - x : x - posx;
	diffy = posy > y ? posy - y : y - posy;
	
	if(diffx>200){
		posx = x;
		contadoragitado++;
		show_debug_message(contadoragitado);
	}
	
	if(diffy>200){
		posy = y;
		contadoragitado++;
		show_debug_message(contadoragitado);
	}
}
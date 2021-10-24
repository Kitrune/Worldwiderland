/// @description Insert description here
// You can write your code in this editor
gpu_set_tex_repeat(true);
xtex = (mouse_x - x)/sprite_get_width(spr_cable);
ytex = 1;
if(isDragging) {
	draw_set_colour(c_white);
	var tex = sprite_get_texture(spr_cable,0);
	//show_debug_message(tex)
	draw_primitive_begin_texture(pr_trianglestrip, tex);
	draw_vertex_texture(x,y,0,0);
	theta = point_direction(x,y,mouse_x, mouse_y);
	draw_vertex_texture(mouse_x,y,xtex,0);
	draw_vertex_texture(x,mouse_y,0,ytex);
	draw_vertex_texture(mouse_x,mouse_y,xtex,ytex);
	draw_primitive_end();
}
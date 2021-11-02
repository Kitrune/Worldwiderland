// @description Dibuja de for
// You can write your code in this editor
var offset = 5;
if(isDragging){
    draw_line_width_colour(x,y,mouse_x,mouse_y,10,colorCable,colorCable);
    var angulo = 90 - point_direction(x,y, mouse_x, mouse_y); 
    var dy = dsin(angulo)*offset;
    var dx = dcos(angulo)*offset;
    draw_line_width_colour(x-dx,y-dy,mouse_x-dx,mouse_y-dy,3,c_black,c_black);
    draw_line_width_colour(x+dx,y+dy,mouse_x+dx,mouse_y+dy,3,c_black,c_black);
}
else {
    if(destX+destY != 0){
        draw_line_width_colour(x,y,destX,destY,10,colorCable,colorCable);
        var angulo = 90 - point_direction(x,y, destX, destY); 
		var dy = dsin(angulo)*offset;
		var dx = dcos(angulo)*offset;
		draw_line_width_colour(x-dx,y-dy,destX-dx,destY-dy,3,c_black,c_black);
		draw_line_width_colour(x+dx,y+dy,destX+dx,destY+dy,3,c_black,c_black);
    }
}